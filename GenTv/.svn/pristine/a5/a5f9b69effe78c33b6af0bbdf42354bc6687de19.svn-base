package gentv.downloader;

import java.util.HashMap;

import linetv.vietnam.adapter.ChannelsAdapter;
import linetv.vietnam.database.DatabaseDAO;
import linetv.vietnam.dataservices.ServiceHelper;
import linetv.vietnam.utils.Logger;
import linetv.vietnam.utils.NameSpace;
import linetv.vietnam.utils.Utils;

import org.json.JSONArray;
import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.ProgressBar;

public class FragmentListChannels extends Fragment {
	ProgressDialog mSpinner;
	Activity mActivity;
	View mainView;

	ListView mListView;
	ChannelsAdapter mAdapter;
	
	HashMap<String, JSONArray> mMapCatIdToData;
	String mCurrentCatId;
	DatabaseDAO mDatabaseDAO;

	OnPlayChannel mOnPlayChannel;

	public static FragmentListChannels getIntance(String catId, OnPlayChannel onPlayChannel) {
		FragmentListChannels fragmentListChannels = new FragmentListChannels();
		fragmentListChannels.setData(catId, onPlayChannel);
		return fragmentListChannels;
	}

	public void setData(String catId, OnPlayChannel onPlayChannel) {
		mCurrentCatId = catId;
		mOnPlayChannel = onPlayChannel;
	}

	@Override
	public void onAttach(Activity activity) {
		// TODO Auto-generated method stub
		super.onAttach(activity);
		mActivity = activity;
		mDatabaseDAO = new DatabaseDAO(mActivity);
	}
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		mDatabaseDAO.close();
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mainView = inflater.inflate(R.layout.fragment_list_channels, container, false);
		initUI();
		return mainView;
	}

	private void initUI() {
		mMapCatIdToData = new HashMap<String, JSONArray>();
		mAdapter = new ChannelsAdapter(mActivity);
		mListView = (ListView) mainView.findViewById(R.id.lv_channels);
		mListView.setAdapter(mAdapter);
		mListView.setOnItemClickListener(mOnClickChannel);
		
		getOrDownloadData(mCurrentCatId);
	}

	public void onSelectCatId(String catId) {
		if (catId.equals(mCurrentCatId)) {
			return;
		}

		mCurrentCatId = catId;
		if (mMapCatIdToData.containsKey(mCurrentCatId)) {
			notifyDataSetChanged(mCurrentCatId);
		} else {
			if (catId.equals(NameSpace.CATID_FAVOURITE_CHANNEL)) {
				JSONArray favouriteChannels = mDatabaseDAO.getFavouriteChannel();
				mMapCatIdToData.put(mCurrentCatId, favouriteChannels);
				notifyDataSetChanged(mCurrentCatId);
			} else {
				getOrDownloadData(mCurrentCatId);
			}
		}
	}
	
	public void getOrDownloadData(String catId) {
//		if (Logger.isDebug) {
//			new Thread(new DownloadDataRunnable(catId)).start();
//			return;
//		}
		
		if (mDatabaseDAO.checkCategoryChannelExist(catId)) {
			try {
				JSONArray categoryData = mDatabaseDAO.getCategoryData(catId);
				mMapCatIdToData.put(catId, categoryData);
				notifyDataSetChanged(catId);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		} else {
			new Thread(new DownloadDataRunnable(catId)).start();	
		}		
	}
	
	public void refreshListFavouriteChannels() {
		JSONArray favouriteChannels = mDatabaseDAO.getFavouriteChannel();
		mMapCatIdToData.put(NameSpace.CATID_FAVOURITE_CHANNEL, favouriteChannels);
		if (mCurrentCatId.equals(NameSpace.CATID_FAVOURITE_CHANNEL)) {
			notifyDataSetChanged(NameSpace.CATID_FAVOURITE_CHANNEL);		
		}
	}

	private void notifyDataSetChanged(String catId) {
		JSONArray jsonArray = mMapCatIdToData.get(catId);
		mAdapter.setData(jsonArray);
		mAdapter.notifyDataSetChanged();
		mListView.smoothScrollToPosition(0);
	}

	OnItemClickListener mOnClickChannel = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			mOnPlayChannel.playChannel(mMapCatIdToData.get(mCurrentCatId), position);
		}
	};


	class DownloadDataRunnable implements Runnable {
		String mCatId;

		public DownloadDataRunnable(String catId) {
			// TODO Auto-generated constructor stub
			mCatId = catId;
		}

		@Override
		public void run() {
			// TODO Auto-generated method stub
			mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					mSpinner = ProgressDialog.show(mActivity, "", getString(R.string.loading));
					mSpinner.setCancelable(true);
				}
			});
			
			String apiUrl = String.format(NameSpace.API_LIST_CHANNELS, mCatId);
			final JSONArray apiResponse = (JSONArray) ServiceHelper.getData(apiUrl, false);
			mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					try {
						mSpinner.dismiss();
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
					
					if (apiResponse != null) {
						mMapCatIdToData.put(mCatId, apiResponse);
						notifyDataSetChanged(mCatId);
					} else {
						Utils.checkInternetAndToast(mActivity);
					}
				}
			});
		}
	}

	interface OnPlayChannel {
		public void playChannel(JSONArray listChannels, int position);
	}
}
