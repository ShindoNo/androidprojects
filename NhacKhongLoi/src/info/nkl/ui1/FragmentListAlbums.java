package info.nkl.ui1;

import info.nkl.alpha.R;
import org.json.JSONArray;
import org.json.JSONObject;
import info.nkl.adapter.AlbumAdapter;
import info.nkl.adapter.AlbumAdapter.ViewHolder;
import info.nkl.services.ListAlbumsService;
import info.nkl.services.MenuService;
import info.nkl.services.NameSpace;
import info.nkl.tools.Utils;

import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.OnRefreshListener;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public class FragmentListAlbums extends Fragment{
	// view
	View mainLayout;
	PullToRefreshListView mlvAlbums;
	AlbumAdapter mAdapterAlbum;
	
	// listener
	OnAlbumSelectedListener mOnAlbumSelectedListener;
	
	// handler
	Activity mActivity;
	
	// data
	View mCurrentOrder;
	String mCurrentGroupId;
	String mCurrentGroupType;
	
	boolean isInitialized;
	boolean isShowingSplash = true;
	
	ProgressDialog mSpinner;
	
	public FragmentListAlbums() {
		// TODO Auto-generated constructor stub
	}
	
	public static FragmentListAlbums getNewInstance(OnAlbumSelectedListener onAlbumSelectedListener) {
		FragmentListAlbums fragmentListAlbums = new FragmentListAlbums();
		fragmentListAlbums.setData(onAlbumSelectedListener);
		return fragmentListAlbums;
	}
	
	public void setData(OnAlbumSelectedListener onAlbumSelectedListener) {
		mOnAlbumSelectedListener = onAlbumSelectedListener;
	}
	
	@Override
	public void onAttach(Activity activity) {
		// TODO Auto-generated method stub
		super.onAttach(activity);
		mActivity = activity;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mainLayout = inflater.inflate(R.layout.fragment_list_albums, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		getLastCategoryListened();
		init();		
	}
	
	public void init() {
		// set order button
		mCurrentOrder = mainLayout.findViewById(R.id.tv_order_view);
		mCurrentOrder.setSelected(true);
		
		mainLayout.findViewById(R.id.tv_order_view).setOnClickListener(onSortSelected);
		mainLayout.findViewById(R.id.tv_order_view).setTag("view");
		mainLayout.findViewById(R.id.tv_order_newest).setOnClickListener(onSortSelected);
		mainLayout.findViewById(R.id.tv_order_newest).setTag("id");
		mainLayout.findViewById(R.id.tv_order_az).setOnClickListener(onSortSelected);
		mainLayout.findViewById(R.id.tv_order_az).setTag("name");
		
		// set list view 
		mlvAlbums = (PullToRefreshListView) mainLayout.findViewById(R.id.lv_albums);
		mlvAlbums.getRefreshableView().setCacheColorHint(0);
		mlvAlbums.setMode(Mode.PULL_UP_TO_REFRESH);
		mlvAlbums.setOnRefreshListener(onRefreshListener);
		
		mAdapterAlbum = new AlbumAdapter(mActivity);
		
		mlvAlbums.setAdapter(mAdapterAlbum);
		mlvAlbums.setOnItemClickListener(onClickAlbum);
		
		if (!isInitialized) {
			isInitialized = true;
			// init download data
			if (mCurrentGroupType == null) {
				mCurrentGroupType = MenuService.instrument;
				mCurrentGroupId = "1";
			}
			String order = "view";
			new Thread(new DownloadNewGroup(mCurrentGroupType, mCurrentGroupId, order, 1)).start();
		}
	}
	
	OnRefreshListener<ListView> onRefreshListener = new OnRefreshListener<ListView>() {
		@Override
		public void onRefresh(PullToRefreshBase<ListView> refreshView) {
			// TODO Auto-generated method stub
			String order = mCurrentOrder.getTag().toString();
			String key = mCurrentGroupType + mCurrentGroupId + order;
			int pageNum = mAdapterAlbum.getNextPage(key);
			new Thread(new DownloadCurrentGroup(mCurrentGroupType, mCurrentGroupId, order, pageNum)).start();
		}
		
	};
	
	/**
	 * Download albums next page of current group
	 * @author MT934
	 *
	 */
	class DownloadCurrentGroup implements Runnable {
		String key;
		String groupType, groupId, order;
		int pageNum;
		
		public DownloadCurrentGroup(String groupType, String groupId, String order, int pageNum) {
			// TODO Auto-generated constructor stub
			this.groupType = groupType;
			this.groupId = groupId;
			this.order = order;
			this.pageNum = pageNum;
			key = groupType + groupId + order;
			
			mlvAlbums.setMode(Mode.PULL_UP_TO_REFRESH);
		}		

		@Override
		public void run() {
			// TODO Auto-generated method stub
			final JSONObject data = (JSONObject) ListAlbumsService.getAlbums(groupType, groupId, order, pageNum);
			mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					mlvAlbums.onRefreshComplete();
					
					try {
						if (data != null) {
							// add data to current array and notify
							JSONArray albums = data.getJSONArray(ListAlbumsService.data);
							mAdapterAlbum.append(key, albums);
							mAdapterAlbum.notifyDataSetChanged();
							
							// if data reaches end, disable pull to refresh
							if (albums.length() < 10) {
								mlvAlbums.setMode(Mode.DISABLED);
								Utils.toast(mActivity, getString(R.string.end_of_list_albums));
							}
						} else {
							Utils.checkInternetAndToast(mActivity);
						}
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
				}
			});
		}
	}
	
	/**
	 * Download albums of new group
	 * @author MT934
	 *
	 */
	class DownloadNewGroup implements Runnable {
		String key;
		String groupType, groupId, order;
		int pageNum;
		
		public DownloadNewGroup(String groupType, String groupId, String order, int pageNum ) {
			// TODO Auto-generated constructor stub
			this.groupType = groupType;
			this.groupId = groupId;
			this.order = order;
			this.pageNum = pageNum;
			key = groupType + groupId + order;
			
			if (!isShowingSplash) {
				mSpinner = ProgressDialog.show(mActivity, "", "Loading..");	
			}
			
			mlvAlbums.setMode(Mode.PULL_UP_TO_REFRESH);
		}

		@Override
		public void run() {
			// TODO Auto-generated method stub
			final JSONObject data = (JSONObject) ListAlbumsService.getAlbums(groupType, groupId, order, pageNum);
			mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					try {
						if (mSpinner != null) {
							mSpinner.dismiss();	
						}
						
						if (data != null) {
							JSONArray albums = data.getJSONArray(ListAlbumsService.data);
							mAdapterAlbum.add(key, albums);
							mAdapterAlbum.setGroupKey(key);
							mlvAlbums.getRefreshableView().smoothScrollToPosition(0);
							
							// disable if reaches end of list
							if (albums.length() < 10) {
								mlvAlbums.setMode(Mode.DISABLED);
							}
						} else {
							Utils.checkInternetAndToast(mActivity);
						}
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
				}
			});
		}
	}
	
	public void displayAlbums(String groupType, String groupId) {
		String order = mCurrentOrder.getTag().toString();
		String key = groupType + groupId + order;		
		
		// save current group type and group id, used for sort list by order
		mCurrentGroupType = groupType;
		mCurrentGroupId = groupId;
		
		if (mAdapterAlbum.checkTypeExist(key)) {
			 mAdapterAlbum.setGroupKey(key);
			 mlvAlbums.getRefreshableView().smoothScrollToPosition(0);
		} else {
			new Thread(new DownloadNewGroup(groupType, groupId, order, 1)).start();
		}		
	}
	
	
	OnItemClickListener onClickAlbum = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			String albumId = ((ViewHolder)view.getTag()).albumId;
			mOnAlbumSelectedListener.onAlbumSelected(albumId);
		}
	};
	
	OnClickListener onSortSelected = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (v.getId() != mCurrentOrder.getId()) {
				// enable pull to refresh
				mlvAlbums.setMode(Mode.PULL_UP_TO_REFRESH);
				
				mCurrentOrder.setSelected(false);
				mCurrentOrder = v;
				mCurrentOrder.setSelected(true);
				
				String groupKey = mCurrentGroupType + mCurrentGroupId + v.getTag().toString();
				if (mAdapterAlbum.checkTypeExist(groupKey)) {
					mAdapterAlbum.setGroupKey(groupKey);
					mlvAlbums.getRefreshableView().smoothScrollToPosition(0);
				}
				else {
					new Thread(new DownloadNewGroup(mCurrentGroupType, mCurrentGroupId, v.getTag().toString(), 1)).start();
				}
			}
		}
	};
	
	
	interface OnAlbumSelectedListener {
		public void onAlbumSelected(String albumId);
	}
	
	
	
	
	
	
	/**
	 * Get info using shared preferences, current info is last category to which user listen
	 */
	public void getLastCategoryListened() {
//		SharedPreferences sharedPreferences = mActivity.getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
//		mCurrentGroupType = sharedPreferences.getString(NameSpace.CURRENT_GROUP_TYPE, null);
//		mCurrentGroupId = sharedPreferences.getString(NameSpace.CURRENT_GROUP_ID, null);
	}
	
	/**
	 * Save info using shared preferences, current info is last category to which user listen 
	 */
	public void saveInfo() {
//		SharedPreferences sharedPreferences = mActivity.getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
//		SharedPreferences.Editor editor = sharedPreferences.edit();
//		editor.putString(NameSpace.CURRENT_GROUP_TYPE, mCurrentGroupType);
//		editor.putString(NameSpace.CURRENT_GROUP_ID, mCurrentGroupId);
//		editor.commit();
	}	
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		saveInfo();
	}	
	
}
