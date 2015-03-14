package info.nkl.adapter;

import info.nkl.services.AlbumDetailService;
import info.nkl.alpha.R;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class AlbumDetailAdapter extends BaseAdapter{
	
	LayoutInflater mInflater;
	JSONObject mAlbumDetailData;
	JSONArray mSongs;
	
	int mSelectedPosition = -1;
	
	public AlbumDetailAdapter(Context context) {
		// TODO Auto-generated constructor stub
		mInflater = LayoutInflater.from(context);
	}
	
	public void setAlbumDetailData(JSONObject albumDetailData) {
		mAlbumDetailData = albumDetailData;
		mSongs = mAlbumDetailData.optJSONArray(AlbumDetailService.songs);
	}
	
	public void setSelectedPosition(int selectedPosition) {
		mSelectedPosition = selectedPosition;
		notifyDataSetChanged();
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		if (mSongs == null) {
			return 0;
		} else {
			return mSongs.length();
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
			convertView = mInflater.inflate(R.layout.row_song_2, null);
			holder = new ViewHolder(convertView);
			convertView.setTag(holder);
		} else {
			holder = (ViewHolder) convertView.getTag();
		}
		
		holder.tvPosition.setText((position +1) + "");
			
		try {
			holder.tvSongName.setText(mSongs.getJSONObject(position).getString(AlbumDetailService.song_name));
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (position == mSelectedPosition) {
			holder.tvPosition.setBackgroundColor(Color.parseColor("#4f81df"));
			holder.tvPosition.setTextColor(Color.parseColor("#FFFFFF"));
			holder.tvSongName.setSelected(true);
			holder.tvSongName.setTextColor(Color.parseColor("#FFFFFF"));
		} else {
			holder.tvPosition.setBackgroundColor(Color.parseColor("#dcdcdc"));
			holder.tvPosition.setTextColor(Color.parseColor("#000000"));
			holder.tvSongName.setSelected(false);
			holder.tvSongName.setTextColor(Color.parseColor("#000000"));
		}
		
		return convertView;
	}
	
	class ViewHolder {
		TextView tvPosition, tvSongName;
		
		public ViewHolder(View convertView) {
			// TODO Auto-generated constructor stub
			tvPosition = (TextView) convertView.findViewById(R.id.tv_position);
			tvSongName = (TextView) convertView.findViewById(R.id.tv_song_name);
		}
	}
	
	
	
}
