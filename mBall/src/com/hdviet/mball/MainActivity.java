package com.hdviet.mball;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

import com.hdviet.mball.fragment.FragmentMain;
import com.hdviet.mball.util.MyLog;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;

public class MainActivity extends FragmentActivity {
	
	
	FragmentMain mFragmentMain;

	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		
		setContentView(R.layout.activity_main);
		
		initImageLoader();
		initFragment();
	}
	
	
    public void initImageLoader() {
        MyLog.log(getClass().getName() + ": initImageLoader");
        DisplayImageOptions displayImageOptions = new DisplayImageOptions.Builder()
                .cacheOnDisk(true)
                .cacheInMemory(true)
                .imageScaleType(ImageScaleType.EXACTLY)
                .bitmapConfig(Bitmap.Config.RGB_565)
                .build();
        ImageLoaderConfiguration config = new ImageLoaderConfiguration.Builder(this)
                .defaultDisplayImageOptions(displayImageOptions)
                .memoryCache(new WeakMemoryCache())
                .build();
        ImageLoader.getInstance().init(config);
    }	
    
    public void initFragment() {
    	mFragmentMain = FragmentMain.getInstance();
    	getSupportFragmentManager().beginTransaction().add(R.id.fragment_container, mFragmentMain).commit();
    }
	
    @Override
    public void onBackPressed() {
    	// TODO Auto-generated method stub
    	if (mFragmentMain.canGoBack()) {
    		return;
    	}
    	super.onBackPressed();
    }
    
    @Override
    protected void onPause() {
    	// TODO Auto-generated method stub
    	super.onPause();
    	overridePendingTransition(R.anim.slide_right_to_left_in, R.anim.slide_right_to_left_out);
    }

	

}
