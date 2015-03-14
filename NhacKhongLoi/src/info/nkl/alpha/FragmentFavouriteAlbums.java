package info.nkl.alpha;

import java.util.ArrayList;

import org.json.JSONArray;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.AdapterView.OnItemClickListener;
import info.nkl.alpha.R;
import info.nkl.adapter.NewAlbumAdapter;
import info.nkl.database.DatabaseQuery;
import info.nkl.object.Album;
import info.nkl.services.ListAlbumsService;
import info.nkl.tools.Logger;

public class FragmentFavouriteAlbums extends Fragment{
	View mainLayout;
	GridView mgvFavAlbum;
	NewAlbumAdapter mFavAlbumAdapter;
//	ArrayList<Album> mListFavAlbums;
	JSONArray mListFavAlbums;
	DatabaseQuery mDatabaseQuery;
	
	FragmentFavouriteAlbumListener mFragmentFavouriteAlbumListener;
	
	public static FragmentFavouriteAlbums getInstance(FragmentFavouriteAlbumListener listener) {
		FragmentFavouriteAlbums fragmentFavouriteAlbums = new FragmentFavouriteAlbums();
		fragmentFavouriteAlbums.setData(listener);
		return fragmentFavouriteAlbums;
	}
	
	public void setData(FragmentFavouriteAlbumListener listener) {
		mFragmentFavouriteAlbumListener = listener;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mainLayout = inflater.inflate(R.layout.fragment_fav_albums, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		if (mDatabaseQuery != null) {
			mDatabaseQuery.close();	
		}
	}
	
	public void initUI() {
		mgvFavAlbum = (GridView) mainLayout.findViewById(R.id.gv_fav_albums);
		mFavAlbumAdapter = new NewAlbumAdapter(getActivity());
		mgvFavAlbum.setAdapter(mFavAlbumAdapter);
		mgvFavAlbum.setOnItemClickListener(mOnItemClickListener);
		
		mDatabaseQuery = new DatabaseQuery(getActivity());
		mListFavAlbums = mDatabaseQuery.getFavouriteAlbumsJSON();
		mFavAlbumAdapter.setListAlbums(mListFavAlbums);
		mFavAlbumAdapter.notifyDataSetChanged();
		
		if (mListFavAlbums.length() == 0) {
			mainLayout.findViewById(R.id.tv_no_fav_album).setVisibility(View.VISIBLE);
		} else {
			mainLayout.findViewById(R.id.tv_no_fav_album).setVisibility(View.GONE);	
		}
	}
	
	public void refreshListView() {
		mListFavAlbums = mDatabaseQuery.getFavouriteAlbumsJSON();
		mFavAlbumAdapter.setListAlbums(mListFavAlbums);
		mFavAlbumAdapter.notifyDataSetChanged();
		
		if (mListFavAlbums.length() == 0) {
			mainLayout.findViewById(R.id.tv_no_fav_album).setVisibility(View.VISIBLE);
		} else {
			mainLayout.findViewById(R.id.tv_no_fav_album).setVisibility(View.GONE);	
		}		
	}
	
	OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			try {
//				String albumId = mListFavAlbums.get(position).album_id;
				String albumId = mListFavAlbums.getJSONObject(position).getString(ListAlbumsService.album_id);
				mFragmentFavouriteAlbumListener.onSelectAlbums(albumId);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	};
	
	interface FragmentFavouriteAlbumListener {
		public void onSelectAlbums(String albumId);
	}
}
