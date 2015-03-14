package com.shjndo.instaliker;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;

public class FragmentMore extends Fragment {
	
	Context mContext;
	View mainLayout;
	OnLogoutListener mOnLogoutListener;
	
	public static FragmentMore getNewInstance(Context context, OnLogoutListener onLogoutListener) {
		FragmentMore fragmentMore = new FragmentMore();
		fragmentMore.setData(context, onLogoutListener);
		return fragmentMore;
	}
	
	public void setData(Context context, OnLogoutListener onLogoutListener) {
		mContext = context;
		mOnLogoutListener = onLogoutListener;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mainLayout = inflater.inflate(R.layout.fragment_more, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	public void initUI() {
		mainLayout.findViewById(R.id.btn_rate).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(Intent.ACTION_VIEW);
				intent.setData(Uri.parse("market://details?id=" + mContext.getPackageName()));
				mContext.startActivity(intent);	
			}
		});
		
		mainLayout.findViewById(R.id.btn_sign_out).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				logout(mContext, mOnLogoutListener);
			}
		});
	}
	
	public static void logout(Context context,OnLogoutListener onLogoutListener) {
		Util.saveAccessToken(context, "");
		
		CookieSyncManager.createInstance(context); 
	    CookieManager cookieManager = CookieManager.getInstance();
	    cookieManager.removeAllCookie();	
	    
	    onLogoutListener.logoutSuccessful();
	}
	
	public interface OnLogoutListener {
		public void logoutSuccessful();
	}

}
