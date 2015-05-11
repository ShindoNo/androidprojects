package com.nano.lxus.util;

import org.json.JSONArray;
import org.json.JSONObject;

import com.nano.lxus.R;
import com.nostra13.universalimageloader.core.ImageLoader;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class MyHotelAdapter extends BaseAdapter{
	
	Activity mActivity;
	JSONArray mListHotels;
	
	public MyHotelAdapter(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
	}
	
	public void setListHotels(JSONArray listHotels) {
		mListHotels = listHotels;
		notifyDataSetChanged();
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		if (mListHotels == null) {
			return 0;
		} else {
			return mListHotels.length();
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
			convertView = LayoutInflater.from(mActivity).inflate(R.layout.item_hotel, null);
		}
		
		try {
			JSONObject hotel = mListHotels.getJSONObject(position);
			ImageLoader.getInstance().displayImage(hotel.getString("HImage"), (ImageView)convertView.findViewById(R.id.img_hotel));
			((TextView)convertView.findViewById(R.id.tv_hotel_name)).setText(hotel.getString("HName"));
			((TextView)convertView.findViewById(R.id.tv_hotel_address)).setText(hotel.getString("HAddress"));
			((TextView)convertView.findViewById(R.id.tv_hotel_price)).setText(hotel.getString("HPrice") + " VNĐ");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return convertView;
	}
	
	

}
