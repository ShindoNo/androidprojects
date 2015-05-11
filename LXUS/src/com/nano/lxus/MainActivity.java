package com.nano.lxus;

import java.util.ArrayList;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.util.Log;

import com.nano.lxus.FragmentHome.FragmentHomeListener;
import com.nano.lxus.util.MyLog;
import com.nano.lxus.util.NameSpace;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;

public class MainActivity extends FragmentActivity {
	
	FragmentHome mFragmentHome;
	FragmentListHotels mFragmentListHotels;
	
	ArrayList<Fragment> mFragments;
	
	Fragment mCurrentFragment;
	
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
                .showImageOnLoading(R.drawable.img_no_preview)
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
		getSupportFragmentManager().addOnBackStackChangedListener(new OnBackStackChangedListener() {
			@Override
			public void onBackStackChanged() {
				// TODO Auto-generated method stub
				for (int i = 0; i < mFragments.size(); i++) {
					if (!mFragments.get(i).isHidden()) {
						mCurrentFragment = mFragments.get(i);
					}
				}
			}
		});
		
		mFragmentHome = FragmentHome.getInstance(this, mFragmentHomeListener);
		getSupportFragmentManager().beginTransaction().add(R.id.fragment_container, mFragmentHome).commit();
		mCurrentFragment = mFragmentHome;
		
		mFragmentListHotels = FragmentListHotels.getInstance(this);
		getSupportFragmentManager().beginTransaction().add(R.id.fragment_container, mFragmentListHotels).hide(mFragmentListHotels).commit();
		
		
		mFragments = new ArrayList<Fragment>();
		mFragments.add(mFragmentHome);
		mFragments.add(mFragmentListHotels);
		
		
		
	}
	
	FragmentHomeListener mFragmentHomeListener = new FragmentHomeListener() {
		@Override
		public void onChangeFragment(String fragmentName) {
			// TODO Auto-generated method stub
			if (fragmentName.equals(NameSpace.FRAGMENT_SEARCH_HOTEL)) {
				getSupportFragmentManager()
					.beginTransaction()
					.setCustomAnimations(R.anim.slide_right_to_left_in, R.anim.slide_right_to_left_out, R.anim.slide_left_to_right_in, R.anim.slide_left_to_right_out)
					.hide(mCurrentFragment)
					.show(mFragmentListHotels)
					.addToBackStack(null)
					.commit();
				mFragmentListHotels.loadLocation();
				mCurrentFragment = mFragmentListHotels;
			}
		}
	};
	
	
	
	
	
	
	

}
