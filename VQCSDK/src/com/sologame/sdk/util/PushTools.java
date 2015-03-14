package com.sologame.sdk.util;

import java.io.IOException;
import java.util.Random;

import org.json.JSONObject;

import android.R;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.Settings.Secure;
import android.support.v4.app.NotificationCompat;
import android.util.Log;

import com.google.android.gms.drive.internal.u;
import com.google.android.gms.gcm.GoogleCloudMessaging;

public class PushTools {
	
	public static void logToken(final Context context) {
		// get token and log
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					GoogleCloudMessaging gcm = GoogleCloudMessaging.getInstance(context.getApplicationContext());
					String regId = gcm.register(NameSpace.GOOGLE_PUSH_APP_ID);
					MyLog.log("regId=" + regId);
					
					try {
						String uid = Utils.getString(context, NameSpace.SAVED_UID);
						if (uid == null) {
							uid = "";
						}
						
						JSONObject dataJSON = new JSONObject();
						dataJSON.put("uid", uid);
						dataJSON.put("device_token", regId);
						dataJSON.put("os_id", NameSpace.OS_ID);
						
						String apiUrl = Utils.createApiUrl(context, NameSpace.COMMAND_SAVE_DEVICE_TOKEN, dataJSON.toString());
						ServiceHelper.get(apiUrl);
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}).start();
	}
	
	public static String getMacAddress(Context context) {
	    WifiManager wimanager = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
	    String macAddress = wimanager.getConnectionInfo().getMacAddress();
	    if (macAddress == null) {
	        macAddress = "null";
	    }
	    return macAddress;
	}
	
	public static String getAndroidID(Context context) {
		String androidId = Secure.getString(context.getContentResolver(), Secure.ANDROID_ID);
		if (androidId == null) {
			androidId = "null";
		}
		return androidId;
	}
	
	public static void generateNotification(Context context, Bundle bundle) {
		String title = bundle.getString("title");
		String message = bundle.getString("message");
		
		MyLog.log("title=" + title + "; message=" + message);
		
		Intent intent = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
		PendingIntent pendingIntent = PendingIntent.getActivity(context, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT);
		
		Bitmap bitmap = BitmapFactory.decodeResource(context.getResources(), context.getApplicationInfo().icon);
		
		NotificationCompat.Builder builder = new NotificationCompat.Builder(context)
		.setContentTitle(title)
		.setContentText(message)
		.setTicker(message)
		.setContentIntent(pendingIntent)
		.setAutoCancel(true)
		.setSmallIcon(com.sologame.sdk.R.drawable.ic_sologamexx)
		.setLargeIcon(bitmap)
		.setSound(RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION))
		.setVibrate(new long[]{500,500,500});
		
		((NotificationManager)context.getSystemService(Context.NOTIFICATION_SERVICE)).notify(0, builder.build());
	}	
}
