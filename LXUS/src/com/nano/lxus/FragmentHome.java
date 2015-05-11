package com.nano.lxus;


import com.nano.lxus.util.NameSpace;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;

public class FragmentHome extends Fragment{
	
	Activity mActivity;
	FragmentHomeListener mFragmentHomeListener;
	
	public static FragmentHome getInstance(Activity activity, FragmentHomeListener fragmentHomeListener) {
		FragmentHome fragmentHome = new FragmentHome();
		fragmentHome.init(activity, fragmentHomeListener);
		return fragmentHome;
	}
	
	public void init(Activity activity, FragmentHomeListener fragmentHomeListener) {
		mActivity = activity;
		mFragmentHomeListener = fragmentHomeListener;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		return inflater.inflate(R.layout.fragment_home, container, false);
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	public void initUI() {
		
		getView().findViewById(R.id.btn_find_hotel).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mFragmentHomeListener.onChangeFragment(NameSpace.FRAGMENT_SEARCH_HOTEL);
			}
		});
		
		getView().findViewById(R.id.btn_checkin_hotel).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mFragmentHomeListener.onChangeFragment(NameSpace.FRAGMENT_CHECKIN_HOTEL);
			}
		});
		
		
	}
	
	public interface FragmentHomeListener {
		public void onChangeFragment(String fragmentName);
	}

}
