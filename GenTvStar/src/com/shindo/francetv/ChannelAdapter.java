package com.shindo.francetv;

import org.json.JSONArray;
import org.json.JSONObject;

import com.idroid.lib.support.MCrypt;
import com.idroid.lib.support.ReadConfig;
import com.nostra13.universalimageloader.core.ImageLoader;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class ChannelAdapter extends BaseAdapter {
	LayoutInflater mInflater;
	JSONArray mListChannels;
	int mCurrentPosition = -1;
	
	boolean mShowLikeChannels = false;
	SharedPreferences mDefaultSharedPref;
	
	MCrypt mCrypt;
	
	public ChannelAdapter(Context context) {
		// TODO Auto-generated constructor stub
		mInflater = LayoutInflater.from(context);
		mDefaultSharedPref = PreferenceManager.getDefaultSharedPreferences(context);
		
		NameSpace.IV = ":invoke/virtual;";
		NameSpace.SECRET = "lang/Exception;-";
		mCrypt = new MCrypt(NameSpace.IV, NameSpace.SECRET);
	}
	
	public void showLikeChannels(boolean showLikeChannels) {
		mShowLikeChannels = showLikeChannels;
		notifyDataSetChanged();
	}
	
	public void setData(JSONArray listChannels) {
		mListChannels = listChannels;
	}
	
	public void setCurrentPosition(int position) {
		mCurrentPosition = position;
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		if (mListChannels == null)
			return 0;
		else {
			return mListChannels.length();
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
		if (convertView == null) {
			convertView = mInflater.inflate(R.layout.row_channel, null);
		}
		
		try {
			JSONObject channel = mListChannels.getJSONObject(position);
			convertView.findViewById(R.id.row_tag).setBackgroundColor(Color.parseColor(NameSpace.COLOR[position % 8]));
			((TextView)convertView.findViewById(R.id.tv_channel_name)).setText(channel.getString(ChannelService.channel_name));
			String channelId = channel.getString(ChannelService.channel_id);
			
			ImageView imgLike = (ImageView) convertView.findViewById(R.id.img_like);
			imgLike.setTag(R.id.tag_id, channelId);
			imgLike.setOnClickListener(mOnClickLikeListener);
			
			boolean like = mDefaultSharedPref.getBoolean(channelId, false);
			if (like) {
				imgLike.setImageResource(R.drawable.like_yes_small);
			} else {
				imgLike.setImageResource(R.drawable.like_no_small);
			}
			
			if (mShowLikeChannels) {
				if (like) {
					convertView.findViewById(R.id.layout_row).setVisibility(View.VISIBLE);
				} else {
					convertView.findViewById(R.id.layout_row).setVisibility(View.GONE);
				}
			} else {
				convertView.findViewById(R.id.layout_row).setVisibility(View.VISIBLE);
			}
			
			if (position == mCurrentPosition) {
				convertView.setBackgroundColor(Color.parseColor("#666666"));
			} else {
				convertView.setBackgroundColor(0);
			}
			
			// check stream 0 if equal to 'promotion' ==> promotion
			String stream0 = channel.getJSONArray(ChannelService.stream).getString(0);
			stream0 = mCrypt.decryptFromHexString(stream0);
			if (stream0.equals("promotion")) {
				convertView.findViewById(R.id.img_logo).setVisibility(View.VISIBLE);
				convertView.setTag("promotion");
				String imgLink = channel.getJSONArray(ChannelService.stream).getString(1);
				imgLink = mCrypt.decryptFromHexString(imgLink);
				ImageLoader.getInstance().displayImage(imgLink, (ImageView)convertView.findViewById(R.id.img_logo), ReadConfig.mDisplayImageOptions);
			} else {
				convertView.findViewById(R.id.img_logo).setVisibility(View.GONE);
				convertView.setTag("");
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		};
		
		return convertView;
	}
	
	OnClickListener mOnClickLikeListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String channelId = v.getTag(R.id.tag_id).toString();
			boolean like = mDefaultSharedPref.getBoolean(channelId, false);
			if (like) {
				mDefaultSharedPref.edit().putBoolean(channelId, false).commit();
				((ImageView) v).setImageResource(R.drawable.like_no_small);
			} else {
				mDefaultSharedPref.edit().putBoolean(channelId, true).commit();
				((ImageView) v).setImageResource(R.drawable.like_yes_small);				
			}
		}
	};

}
