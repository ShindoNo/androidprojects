package com.example.testandroid;

import vn.vccorp.rongbay.network.MyLog;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class TestService extends Service{
	
	public static final String ACTION_LOGIN = "ACTION_LOGIN";
	
	public static String startTime;

	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public void onCreate() {
		// TODO Auto-generated method stub
		super.onCreate();
		MyLog.log("TestService onCreate()");
	}
	
	
	
	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		// TODO Auto-generated method stub
		MyLog.log("TestService onStartCommand(); intent=" + intent);
		
		if (intent != null) {
			startTime = intent.getStringExtra("TIME");
			MyLog.log("saved startTime=" + startTime);
		} else {
			MyLog.log("startTime=" + startTime);
		}
		
//		try {
//			Thread.sleep(1000);
//			if (intent != null) {
//				MyLog.log("sleep 1000ms at " + intent.getLongExtra("TIME", 0));
//			}
//		} catch (InterruptedException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		
//		return super.onStartCommand(intent, flags, startId);
		return Service.START_STICKY;
//		return Service.START_REDELIVER_INTENT;
	}
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		MyLog.log("TestService onDestroy()");
	}

}
