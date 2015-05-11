package com.nano.lxus.util;

import org.json.JSONObject;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.google.android.gms.maps.GoogleMap.InfoWindowAdapter;
import com.google.android.gms.maps.model.Marker;
import com.nano.lxus.R;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;

public class MyInfoWindowAdapter implements InfoWindowAdapter{
	
	Context mContext;
	View mInfoWindow;
	boolean pendingRefreshing = false;
	
	
	public MyInfoWindowAdapter(Context context) {
		// TODO Auto-generated constructor stub
		mContext = context;
	}

	@Override
	public View getInfoContents(Marker marker) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public View getInfoWindow(final Marker marker) {
		// TODO Auto-generated method stub
		
		MyLog.log("getInfoWindow()");
		
		if (marker.getTitle() == null) {
			return null;
		}
		
		if (pendingRefreshing) {
			pendingRefreshing = false;
			return mInfoWindow;
		}
		
		mInfoWindow = LayoutInflater.from(mContext).inflate(R.layout.info_window_hotel, null);

		try {
			JSONObject dataJSON = new JSONObject(marker.getTitle());
			((TextView)mInfoWindow.findViewById(R.id.tv_hotel_name)).setText(dataJSON.getString("HName"));
			((TextView)mInfoWindow.findViewById(R.id.tv_hotel_price)).setText(dataJSON.getString("HPrice")  + " VNĐ") ;
			
			pendingRefreshing = true;
			ImageLoader.getInstance().displayImage(dataJSON.getString("HImage"), (ImageView)mInfoWindow.findViewById(R.id.img_hotel), new SimpleImageLoadingListener() {
				@Override
				public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
					// TODO Auto-generated method stub
					super.onLoadingComplete(imageUri, view, loadedImage);
					marker.showInfoWindow();
				}
			});
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return mInfoWindow;
	}
	

}
