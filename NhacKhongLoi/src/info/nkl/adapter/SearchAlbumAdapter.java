package info.nkl.adapter;

import info.nkl.adapter.NewAlbumAdapter.ViewHolder;
import info.nkl.object.Album;
import info.nkl.services.SearchService;
import info.nkl.alpha.R;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

public class SearchAlbumAdapter extends BaseAdapter{
	DisplayImageOptions mDisplayImageOptions;
//	ArrayList<Album> mListAlbums;
	JSONArray mListAlbums;
	
	LayoutInflater mInflater;
	
	public SearchAlbumAdapter(Context context) {
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
		ViewHolder holder;
		if (convertView == null) {
			convertView = mInflater.inflate(R.layout.row_new_album, null);
			holder = new ViewHolder(convertView);
			convertView.setTag(holder);
		} else {
			holder = (ViewHolder) convertView.getTag();
		}
		
		try {
			JSONObject album = mListAlbums.getJSONObject(position);
			ImageLoader.getInstance().displayImage(album.getString(SearchService.cover), holder.imgCover, mDisplayImageOptions);
			holder.tvAlbumName.setText(album.getString(SearchService.name));
			holder.tvArtist.setText(album.getString(SearchService.artist_name));
			convertView.setTag(R.id.tag_id, album.getString(SearchService.id));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return convertView;
	}
	
	class ViewHolder {
		ImageView imgCover;
		TextView tvAlbumName, tvArtist;
		
		public ViewHolder(View convertView) {
			// TODO Auto-generated constructor stub
			imgCover = (ImageView) convertView.findViewById(R.id.img_cover);
			tvAlbumName = (TextView) convertView.findViewById(R.id.tv_album_name);
			tvArtist = (TextView) convertView.findViewById(R.id.tv_artist);
		}
	}
}
