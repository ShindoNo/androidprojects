package com.shindo.francetv;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.widget.TextView;

public class WelcomeActivity extends Activity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
//		showSplash();
		
		setContentView(R.layout.dialog_splash);
		try {
			PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
			String version = packageInfo.versionName;
			((TextView) findViewById(R.id.tv_version)).setText("GenTV version " + version);
		} catch (NameNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				Intent intent = new Intent(getApplicationContext(), MainActivity.class);
				startActivity(intent);
				finish();				
			}
		}, 700);
		
	}

//	private void showSplash() {
//		final Dialog dialog = new Dialog(this, android.R.style.Theme_Translucent_NoTitleBar);
//		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
////		dialog.getWindow().getAttributes().windowAnimations = R.style.SplashDialogAnimation;
//		dialog.setContentView(R.layout.dialog_splash);
//
//		try {
//			PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
//			String version = packageInfo.versionName;
//			((TextView) dialog.findViewById(R.id.tv_version)).setText("GenTV version " + version);
//		} catch (NameNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		dialog.show();
//
//		new Handler().postDelayed(new Runnable() {
//			@Override
//			public void run() {
//				// TODO Auto-generated method stub
//				try {
//					dialog.dismiss();
//					Intent intent = new Intent(getApplicationContext(), MainActivity.class);
//					startActivity(intent);
//					finish();
//				} catch (Exception e) {
//					// TODO: handle exception
//					e.printStackTrace();
//				}
//			}
//		}, 700);
//	}
	
	
	
}
