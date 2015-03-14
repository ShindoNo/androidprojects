package info.nkl.adapter;

import info.nkl.object.Album;
import info.nkl.alpha.R;
import java.util.ArrayList;
import java.util.HashMap;

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

public class ListAlbumAdapter extends BaseAdapter {
	// system
	LayoutInflater mInflater;
	DisplayImageOptions mDisplayImageOptions;
	
	// data
	public HashMap<String, ArrayList<Album>> mMapIdToListAlbum;
	String currentGroupId;
	
	public ListAlbumAdapter(Context context) {
		// TODO Auto-generated constructor stub
		mInflater = LayoutInflater.from(context);
		
		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.showStubImage(R.drawable.bg_album_cover)
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();		
		
		mMapIdToListAlbum = new HashMap<String, ArrayList<Album>>();
		currentGroupId = null;
	}
	
	
	public void add(String groupId, ArrayList<Album> albums) {
		mMapIdToListAlbum.put(groupId, albums);
	}
	
	public void setGroupKey(String groupKey) {
		currentGroupId = groupKey;
		notifyDataSetChanged();
	}
	
	public void append(String groupId, ArrayList<Album> albums) {
		mMapIdToListAlbum.get(groupId).addAll(albums);
	}
	
//	public boolean checkTypeExist(String groupId) {
//		return mMapIdToListAlbum.containsKey(groupId);
//	}
	
	public int getNextPage(String groupKey) {
		if (mMapIdToListAlbum.get(groupKey) != null) {
			int nextPage = mMapIdToListAlbum.get(groupKey).size() / 10 + 1;
			if (mMapIdToListAlbum.get(groupKey).size() % 10 != 0) nextPage = nextPage + 1;
			return nextPage;
		} else {
			return 1;
		}
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		if (currentGroupId == null) return 0;
		return mMapIdToListAlbum.get(currentGroupId).size();
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
		
		Album album = mMapIdToListAlbum.get(currentGroupId).get(position);
		ImageLoader.getInstance().displayImage(album.album_cover, holder.imgAvatar, mDisplayImageOptions);
		holder.tvAlbumName.setText(album.album_name);
		holder.tvInstrumentName.setText(album.sub_instrument_name);
		holder.tvAuthName.setText(album.artist_name);
		holder.tvViewNumb.setText(album.album_num_views);
		convertView.setTag(R.id.tag_album_id, album.album_id);
		
		return convertView;
	}
	
	public class ViewHolder {
		ImageView imgAvatar;
		TextView tvAlbumName, tvInstrumentName, tvAuthName, tvViewNumb;
		
		public ViewHolder(View convertView) {
			// TODO Auto-generated constructor stub
			imgAvatar = (ImageView) convertView.findViewById(R.id.img_avatar);
			tvAlbumName = (TextView) convertView.findViewById(R.id.tv_album_name);
			tvInstrumentName = (TextView) convertView.findViewById(R.id.tv_intrument_name);
			tvAuthName = (TextView) convertView.findViewById(R.id.tv_auth_name);
			tvViewNumb = (TextView) convertView.findViewById(R.id.tv_view_numb);
		}
	}
}
