package com.nano.lxus.util;

import android.content.Context;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.maps.android.clustering.ClusterManager;
import com.google.maps.android.clustering.view.DefaultClusterRenderer;

public class MyClusterRenderer extends DefaultClusterRenderer<MyClusterItem>{

	public MyClusterRenderer(Context context, GoogleMap map, ClusterManager<MyClusterItem> clusterManager) {
		super(context, map, clusterManager);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	protected void onBeforeClusterItemRendered(MyClusterItem item, MarkerOptions markerOptions) {
		// TODO Auto-generated method stub
		super.onBeforeClusterItemRendered(item, markerOptions);
		
	}
	
	@Override
	protected void onClusterItemRendered(MyClusterItem clusterItem, Marker marker) {
		// TODO Auto-generated method stub
		super.onClusterItemRendered(clusterItem, marker);
		marker.setTitle(clusterItem.mData.toString());
	}
	

}
