package info.nkl.adapter;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import info.nkl.services.ListAlbumsService;
import info.nkl.services.TopAlbumsService;
import info.nkl.tools.Logger;
import com.google.ads.al;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

import android.R.integer;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import info.nkl.object.Album;
import info.nkl.alpha.R;

public class TopAlbumAdapter extends BaseAdapter {
	
	LayoutInflater mInflater;
	DisplayImageOptions mDisplayImageOptions;
	
//	ArrayList<Album> mListAlbums;
	JSONArray mListAlbums;
	
	public TopAlbumAdapter(Context context) {
		// TODO Auto-generated constructor stub
		mInflater = LayoutInflater.from(context);
		
		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.showStubImage(R.drawable.bg_album_cover)
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();		
	}
	
	public void setListAlbums(JSONArray listAlbums) {
		mListAlbums = listAlbums;
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		if (mListAlbums == null) {
			return 0;
		} else {
			return mListAlbums.length();
		}
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
		if (position == 0) {
			convertView = mInflater.inflate(R.layout.row_top_1, null);
		} else if (position == 1) {
			convertView = mInflater.inflate(R.layout.row_top_2, null);
		} else if (position == 2) {
			convertView = mInflater.inflate(R.layout.row_top_3, null);
		} else {
			convertView = mInflater.inflate(R.layout.row_top_4, null);
		}
		
		try {
			JSONObject album = mListAlbums.getJSONObject(position);
			((TextView) convertView.findViewById(R.id.tv_position)).setText((position + 1) + "");
			((TextView) convertView.findViewById(R.id.tv_album_name)).setText(album.getString(ListAlbumsService.album_name));
			((TextView) convertView.findViewById(R.id.tv_artist)).setText(album.getString(ListAlbumsService.artist_name));
			ImageView imgCover = (ImageView) convertView.findViewById(R.id.img_cover);
			ImageLoader.getInstance().displayImage(album.getString(ListAlbumsService.album_cover), imgCover, mDisplayImageOptions);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return convertView;
	}
	
//	class ViewHolder {
//		TextView tvPosition, tvAlbumName, tvArtist;
//		ImageView imgCover;
//		
//		public ViewHolder(View convertView) {
//			// TODO Auto-generated constructor stub
//			tvPosition = (TextView) convertView.findViewById(R.id.tv_position);
//			tvAlbumName = (TextView) convertView.findViewById(R.id.tv_album_name);
//			tvArtist = (TextView) convertView.findViewById(R.id.tv_artist);
//			imgCover = (ImageView) imgCover.findViewById(R.id.img_cover);
//		}
//	}
}
