package info.nkl.adapter;

import info.nkl.alpha.R;
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
import info.nkl.services.SearchService;

public class SearchSongAdapter extends BaseAdapter{
	
	LayoutInflater mInflater;
	JSONArray mSong;
	DisplayImageOptions mDisplayImageOptions;
	
	public SearchSongAdapter(Context context) {
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
	
	public void setListSongs(JSONArray listSongs) {
		mSong = listSongs;
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		if (mSong == null)
			return 0;
		else 
			return mSong.length();
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
			convertView = mInflater.inflate(R.layout.row_search_song, null);
			holder = new ViewHolder(convertView);
			convertView.setTag(holder);
		} else {
			holder = (ViewHolder) convertView.getTag();
		}
		
		try {
			JSONObject song = mSong.getJSONObject(position);
			ImageLoader.getInstance().displayImage(song.getString(SearchService.cover), holder.imgCover, mDisplayImageOptions);
			holder.tvSongName.setText(song.getString(SearchService.name));
			holder.tvArtist.setText(song.getString(SearchService.artists_name));
			convertView.setTag(R.id.tag_id, song.getString(SearchService.id));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return convertView;
	};
	
	class ViewHolder {
		ImageView imgCover;
		TextView tvSongName, tvArtist;
		
		public ViewHolder(View convertView) {
			// TODO Auto-generated constructor stub
			imgCover = (ImageView) convertView.findViewById(R.id.img_cover);
			tvSongName = (TextView) convertView.findViewById(R.id.tv_song_name);
			tvArtist = (TextView) convertView.findViewById(R.id.tv_artist);
		}
	}

}
