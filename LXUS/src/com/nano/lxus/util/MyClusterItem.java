package com.nano.lxus.util;

import org.json.JSONObject;

import com.google.android.gms.maps.model.LatLng;
import com.google.maps.android.clustering.ClusterItem;

public class MyClusterItem implements ClusterItem{
	
	LatLng latLng;
	JSONObject mData;
	
	String hotelName = "";
	String hotelPrice = "0K";
	
	public MyClusterItem(double lat, double lng, JSONObject data) {
		// TODO Auto-generated constructor stub
		latLng = new LatLng(lat, lng);
		mData = data;
		
		try {
			hotelName = mData.getString("HName");
			hotelPrice = mData.getString("HPrice") + "VNĐ";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	

	
	@Override
	public LatLng getPosition() {
		// TODO Auto-generated method stub
		return latLng;
	}
	

}
