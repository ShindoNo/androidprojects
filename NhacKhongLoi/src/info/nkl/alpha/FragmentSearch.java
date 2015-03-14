package info.nkl.alpha;

import org.json.JSONArray;
import org.json.JSONObject;

import com.google.ads.f;
import com.nostra13.universalimageloader.core.ImageLoader;

import info.nkl.alpha.R;
import info.nkl.adapter.SearchAlbumAdapter;
import info.nkl.adapter.SearchSongAdapter;
import info.nkl.services.SearchService;
import info.nkl.services.ServiceHelper.ServiceHelperListener;
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
import android.widget.GridView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

public class FragmentSearch extends Fragment {
	ProgressDialog mSpinner;
	View mainLayout;
	Activity mActivity;
	JSONObject mSearchData;
	
	GridView mgvSearchAlbum;
	SearchAlbumAdapter mSearchAlbumAdapter;
	GridView mgvSearchArtist;
	SearchAlbumAdapter mSearchArtistAdapter;
	ListView mlvSearchSong;
	SearchSongAdapter mSearchSongAdapter;
	
	FragmentSearchListener mFragmentSearchListener;
	
	TextView mCurrentTab;
	
	public static FragmentSearch getInstance(FragmentSearchListener listener) {
		FragmentSearch fragmentSearch = new FragmentSearch();
		fragmentSearch.setData(listener);
		return fragmentSearch;
	}
	
	public void setData(FragmentSearchListener listener) {
		mFragmentSearchListener = listener;
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
		mainLayout = inflater.inflate(R.layout.fragment_search, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	public void initUI() {
		mgvSearchAlbum = (GridView) mainLayout.findViewById(R.id.gv_search_album);
		mSearchAlbumAdapter = new SearchAlbumAdapter(mActivity);
		mgvSearchAlbum.setAdapter(mSearchAlbumAdapter);
		mgvSearchAlbum.setOnItemClickListener(monItemClickListenerAlbum);
		
		mgvSearchArtist = (GridView) mainLayout.findViewById(R.id.gv_search_artist);
		mSearchArtistAdapter = new SearchAlbumAdapter(mActivity);
		mgvSearchArtist.setAdapter(mSearchArtistAdapter);
		mgvSearchArtist.setOnItemClickListener(monItemClickListenerAlbum);
		
		mlvSearchSong = (ListView) mainLayout.findViewById(R.id.lv_search_song);
		mSearchSongAdapter = new SearchSongAdapter(mActivity);
		mlvSearchSong.setAdapter(mSearchSongAdapter);
		mlvSearchSong.setOnItemClickListener(mOnItemClickListenerSong);
		
		TextView tvSearchAlbum = (TextView) mainLayout.findViewById(R.id.tv_search_album);
		tvSearchAlbum.setTag(R.id.tag_view, mgvSearchAlbum);
		tvSearchAlbum.setOnClickListener(mOnClickSearchTab);
		
		TextView tvSearchArtist = (TextView) mainLayout.findViewById(R.id.tv_search_artist);
		tvSearchArtist.setTag(R.id.tag_view, mgvSearchArtist);
		tvSearchArtist.setOnClickListener(mOnClickSearchTab);
		
		TextView tvSearchSong = (TextView) mainLayout.findViewById(R.id.tv_search_song);
		tvSearchSong.setTag(R.id.tag_view, mlvSearchSong);
		tvSearchSong.setOnClickListener(mOnClickSearchTab);
		
	}
	
	public void startSearch(final String s) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mSpinner = ProgressDialog.show(mActivity, "", "Loading...");
					}
				});
				
				ServiceHelperListener serviceHelperListener = new ServiceHelperListener() {
					@Override
					public void onFailed() {
						mActivity.runOnUiThread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								mSpinner.dismiss();
							}
						});
					}
					
					@Override
					public void onCompleted(final JSONObject searchData) {
						// TODO Auto-generated method stub
						mActivity.runOnUiThread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								mSpinner.dismiss();
								mSearchData = searchData;
								createUI();
							}
						});
					}
				};
				
				SearchService.search(s, serviceHelperListener);
			}
		}).start();
	}
	
	public void createUI() {
		try {
			if (mCurrentTab != null) {
				mCurrentTab.setSelected(false);
				((View)mCurrentTab.getTag(R.id.tag_view)).setVisibility(View.GONE);
			}
			mCurrentTab = (TextView) mainLayout.findViewById(R.id.tv_search_album);
			mCurrentTab.setSelected(true);
			mgvSearchAlbum.setVisibility(View.VISIBLE);
			
			JSONArray searchAlbumArray = mSearchData.getJSONObject(SearchService.data)
													.getJSONObject(SearchService.albums)
													.getJSONArray(SearchService.data);
			((TextView) mainLayout.findViewById(R.id.tv_search_album)).setText(getString(R.string.album) + " (" + searchAlbumArray.length() + ")");
			mSearchAlbumAdapter.setListAlbums(searchAlbumArray);
			mSearchAlbumAdapter.notifyDataSetChanged();
			
			JSONArray searchArtistArray = mSearchData.getJSONObject(SearchService.data)
												  	 .getJSONObject(SearchService.albums_artists)
													 .getJSONArray(SearchService.data);
			((TextView) mainLayout.findViewById(R.id.tv_search_artist)).setText(getString(R.string.artist) + " (" + searchArtistArray.length() + ")");
			mSearchArtistAdapter.setListAlbums(searchArtistArray);
			mSearchArtistAdapter.notifyDataSetChanged();
			
			JSONArray searchSongArray = mSearchData.getJSONObject(SearchService.data)
												   .getJSONObject(SearchService.songs)
												   .getJSONArray(SearchService.data);
			((TextView) mainLayout.findViewById(R.id.tv_search_song)).setText(getString(R.string.song) + " (" + searchSongArray.length() + ")");
			mSearchSongAdapter.setListSongs(searchSongArray);
			mSearchSongAdapter.notifyDataSetChanged();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	OnClickListener mOnClickSearchTab = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (mCurrentTab == null) return;
			
			if (v != mCurrentTab) {
				mCurrentTab.setSelected(false);
				((View)mCurrentTab.getTag(R.id.tag_view)).setVisibility(View.GONE);
				
				mCurrentTab = (TextView) v;
				mCurrentTab.setSelected(true);
				((View)mCurrentTab.getTag(R.id.tag_view)).setVisibility(View.VISIBLE);
			}
		}
	};
	
	OnItemClickListener monItemClickListenerAlbum = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			String albumId = (String) view.getTag(R.id.tag_id);
			mFragmentSearchListener.onSelectAlbum(albumId);
			
		}
	};
	
	OnItemClickListener mOnItemClickListenerSong = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			String songId = (String) view.getTag(R.id.tag_id);
			mFragmentSearchListener.onSelectSong(songId);
		}
	};
	
	interface FragmentSearchListener {
		public void onSelectAlbum(String albumId);
		public void onSelectSong(String songId);
	}
	
}
