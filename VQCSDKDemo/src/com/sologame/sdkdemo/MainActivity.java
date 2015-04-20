package com.sologame.sdkdemo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;

import com.sologame.sdk.DialogLogin.OnLoginListener;
import com.sologame.sdk.DialogPayment.OnPayListener;
import com.sologame.sdk.SoloSDK;
import com.sologame.sdk.SoloSDK.OnLogoutListener;
import com.sologame.sdk.util.MyLog;
import com.sologame.sdk.util.PushTools;

public class MainActivity extends Activity {

	public static final String APP_ID = "17541234";
	public static final String SECRET_KEY = "DF37A522-0264-FFAF-1994-HFGFTYJGRR";
	public static final String FACEBOOK_APP_ID = "812762648790817";

	public static final String SERVER_ID = "1"; // for test
	public static final String CHARACTER_ID = "1"; // for test

	SoloSDK mSoloSDK;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		initUI();
		mSoloSDK = new SoloSDK(this, APP_ID, SECRET_KEY, FACEBOOK_APP_ID);
		mSoloSDK.login(mOnLoginListener);
		MyLog.log("onCreateeeeeeeeee");
		// your code
	}

	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		mSoloSDK.onResume();
	}

	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		mSoloSDK.onPause();
	}

	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		mSoloSDK.onDestroy();
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		super.onActivityResult(requestCode, resultCode, data);
		mSoloSDK.onActivityResult(requestCode, resultCode, data);
	}

	public void initUI() {
		findViewById(R.id.btn_login).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mSoloSDK.login(mOnLoginListener);
			}
		});

		findViewById(R.id.btn_logout).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mSoloSDK.logout(mOnLogoutListener);
			}
		});

		findViewById(R.id.btn_open_dashboard).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mSoloSDK.openDashboard(mOnLogoutListener);
			}
		});

		findViewById(R.id.btn_open_payment).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mSoloSDK.openPayment(mOnPayListener);
			}
		});

		findViewById(R.id.btn_notification).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Bundle bundle = new Bundle();
				bundle.putString("title", "Test notification");
				bundle.putString("message", "This is content of notification");
				PushTools.generateNotification(MainActivity.this, bundle);
			}
		});

		findViewById(R.id.btn_show_dashboard_button).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mSoloSDK.showDashboardButton(mOnLogoutListener);
			}
		});

		findViewById(R.id.btn_hide_dashboard_button).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mSoloSDK.hideDashboardButton();
			}
		});

	}

	OnLoginListener mOnLoginListener = new OnLoginListener() {
		@Override
		public void onSuccessful(String userId, String userName, String accessToken) {
			// TODO Auto-generated method stub
			mSoloSDK.setServerId(SERVER_ID);
			mSoloSDK.setCharacterId(CHARACTER_ID);
			Toast.makeText(getBaseContext(),
					"Login successful, user_id=" + userId + "; username=" + userName + "; accesstoken=" + accessToken,
					Toast.LENGTH_SHORT).show();
		}
	};

	OnLogoutListener mOnLogoutListener = new OnLogoutListener() {
		@Override
		public void onLogoutSuccessful() {
			// TODO Auto-generated method stub

		}
	};

	OnPayListener mOnPayListener = new OnPayListener() {
		@Override
		public void onpaySuccessful() {
			// TODO Auto-generated method stub
			Toast.makeText(getBaseContext(), "Payment successful", Toast.LENGTH_SHORT).show();
		}
	};

}
