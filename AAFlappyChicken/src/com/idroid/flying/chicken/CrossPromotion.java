package com.idroid.flying.chicken;

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
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.FrameLayout.LayoutParams;

public class CrossPromotion {

	Activity mActivity;
	View layoutMore;
	DisplayImageOptions mDisplayImageOptions;
	int layoutWidth = 288;
	int layoutHeight = 432;

	public CrossPromotion(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		
		initImageLoader();
		addCrossPromotion();
		readConfig();
	}

	public void initImageLoader() {
		ImageLoaderConfiguration config = new ImageLoaderConfiguration.Builder(mActivity).threadPoolSize(3).threadPriority(Thread.NORM_PRIORITY - 2).memoryCacheSize(2 * 1024 * 1024)
				.memoryCache(new WeakMemoryCache()).denyCacheImageMultipleSizesInMemory().discCacheFileNameGenerator(new Md5FileNameGenerator()).tasksProcessingOrder(QueueProcessingType.FIFO).build();

		ImageLoader.getInstance().init(config);

		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer()).cacheInMemory().cacheOnDisc().bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT).build();
	}

	public void addCrossPromotion() {
		float density = mActivity.getResources().getDisplayMetrics().density;
		layoutMore = LayoutInflater.from(mActivity).inflate(R.layout.layout_cross_promotion, null);
		FrameLayout.LayoutParams lpMore = new LayoutParams((int) (layoutWidth * density), (int) (layoutHeight * density));

		lpMore.setMargins((int) (-layoutWidth * mActivity.getResources().getDisplayMetrics().density), (int) ((mActivity.getResources().getDisplayMetrics().heightPixels - layoutHeight * density) / 2), 0, 0);
		layoutMore.setLayoutParams(lpMore);

		((FrameLayout) mActivity.findViewById(android.R.id.content)).addView(layoutMore);

		layoutMore.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				hideCrossPromotion();
			}
		});
		
		layoutMore.findViewById(R.id.img_close).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				hideCrossPromotion();
			}
		});
		
		layoutMore.findViewById(R.id.img_rate_app).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(Intent.ACTION_VIEW);
				intent.setData(Uri.parse("market://details?id=" + mActivity.getPackageName()));
				mActivity.startActivity(intent);
			}
		});
		
		layoutMore.findViewById(R.id.btn_reload).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				readConfig();
			}
		});
	}

	public void readConfig() {
		layoutMore.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				final String crossPromotionData = ServiceHelper.getData("http://dl.sohagame.vn/android/config/cross_promotion/config_cross_promotion.txt");
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						layoutMore.findViewById(R.id.pb_loading).setVisibility(View.GONE);
						if (crossPromotionData == null) {
							layoutMore.findViewById(R.id.btn_reload).setVisibility(View.VISIBLE);
						} else {
							layoutMore.findViewById(R.id.btn_reload).setVisibility(View.GONE);
							initView(crossPromotionData);
						}
					}
				});
			}
		}).start();
	}

	public void initView(String crossPromotionData) {
		try {
			JSONArray crossArray = new JSONArray(crossPromotionData);
			for (int i = 0; i < crossArray.length(); i++) {
				ImageView imageView = new ImageView(mActivity);
				imageView.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT));
				((LinearLayout)layoutMore.findViewById(R.id.layout_cross_container)).addView(imageView);
				ImageLoader.getInstance().displayImage(crossArray.getJSONObject(i).getString("img_link"), imageView, mDisplayImageOptions);
				imageView.setTag(crossArray.getJSONObject(i).getString("app_link"));
				imageView.setOnClickListener(onClickCrossPromotion);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	OnClickListener onClickCrossPromotion = new OnClickListener() {
		@Override
		public void onClick(final View v) {
			// TODO Auto-generated method stub
			hideCrossPromotion();
			
			new Handler().postDelayed(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					String appLink = v.getTag().toString();
					Intent intent = new Intent(Intent.ACTION_VIEW);
					intent.setData(Uri.parse(appLink));
					mActivity.startActivity(intent);					
				}
			}, 200);
		}
	};

	public void showCrossPromotion() {
		mActivity.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				Animation animation = new Animation() {
					@Override
					protected void applyTransformation(float interpolatedTime, Transformation t) {
						// TODO Auto-generated method stub
						super.applyTransformation(interpolatedTime, t);
						((LayoutParams) layoutMore.getLayoutParams()).leftMargin = (int) (-layoutWidth * (1-interpolatedTime) * mActivity.getResources().getDisplayMetrics().density);
						layoutMore.requestLayout();
					}
				};
				animation.setDuration(300);
				animation.setInterpolator(new AccelerateInterpolator());
				layoutMore.clearAnimation();
				layoutMore.startAnimation(animation);
			}
		});
	}

	public void hideCrossPromotion() {
		mActivity.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				Animation animation = new Animation() {
					@Override
					protected void applyTransformation(float interpolatedTime, Transformation t) {
						// TODO Auto-generated method stub
						super.applyTransformation(interpolatedTime, t);
						((LayoutParams) layoutMore.getLayoutParams()).leftMargin = (int) (- layoutWidth * interpolatedTime * mActivity.getResources().getDisplayMetrics().density);
						layoutMore.requestLayout();
					}
				};
				animation.setDuration(400);
				animation.setInterpolator(new DecelerateInterpolator());
				layoutMore.clearAnimation();
				layoutMore.startAnimation(animation);
			}
		});
	}

}
