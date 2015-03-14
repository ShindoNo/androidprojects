package com.shjndo.instaliker;

import org.json.JSONArray;
import org.json.JSONObject;

import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageLoadingListener;
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

public class MyPhotoAdapter extends BaseAdapter {
	
	JSONArray mData;
	Context mContext;
	LayoutInflater mInflater;
	DisplayImageOptions mDisplayImageOptions;
	
	public MyPhotoAdapter(Context context) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mInflater = LayoutInflater.from(mContext);
		
		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();		
	}
	
	public void setData(JSONArray data) {
		mData = data;
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		if (mData == null) {
			return 0;
		} else {
			return mData.length();	
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
			convertView = mInflater.inflate(R.layout.item_image, null);
		}
		
		final View holderView = convertView;
		
		try {
			JSONObject imgJSON = mData.getJSONObject(position);
			((TextView)convertView.findViewById(R.id.tv_likes)).setText(imgJSON.getJSONObject("likes").getString("count") + " likes");
			
			ImageLoadingListener imageLoadingListener = new ImageLoadingListener() {
				@Override
				public void onLoadingStarted(String imageUri, View view) {
					// TODO Auto-generated method stub
					holderView.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
				}
				
				@Override
				public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
					// TODO Auto-generated method stub
					holderView.findViewById(R.id.pb_loading).setVisibility(View.GONE);
				}
				
				@Override
				public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
					// TODO Auto-generated method stub
					holderView.findViewById(R.id.pb_loading).setVisibility(View.GONE);
				}
				
				@Override
				public void onLoadingCancelled(String imageUri, View view) {}
			};
			
			String imgUrl = imgJSON.getJSONObject("images").getJSONObject("low_resolution").getString("url");
			ImageLoader.getInstance().displayImage(imgUrl, (ImageView)convertView.findViewById(R.id.img_mine), 
													mDisplayImageOptions, imageLoadingListener);
			
			convertView.setTag(R.id.tag_img_data, imgJSON);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} 
		
		return convertView;
	}

	
}
