package com.idroid.poke.cookie;

import org.json.JSONArray;

import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.LinearLayout.LayoutParams;

public class CrossPromotionBottom {
	
	int SCREEN_WIDTH;
	int SCREEN_HEIGHT;
	int CROSS_WIDTH = 300;
	int CROSS_HEIGHT = 115;
	
	Activity mActivity;
	LayoutInflater mInflater;
	View rootCrossView;
	View crossView;
	boolean isShowingCross;
	
	DisplayImageOptions mDisplayImageOptions;
	ProgressDialog mProgressDialog;
	
	boolean clickReload = false;
	
	public CrossPromotionBottom(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mInflater = LayoutInflater.from(activity);
		
		SCREEN_WIDTH = mActivity.getResources().getDisplayMetrics().widthPixels;
		SCREEN_HEIGHT = mActivity.getResources().getDisplayMetrics().heightPixels;
		CROSS_WIDTH = (int) (CROSS_WIDTH * mActivity.getResources().getDisplayMetrics().density);
		CROSS_HEIGHT = (int) (CROSS_HEIGHT * mActivity.getResources().getDisplayMetrics().density);
		
		mProgressDialog = new ProgressDialog(mActivity);
		mProgressDialog.setMessage("Loading...");
		
		attachCrossPromotion();
		initImageLoader();
		loadData();
		
	}
	
	public void initImageLoader() {
		ImageLoaderConfiguration config = new ImageLoaderConfiguration.Builder(mActivity).threadPoolSize(3).threadPriority(Thread.NORM_PRIORITY - 2).memoryCacheSize(2 * 1024 * 1024)
				.memoryCache(new WeakMemoryCache()).denyCacheImageMultipleSizesInMemory().discCacheFileNameGenerator(new Md5FileNameGenerator()).tasksProcessingOrder(QueueProcessingType.FIFO).build();

		ImageLoader.getInstance().init(config);

		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer()).cacheInMemory().cacheOnDisc().bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT).build();
	}	
	
	public void attachCrossPromotion() {
		rootCrossView = mInflater.inflate(R.layout.layout_cross_promotion_bottom, null);
		rootCrossView.setOnTouchListener(new OnTouchListener() {
			@Override
			public boolean onTouch(View v, MotionEvent event) {
				// TODO Auto-generated method stub
				Log.e("stk", "isShowingCross=" + isShowingCross);
				if (isShowingCross && event.getAction() == MotionEvent.ACTION_DOWN) {
					hide();
					return true;
				}
				
				return false;
			}
		});
		
		crossView = rootCrossView.findViewById(R.id.cross_promotion);
		FrameLayout.LayoutParams lpCross = new FrameLayout.LayoutParams(CROSS_WIDTH, CROSS_HEIGHT);
		int paddingLeft = (mActivity.getResources().getDisplayMetrics().widthPixels - CROSS_WIDTH)/2;
		int paddingTop = mActivity.getResources().getDisplayMetrics().heightPixels;
		lpCross.setMargins(paddingLeft, paddingTop, 0, 0);
		crossView.setLayoutParams(lpCross);
		
		((FrameLayout)mActivity.findViewById(android.R.id.content)).addView(rootCrossView);
		
		crossView.findViewById(R.id.img_reload).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mProgressDialog.show();
				clickReload = true;
				loadData();
			}
		});
	}
	
	
	public void loadData() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				final String response = ServiceHelper.getData("http://dl.sohagame.vn/android/config/cross_promotion/config_more_app.txt");
				
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (response == null) {
							 crossView.findViewById(R.id.img_reload).setVisibility(View.VISIBLE);
							 if (clickReload) {
								 Toast.makeText(mActivity, "No Internet Connection", Toast.LENGTH_SHORT).show();
							 }
						} else {
							crossView.findViewById(R.id.img_reload).setVisibility(View.GONE);
							setUI(response);
						}
					}
				});
			}
		}).start();
	}
	
	public void setUI(String response) {
		try {
			LinearLayout llMoreapp = (LinearLayout) crossView.findViewById(R.id.ll_more_app);
			JSONArray moreAppArray = new JSONArray(response);
			for (int i = 0; i < moreAppArray.length(); i++) {
				View appView = mInflater.inflate(R.layout.item_cross_promotion, null);
				appView.setLayoutParams(new FrameLayout.LayoutParams(FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.WRAP_CONTENT));
				llMoreapp.addView(appView);
				appView.setOnClickListener(onClickAppView);
				
				String imgLink = moreAppArray.getJSONObject(i).getString("img_link");
				String appLink = moreAppArray.getJSONObject(i).getString("app_link");
				String appName = moreAppArray.getJSONObject(i).getString("app_name");
				
				appView.setTag(appLink);
				ImageLoader.getInstance().displayImage(imgLink, (ImageView)appView.findViewById(R.id.img_cross), mDisplayImageOptions);
				((TextView)appView.findViewById(R.id.tv_cross)).setText(appName);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	OnClickListener onClickAppView = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String appLink = v.getTag().toString();
			Intent intent = new Intent(Intent.ACTION_VIEW);
			intent.setData(Uri.parse(appLink));
			mActivity.startActivity(intent);
		}
	};
	
	public void show() {
		isShowingCross = true;
		mActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				rootCrossView.setBackgroundColor(Color.parseColor("#99000000"));
				
				Animation animation = new Animation() {
					@Override
					protected void applyTransformation(float interpolatedTime, Transformation t) {
						// TODO Auto-generated method stub
						super.applyTransformation(interpolatedTime, t);
						((FrameLayout.LayoutParams)crossView.getLayoutParams()).topMargin = (int) (SCREEN_HEIGHT - SCREEN_HEIGHT/2 * interpolatedTime);
						Log.e("stk", "Screen_height=" + SCREEN_HEIGHT +  ";topMargin=" + (int) (SCREEN_HEIGHT - SCREEN_HEIGHT/2 * interpolatedTime));
						crossView.requestLayout();
					}
				};
				
				animation.setDuration(300);
				animation.setInterpolator(new AccelerateInterpolator());
				crossView.clearAnimation();
				crossView.startAnimation(animation);				
			}
		});
	}
	
	public void hide() {
		
		isShowingCross = false;
		
		mActivity.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				rootCrossView.setBackgroundColor(Color.parseColor("#00000000"));
				
				Animation animation = new Animation() {
					@Override
					protected void applyTransformation(float interpolatedTime, Transformation t) {
						// TODO Auto-generated method stub
						super.applyTransformation(interpolatedTime, t);
						((FrameLayout.LayoutParams)crossView.getLayoutParams()).topMargin = (int) (SCREEN_HEIGHT/2 + SCREEN_HEIGHT * interpolatedTime);
						crossView.requestLayout();
					}
				};
				animation.setDuration(300);
				animation.setInterpolator(new AccelerateInterpolator());
				crossView.clearAnimation();
				crossView.startAnimation(animation);
			}
		});
	}
	
	
}
