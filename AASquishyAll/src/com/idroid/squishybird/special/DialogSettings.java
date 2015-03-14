package com.idroid.squishybird.special;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.idroid.lib.support.ServiceHelper;
import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

public class DialogSettings {
	
//	int[] birdViewId = new int[]{R.id.img_bird_chickflying, R.id.img_bird_citybird, R.id.img_bird_flappybird, R.id.img_bird_flappywings,
//								R.id.img_bird_flyingbieber, R.id.img_bird_flyingcyrus, R.id.img_bird_flyingdrizzy, R.id.img_bird_flyingnyan,
//								R.id.img_bird_splashyfish};
	
	int[] birdViewId = new int[]{R.id.img_bird_chickflying, R.id.img_bird_citybird, R.id.img_bird_flappybird, R.id.img_bird_flappywings,
			R.id.img_bird_flyingbieber, R.id.img_bird_flyingcyrus, R.id.img_bird_flyingdrizzy, R.id.img_bird_flyingnyan,
			R.id.img_bird_splashyfish, R.id.img_bird_gangnam_style, R.id.img_bird_iron_man, R.id.img_bird_sloppy, R.id.img_bird_superman};	
	
	int[] backgroundViewID = new int[]{R.id.img_bg_chickflying, R.id.img_bg_citybird, R.id.img_bg_flappybird, R.id.img_bg_flappywings,
										R.id.img_bg_flyingbieber, R.id.img_bg_flyingcyrus, R.id.img_bg_flyingdrizzy, R.id.img_bg_flyingnyan,
										R.id.img_bg_splashyfish};
	
//	String [] birdName = new String[]{"chickflying", "citybird", "flappybird", "flappywings",
//										"flyingbieber", "flyingcyrus", "flyingdrizzy", "flyingnyan",
//										"splashyfish"};
	
	String [] birdName = new String[]{"chickflying", "citybird", "flappybird", "flappywings",
			"flyingbieber", "flyingcyrus", "flyingdrizzy", "flyingnyan",
			"splashyfish", "gangnamstyle", "ironman", "sloppybird", "superman"};	
	
	String [] sceneName = new String[]{"chickflying", "citybird", "flappybird", "flappywings",
			"flyingbieber", "flyingcyrus", "flyingdrizzy", "flyingnyan",
			"splashyfish"};	
	
	Activity mActivity;
	Dialog mDialog;
	
	int currentBirdPosition;
	int currentScenePosition;
	
	ProgressDialog mProgressDialog;
	
	DisplayImageOptions mDisplayImageOptions;
	
	public DialogSettings(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		
		mProgressDialog = new ProgressDialog(activity);
		mProgressDialog.setMessage("Loading...");
		
		initDialog();
		initImageLoader();
		loadMoreApp();
	}
	
	public void initImageLoader() {
		ImageLoaderConfiguration config = new ImageLoaderConfiguration.Builder(mActivity).threadPoolSize(3).threadPriority(Thread.NORM_PRIORITY - 2).memoryCacheSize(2 * 1024 * 1024)
				.memoryCache(new WeakMemoryCache()).denyCacheImageMultipleSizesInMemory().discCacheFileNameGenerator(new Md5FileNameGenerator()).tasksProcessingOrder(QueueProcessingType.FIFO).build();

		ImageLoader.getInstance().init(config);

		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer()).cacheInMemory().cacheOnDisc().bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT).build();
	}	
	
	public void initDialog() {
		mDialog = new Dialog(mActivity, android.R.style.Theme_Black_NoTitleBar_Fullscreen);
		mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mDialog.getWindow().getAttributes().windowAnimations = R.style.DialogSettings;
		mDialog.setContentView(R.layout.dialog_settings);
		
		mDialog.findViewById(R.id.img_back).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mDialog.dismiss();
			}
		});
		
		for (int i = 0; i < birdName.length; i++) {
			if (Utils.getCurrentBird(mActivity).equals(birdName[i])) {
				currentBirdPosition = i;
				((RelativeLayout)mDialog.findViewById(birdViewId[i]).getParent()).findViewById(R.id.ic_checking).setVisibility(View.VISIBLE);
				break;
			}
		}
		
		for (int i = 0; i < sceneName.length; i++) {
			if (Utils.getCurrentScene(mActivity).equals(sceneName[i])) {
				currentScenePosition = i;
				((RelativeLayout)mDialog.findViewById(backgroundViewID[i]).getParent()).findViewById(R.id.ic_checking).setVisibility(View.VISIBLE);
				break;
			}
		}
		
		for (int i = 0; i < birdViewId.length; i++) {
			mDialog.findViewById(birdViewId[i]).setOnClickListener(onChangeBird);
		}
		
		for (int i = 0; i < backgroundViewID.length; i++) {
			mDialog.findViewById(backgroundViewID[i]).setOnClickListener(onChangeBackground);
		}
		
		mDialog.findViewById(R.id.img_btn_reload).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mProgressDialog.show();
				loadMoreApp();
			}
		});
	}
	
	OnClickListener onChangeBird = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			((RelativeLayout)mDialog.findViewById(birdViewId[currentBirdPosition]).getParent()).findViewById(R.id.ic_checking).setVisibility(View.GONE);
			for (int i = 0; i < birdViewId.length; i++) {
				if (birdViewId[i] == v.getId()) {
					currentBirdPosition = i;
					Utils.setCurrentBird(mActivity, birdName[i]);
					((RelativeLayout)mDialog.findViewById(birdViewId[currentBirdPosition]).getParent()).findViewById(R.id.ic_checking).setVisibility(View.VISIBLE);
					break;
				}
			}
		}
	};
	
	OnClickListener onChangeBackground = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			((RelativeLayout)mDialog.findViewById(backgroundViewID[currentScenePosition]).getParent()).findViewById(R.id.ic_checking).setVisibility(View.GONE);
			for (int i = 0; i < backgroundViewID.length; i++) {
				if (backgroundViewID[i] == v.getId()) {
					currentScenePosition = i;
					Utils.setCurrentScene(mActivity, sceneName[i]);
					((RelativeLayout)mDialog.findViewById(backgroundViewID[currentScenePosition]).getParent()).findViewById(R.id.ic_checking).setVisibility(View.VISIBLE);
					
					Intent intent = new Intent(MainActivity.ACTION_CHANGE_SCENE);
					mActivity.sendBroadcast(intent);
					mDialog.dismiss();
					break;
				}
			}
			
			
		}
	};
	
	public void loadMoreApp() {
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
							mDialog.findViewById(R.id.img_btn_reload).setVisibility(View.VISIBLE);
							Toast.makeText(mActivity, "Please check internet connection", Toast.LENGTH_SHORT).show();
						} else {
							mDialog.findViewById(R.id.img_btn_reload).setVisibility(View.GONE);
							initLoadMore(response);
						}
					}
				});
				
			}
		}).start();
	}
	
	public void initLoadMore(String response) {
		try {
			LayoutInflater inflater = LayoutInflater.from(mActivity);
			
			JSONArray moreAppArray = new JSONArray(response);
			for (int i = 0; i < moreAppArray.length(); i++) {
				JSONObject moreApp = moreAppArray.getJSONObject(i);
				View moreAppView = inflater.inflate(R.layout.layout_more_app, null);
				ImageLoader.getInstance().displayImage(moreApp.getString("img_link"), (ImageView)moreAppView.findViewById(R.id.img_more_app), mDisplayImageOptions);
				((TextView)moreAppView.findViewById(R.id.tv_more_app)).setText(moreApp.getString("app_name"));
				moreAppView.setTag(moreApp.getString("app_link"));
				moreAppView.setOnClickListener(onClickMoreAppListener);
				
				((LinearLayout) mDialog.findViewById(R.id.ll_more_app)).addView(moreAppView);
			}
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	OnClickListener onClickMoreAppListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String appLink = v.getTag().toString();
			Intent intent = new Intent(Intent.ACTION_VIEW);
			intent.setData(Uri.parse(appLink));
			mActivity.startActivity(intent);
		}
	};
	
}
