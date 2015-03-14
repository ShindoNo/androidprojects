package com.idroid.lib.support;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;

import android.app.Activity;
import android.os.Handler;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;


public class SupportAdview {
	Activity mActivity;
	String mAdmobId;
	AdView mAdView;
	ImageView mImgClose;
	
//	int leftMargin = -1;
//	int topMargin = -1;
//	int rightMargin = -1;
//	int bottomMargin = 0;
	
	float density;
	int screenWidth;
	int screenHeight;
	int bannerHeight = 50;
	
	int gravity = Gravity.RIGHT;
	int widthLayoutParams = FrameLayout.LayoutParams.WRAP_CONTENT;
	
	public SupportAdview(Activity activity, String admobId) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mAdmobId = admobId;
		
		initAdview();
		attachAdview();
		attachCloseButton();
	}
	
	public void initAdview() {
		FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.WRAP_CONTENT);
		lp.gravity = Gravity.BOTTOM;
		
		mAdView = new AdView(mActivity);
		mAdView.setLayoutParams(lp);
		mAdView.setAdSize(com.google.android.gms.ads.AdSize.BANNER);
		mAdView.setAdUnitId(mAdmobId);
		
		AdRequest adRequest = new AdRequest.Builder().build();
		mAdView.loadAd(adRequest);		
	}
	
	public void attachAdview() {
		((FrameLayout) mActivity.findViewById(android.R.id.content)).addView(mAdView);
	}
	
	public void hideAdview() {
		mAdView.setVisibility(View.GONE);
	}
	
	public void showAdview() {
		mAdView.setVisibility(View.VISIBLE);
	}
	
	public void hideCloseButton() {
		mImgClose.setVisibility(View.GONE);
	}
	
	public void showCloseButton() {
		mImgClose.setVisibility(View.VISIBLE);
	}
	
	public void attachCloseButton() {
		mImgClose = new ImageView(mActivity);
		mImgClose.setImageResource(R.drawable.ic_close);
		FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.WRAP_CONTENT);
		lp.topMargin = (int) (50 * mActivity.getResources().getDisplayMetrics().density);
		lp.gravity = Gravity.RIGHT;
		mImgClose.setLayoutParams(lp);
		mImgClose.setVisibility(View.GONE);
		
		mImgClose.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mImgClose.setVisibility(View.GONE);
				mAdView.setVisibility(View.GONE);
				
				new Handler().postDelayed(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mImgClose.setVisibility(View.VISIBLE);
						mAdView.setVisibility(View.VISIBLE);
					}
				}, 5 * 60 * 1000);
			}
		});
		
		((FrameLayout) mActivity.findViewById(android.R.id.content)).addView(mImgClose);
		
	}
	
	
}
