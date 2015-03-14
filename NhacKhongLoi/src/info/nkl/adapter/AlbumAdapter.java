package info.nkl.adapter;

import info.nkl.alpha.R;
import info.nkl.services.ListAlbumsService;

import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONObject;

import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;


import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class AlbumAdapter extends BaseAdapter {
	// system
	Context mContext;
	LayoutInflater mInflater;
	ImageLoader mImageLoader;
	DisplayImageOptions mDisplayImageOptions;
	
	// data
	HashMap<String, JSONArray> mapTypeToAlbums;
	String currentGroupId;
	
	public AlbumAdapter(Context c) {
		// TODO Auto-generated constructor stub
		mContext = c;
		mInflater = LayoutInflater.from(c);
		mImageLoader = ImageLoader.getInstance();
		
		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.showStubImage(R.drawable.bg_album_cover)
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();		
		
		mapTypeToAlbums = new HashMap<String, JSONArray>();
		currentGroupId = null;
	}
	
	
	public void add(String groupId, JSONArray albums) {
		mapTypeToAlbums.put(groupId, albums);
	}
	
	public void setGroupKey(String groupKey) {
		currentGroupId = groupKey;
		notifyDataSetChanged();
	}
	
	public void append(String groupId, JSONArray albums) {
		try {
		JSONArray currentList = mapTypeToAlbums.get(groupId);
		for (int i = 0; i < albums.length(); i++) 
			currentList.put(albums.getJSONObject(i));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public boolean checkTypeExist(String groupId) {
		return mapTypeToAlbums.containsKey(groupId);
	}
	
	public int getNextPage(String groupKey) {
		if (mapTypeToAlbums.get(groupKey) != null) {
			int nextPage = mapTypeToAlbums.get(groupKey).length() / 10 + 1;
			if (mapTypeToAlbums.get(groupKey).length() % 10 != 0) nextPage = nextPage + 1;
			return nextPage;
		} else {
			return 0;
		}
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		if (currentGroupId == null) return 0;
		return mapTypeToAlbums.get(currentGroupId).length();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		// TODO Auto-generated method stub
		ViewHolder holder;
		if (convertView == null) {
			convertView = mInflater.inflate(R.layout.row_album, null);
			holder = new ViewHolder(convertView);
			convertView.setTag(holder);
		} else {
			holder = (ViewHolder) convertView.getTag();
		}
		
		try {
			JSONObject album = mapTypeToAlbums.get(currentGroupId).getJSONObject(position);
			mImageLoader.displayImage(album.getString(ListAlbumsService.album_cover), holder.imgAvatar, mDisplayImageOptions);
			holder.tvAlbumName.setText(album.getString(ListAlbumsService.album_name));
			holder.tvInstrumentName.setText(album.getString(ListAlbumsService.sub_instrument_name));
			holder.tvAuthName.setText(album.getString(ListAlbumsService.artist_name));
			holder.tvViewNumb.setText(album.getString(ListAlbumsService.album_num_views));
			holder.albumId = album.getString(ListAlbumsService.album_id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return convertView;
	}
	
	public class ViewHolder {
		public String albumId;
		ImageView imgAvatar;
		TextView tvAlbumName, tvInstrumentName, tvAuthName, tvViewNumb;
		
		public ViewHolder(View parent) {
			// TODO Auto-generated constructor stub
			imgAvatar = (ImageView) parent.findViewById(R.id.img_avatar);
			tvAlbumName = (TextView) parent.findViewById(R.id.tv_album_name);
			tvInstrumentName = (TextView) parent.findViewById(R.id.tv_intrument_name);
			tvAuthName = (TextView) parent.findViewById(R.id.tv_auth_name);
			tvViewNumb = (TextView) parent.findViewById(R.id.tv_view_numb);
		}
	}
	
	
	
}
