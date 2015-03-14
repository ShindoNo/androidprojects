package com.tubefilm.collection;

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

public class FilmAdapter extends BaseAdapter {
	
	Context mContext;
	LayoutInflater mInflater;
	String[] mListFilm;
	
	DisplayImageOptions mDisplayImageOptions;
	
	public FilmAdapter(Context context) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mInflater = LayoutInflater.from(context);
		
		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();		
	}
	
	public void setListFilm(String[] listFilm) {
		mListFilm = listFilm;
	}
	
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		if (mListFilm == null)
			return 0;
		else
			return mListFilm.length;
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
			convertView = mInflater.inflate(R.layout.row_film, null);
		}
		
		String[] filmData = mListFilm[position].split("\\*");
		String filmTitle = filmData[0];
		String filmId = filmData[1];
		
		((TextView)convertView.findViewById(R.id.tv_title)).setText(filmTitle);
		ImageLoader.getInstance().displayImage("http://i4.ytimg.com/vi/" + filmId + "/default.jpg", (ImageView)convertView.findViewById(R.id.img_cover), mDisplayImageOptions);
		
		convertView.setTag(filmId);
		
		return convertView;
	}

}
