package info.nkl.alpha;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import com.google.ads.c;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.ProgressBar;
import info.nkl.alpha.R;
import info.nkl.adapter.NewAlbumAdapter;
import info.nkl.adapter.TopAlbumAdapter;
import info.nkl.object.Album;
import info.nkl.services.ListAlbumsService;
import info.nkl.services.NameSpace;
import info.nkl.services.ServiceHelper;
import info.nkl.services.ServiceHelper.ServiceHelperListener;
import info.nkl.services.TopAlbumsService;
import info.nkl.services.UpdateService;

public class FragmentTopAlbums extends Fragment {
	Activity mActivity;
	View mainLayout;
	View mCurrentTab;
	
	ProgressDialog mSpinner;
	
	ListView mlvTopAlbums;
	TopAlbumAdapter mTopAlbumsAdapter;
	JSONArray mTopAlbums;
	
	GridView mgvNewAlbums;
	NewAlbumAdapter mNewAlbumAdapter;
//	ArrayList<Album> mNewAlbums;
	JSONArray mNewAlbums;
	
	FragmentTopAlbumListener mFragmentTopAlbumListener;
	
	public static FragmentTopAlbums getIntance(FragmentTopAlbumListener listener) {
		FragmentTopAlbums fragmentTopAlbums = new FragmentTopAlbums();
		fragmentTopAlbums.setData(listener);
		return fragmentTopAlbums;
	}
	
	public void setData(FragmentTopAlbumListener listener) {
		mFragmentTopAlbumListener = listener;
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
		mainLayout = inflater.inflate(R.layout.fragment_top_albums, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		
		initUI();
	}
	
	public void initUI() {
		mCurrentTab = mainLayout.findViewById(R.id.tv_top_albums);
		mCurrentTab.setSelected(true);
		mainLayout.findViewById(R.id.tv_top_albums).setOnClickListener(mOnClickTab);
		mainLayout.findViewById(R.id.tv_new_albums).setOnClickListener(mOnClickTab);
		
		mlvTopAlbums = (ListView) mainLayout.findViewById(R.id.lv_top_albums);
		mTopAlbumsAdapter = new TopAlbumAdapter(mActivity);
		mlvTopAlbums.setAdapter(mTopAlbumsAdapter);
		mlvTopAlbums.setOnItemClickListener(mOnItemClickListenerTopViewed);
		
		mgvNewAlbums = (GridView) mainLayout.findViewById(R.id.gv_new_albums);
		mNewAlbumAdapter = new NewAlbumAdapter(mActivity);
		mgvNewAlbums.setAdapter(mNewAlbumAdapter);
		mgvNewAlbums.setOnItemClickListener(mOnItemClickListenerTopNew);
		
		SharedPreferences sharedPreferences = mActivity.getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
		String topAlbumData = sharedPreferences.getString(NameSpace.SHARE_PREF_TOP_VIEW, "");
		if (topAlbumData.equals("")) {
			downloadTopAlbums();	
		} else {
			try {
				mTopAlbums = new JSONArray(topAlbumData);
				mTopAlbumsAdapter.setListAlbums(mTopAlbums);
				mTopAlbumsAdapter.notifyDataSetChanged();	
				UpdateService.updateTopViewAlbum(sharedPreferences);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	public void downloadTopAlbums() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				ServiceHelper.getData(TopAlbumsService.API_TOP_VIEW_ALBUM, new ServiceHelperListener() {
					@Override
					public void onFailed() {}
					
					@Override
					public void onCompleted(final JSONObject data) {
						// TODO Auto-generated method stub
						mActivity.runOnUiThread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								try {
									mTopAlbums = data.getJSONArray(ListAlbumsService.data);
									mTopAlbumsAdapter.setListAlbums(mTopAlbums);
									mTopAlbumsAdapter.notifyDataSetChanged();
									
									SharedPreferences sharedPreferences = mActivity.getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
									sharedPreferences.edit().putString(NameSpace.SHARE_PREF_TOP_VIEW, mTopAlbums.toString()).commit();
									sharedPreferences.edit().putLong(NameSpace.SHARE_PREF_TOP_VIEW_LAST_UPDATE, System.currentTimeMillis()).commit();
								} catch (Exception e) {
									// TODO: handle exception
									e.printStackTrace();
								}
							}
						});
					}
				});
			}
		}).start();
	}
	
	public void downloadNewAlbums() {
		mSpinner = ProgressDialog.show(mActivity, "", "Loading...");
		mSpinner.setCancelable(true);
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				ServiceHelper.getData(TopAlbumsService.API_TOP_NEW_ALBUM, new ServiceHelperListener() {
					@Override
					public void onFailed() {
						// TODO Auto-generated method stub
						mActivity.runOnUiThread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								mSpinner.dismiss();
							}
						});
					}
					
					@Override
					public void onCompleted(final JSONObject data) {
						// TODO Auto-generated method stub
						mActivity.runOnUiThread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								mSpinner.dismiss();
								try {
									mNewAlbums = data.getJSONArray(ListAlbumsService.data);
									mNewAlbumAdapter.setListAlbums(mNewAlbums);
									mNewAlbumAdapter.notifyDataSetChanged();
									
									SharedPreferences sharedPreferences = mActivity.getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
									sharedPreferences.edit().putString(NameSpace.SHARE_PREF_TOP_NEW, mNewAlbums.toString()).commit();
									sharedPreferences.edit().putLong(NameSpace.SHARE_PREF_TOP_NEW_LAST_UPDATE, System.currentTimeMillis()).commit();									
								} catch (Exception e) {
									// TODO: handle exception
									e.printStackTrace();
								}
							}
						});						
					}
				});
			}
		}).start();
	}
	
	OnItemClickListener mOnItemClickListenerTopViewed = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			try {
				String albumId = mTopAlbums.getJSONObject(position).getString(ListAlbumsService.album_id);
				mFragmentTopAlbumListener.onSelectAlbum(albumId);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	};
	
	OnItemClickListener mOnItemClickListenerTopNew = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			try {
				String albumId = mNewAlbums.getJSONObject(position).getString(ListAlbumsService.album_id);
				mFragmentTopAlbumListener.onSelectAlbum(albumId);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	};
	
	OnClickListener mOnClickTab = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			mCurrentTab.setSelected(false);
			mCurrentTab = v;
			mCurrentTab.setSelected(true);
			
			if (v.getId() == R.id.tv_top_albums) {
				mlvTopAlbums.setVisibility(View.VISIBLE);
				mgvNewAlbums.setVisibility(View.GONE);
			} else if (v.getId() == R.id.tv_new_albums) {
				mlvTopAlbums.setVisibility(View.GONE);
				mgvNewAlbums.setVisibility(View.VISIBLE);
				
				if (mNewAlbums == null) {
					SharedPreferences sharedPreferences = mActivity.getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
					String topNewAlbumData = sharedPreferences.getString(NameSpace.SHARE_PREF_TOP_NEW, "");
					if (topNewAlbumData.equals("")) {
						downloadNewAlbums();	
					} else {
						try {
							mNewAlbums = new JSONArray(topNewAlbumData);
							mNewAlbumAdapter.setListAlbums(mNewAlbums);
							mNewAlbumAdapter.notifyDataSetChanged();
							UpdateService.updateTopNewAlbum(sharedPreferences);
						} catch (Exception e) {
							// TODO: handle exception
							e.printStackTrace();
						}
					}					
				}
			}
		}
	};
	
	interface FragmentTopAlbumListener {
		public void onSelectAlbum(String albumId);
	}
	
}
