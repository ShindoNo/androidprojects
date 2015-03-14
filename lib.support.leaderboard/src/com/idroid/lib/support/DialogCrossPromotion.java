package com.idroid.lib.support;

import org.json.JSONArray;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.idroid.lib.support.R;
import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

public class DialogCrossPromotion {
	Activity mActivity;
	LayoutInflater mInflater;
	Dialog mDialog;
	DisplayImageOptions mDisplayImageOptions;
	
	ProgressDialog mProgressDialog;
	
	public DialogCrossPromotion(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mInflater = LayoutInflater.from(mActivity);
		mProgressDialog = new ProgressDialog(mActivity);
		mProgressDialog.setMessage("Loading...");
		
		initDialog();
		initImageLoader();
		loadData();
	}
	
	public void initDialog() {
		mDialog = new Dialog(mActivity);
		mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mDialog.setContentView(R.layout.dialog_cross_promotion);
		mDialog.findViewById(R.id.img_reload).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mProgressDialog.show();
				loadData();
			}
		});
	}
	
	public void initImageLoader() {
		ImageLoaderConfiguration config = new ImageLoaderConfiguration.Builder(mActivity).threadPoolSize(3).threadPriority(Thread.NORM_PRIORITY - 2).memoryCacheSize(2 * 1024 * 1024)
				.memoryCache(new WeakMemoryCache()).denyCacheImageMultipleSizesInMemory().discCacheFileNameGenerator(new Md5FileNameGenerator()).tasksProcessingOrder(QueueProcessingType.FIFO).build();

		ImageLoader.getInstance().init(config);

		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer()).cacheInMemory().cacheOnDisc().bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT).build();
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
						mProgressDialog.hide();
						
						if (response == null) {
							 mDialog.findViewById(R.id.img_reload).setVisibility(View.VISIBLE);
							 Toast.makeText(mActivity, "No Internet Connection", Toast.LENGTH_SHORT).show();
						} else {
							mDialog.findViewById(R.id.img_reload).setVisibility(View.GONE);
							setUI(response);
						}
					}
				});
			}
		}).start();
	}
	
	public void setUI(String response) {
		try {
			LinearLayout llMoreapp = (LinearLayout) mDialog.findViewById(R.id.ll_more_app);
			
			JSONArray moreAppArray = new JSONArray(response);
			for (int i = 0; i < moreAppArray.length(); i++) {
				View appView = mInflater.inflate(R.layout.row_cross_promotion, null);
				
				llMoreapp.addView(appView);
				appView.setOnClickListener(onClickAppView);
				
				String imgLink = moreAppArray.getJSONObject(i).getString("img_link");
				String appLink = moreAppArray.getJSONObject(i).getString("app_link");
				String appName = moreAppArray.getJSONObject(i).getString("app_name");
				String appDes  = moreAppArray.getJSONObject(i).getString("app_des");
				
				appView.setTag(appLink);
				ImageLoader.getInstance().displayImage(imgLink, (ImageView)appView.findViewById(R.id.img_cross), mDisplayImageOptions);
				((TextView)appView.findViewById(R.id.tv_cross)).setText(appName);
				((TextView)appView.findViewById(R.id.tv_cross_des)).setText(appDes);
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
		mDialog.show();
	}
	
	public void hide() {
		mDialog.hide();
	}

}
