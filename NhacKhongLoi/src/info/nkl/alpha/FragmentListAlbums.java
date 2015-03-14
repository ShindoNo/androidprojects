package info.nkl.alpha;

import java.util.ArrayList;

import info.nkl.alpha.R;
import info.nkl.adapter.ListAlbumAdapter;
import info.nkl.object.Album;
import info.nkl.services.ListAlbumsService;
import info.nkl.services.NameSpace;
import info.nkl.tools.Utils;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.OnRefreshListener;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import android.app.Activity;
import android.app.ProgressDialog;
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
	ListAlbumAdapter mAdapterAlbum;
	
	// listener
	FragmentListAlbumListener mFragmentListAlbumListener;
	
	// handler
	Activity mActivity;
	
	// data
	View mCurrentOrder;
	String mCurrentId = "1";
	String mCurrentType = NameSpace.TYPE_INSTRUMENT;
	
	boolean isShowingSplash = true;
	
	ProgressDialog mSpinner;
	
	public static FragmentListAlbums getNewInstance(FragmentListAlbumListener listAlbumListener) {
		FragmentListAlbums fragmentListAlbums = new FragmentListAlbums();
		fragmentListAlbums.setData(listAlbumListener);
		return fragmentListAlbums;
	}
	
	public void setData(FragmentListAlbumListener listAlbumListener) {
		mFragmentListAlbumListener = listAlbumListener;
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
		initUI();		
	}
	
	public void initUI() {
		// set order button
		mCurrentOrder = mainLayout.findViewById(R.id.tv_order_view);
		mCurrentOrder.setSelected(true);
		
		mainLayout.findViewById(R.id.tv_order_view).setOnClickListener(mOnOrderSelected);
		mainLayout.findViewById(R.id.tv_order_view).setTag(NameSpace.ORDER_MOST_VIEWED);
		mainLayout.findViewById(R.id.tv_order_newest).setOnClickListener(mOnOrderSelected);
		mainLayout.findViewById(R.id.tv_order_newest).setTag(NameSpace.ORDER_NEWEST);
		mainLayout.findViewById(R.id.tv_order_az).setOnClickListener(mOnOrderSelected);
		mainLayout.findViewById(R.id.tv_order_az).setTag(NameSpace.ORDER_AZ);
		
		// set list view 
		mlvAlbums = (PullToRefreshListView) mainLayout.findViewById(R.id.lv_albums);
		mlvAlbums.getRefreshableView().setCacheColorHint(0);
		mlvAlbums.setMode(Mode.PULL_UP_TO_REFRESH);
		mlvAlbums.setOnRefreshListener(onRefreshListener);
		
		mAdapterAlbum = new ListAlbumAdapter(mActivity);
		
		mlvAlbums.setAdapter(mAdapterAlbum);
		mlvAlbums.setOnItemClickListener(mOnClickAlbum);
	}
	
	public void displayAlbums(String type, String id) {
		String order = mCurrentOrder.getTag().toString();
		String key = type + id + order;		
		
		// save current group type and group id, used for sort list by order
		mCurrentType = type;
		mCurrentId = id;
		
		if (mAdapterAlbum.mMapIdToListAlbum.containsKey(key)) {
			 mAdapterAlbum.setGroupKey(key);
			 mlvAlbums.getRefreshableView().smoothScrollToPosition(0);
		} else {
			new Thread(new DownloadData(type, id, order, 1)).start();
		}		
	}
	
	OnRefreshListener<ListView> onRefreshListener = new OnRefreshListener<ListView>() {
		@Override
		public void onRefresh(PullToRefreshBase<ListView> refreshView) {
			// TODO Auto-generated method stub
			String order = mCurrentOrder.getTag().toString();
			String key = mCurrentType + mCurrentId + order;
			int pageNum = mAdapterAlbum.getNextPage(key);
			new Thread(new DownloadData(mCurrentType, mCurrentId, order, pageNum)).start();
		}
	};
	
	/**
	 * Download albums next page of current group
	 * @author MT934
	 *
	 */
	class DownloadData implements Runnable {
		String key;
		String type, id, order;
		int pageNum;
		
		public DownloadData(String groupType, String groupId, String order, int pageNum) {
			// TODO Auto-generated constructor stub
			this.type = groupType;
			this.id = groupId;
			this.order = order;
			this.pageNum = pageNum;
			key = groupType + groupId + order;
			
			mlvAlbums.setMode(Mode.PULL_UP_TO_REFRESH);
		}		

		@Override
		public void run() {
			// TODO Auto-generated method stub
			if (!mAdapterAlbum.mMapIdToListAlbum.containsKey(key)) {
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mSpinner = ProgressDialog.show(mActivity, "", "Loading...");
						mSpinner.setCancelable(true);
					}
				});
			}
			
			final ArrayList<Album> listAlbums = ListAlbumsService.getAlbumsObject(type, id, pageNum, order);
			
			mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					if (!mAdapterAlbum.mMapIdToListAlbum.containsKey(key)) {
						mSpinner.dismiss();
						mAdapterAlbum.add(key, listAlbums);
						mAdapterAlbum.setGroupKey(key);
						mlvAlbums.getRefreshableView().smoothScrollToPosition(0);
					} else {
						mlvAlbums.onRefreshComplete();
						mAdapterAlbum.append(key, listAlbums);
						mAdapterAlbum.notifyDataSetChanged();
					}
					// disable if reaches end of list					
					if (listAlbums.size() < 10) {
						mlvAlbums.setMode(Mode.DISABLED);
						Utils.toast(mActivity, getString(R.string.end_of_list_albums));
					}
				}
			});
		}
	}
	
	OnItemClickListener mOnClickAlbum = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			String albumId = view.getTag(R.id.tag_album_id).toString();
			mFragmentListAlbumListener.onSelectAlbum(albumId);
			
		}
	};
	
	OnClickListener mOnOrderSelected = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (v.getId() != mCurrentOrder.getId()) {
				// enable pull to refresh
				mlvAlbums.setMode(Mode.PULL_UP_TO_REFRESH);
				
				mCurrentOrder.setSelected(false);
				mCurrentOrder = v;
				mCurrentOrder.setSelected(true);
				
				String key = mCurrentType + mCurrentId + mCurrentOrder.getTag().toString();
				if (mAdapterAlbum.mMapIdToListAlbum.containsKey(key)) {
					mAdapterAlbum.setGroupKey(key);
					mlvAlbums.getRefreshableView().smoothScrollToPosition(0);
				}
				else {
					new Thread(new DownloadData(mCurrentType, mCurrentId, mCurrentOrder.getTag().toString(), 1)).start();
				}
			}
		}
	};
	
	interface FragmentListAlbumListener {
		public void onSelectAlbum(String albumId);
	}	
	
}
