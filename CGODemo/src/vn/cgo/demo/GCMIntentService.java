package vn.cgo.demo;

import vn.cgo.sdk.utils.Utils;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.support.v4.app.NotificationCompat;
import android.util.Log;

import com.google.android.gcm.GCMBaseIntentService;

public class GCMIntentService extends GCMBaseIntentService {
	
	@Override
	protected String[] getSenderIds(Context context) {
		// TODO Auto-generated method stub
		String[] ids = new String[1];
		ids[0] = "412236325032";
		return ids;
	}

	@Override
	protected void onError(Context context, String arg1) {
		// TODO Auto-generated method stub
		Log.e("stk", "onError GCMBaseIntentService; string=" + arg1);
	}

	@Override
	protected void onMessage(Context context, Intent intent) {
		// TODO Auto-generated method stub
		Log.e("cgo", "onMesage GCMBaseIntentService");

		String title = intent.getExtras().getString("title");
		String message = intent.getExtras().getString("message");

		Log.e("cgo", "title=" + title + "; message=" + message);

		generateNotification(context, title, message);
	}

	@Override
	protected void onRegistered(Context context, String regId) {
		// TODO Auto-generated method stub
		Log.e("stk", "onRegistered GCMBaseIntentService; String=" + regId);
		Utils.registerDevice(context, regId);
	}

	@Override
	protected void onUnregistered(Context context, String arg1) {
		// TODO Auto-generated method stub
		Log.e("stk", "onUnregistered GCMBaseIntentService; String=" + arg1);
	}

	public static void generateNotification(Context context, String title, String message) {
		Intent intent = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
		intent.addCategory(Intent.CATEGORY_LAUNCHER);
		PendingIntent pendingIntent = PendingIntent.getActivity(context, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT);
		
		NotificationCompat.Builder builder = new NotificationCompat.Builder(context)
		.setSmallIcon(context.getApplicationInfo().icon)
		.setContentTitle(title)
		.setContentText(message)
		.setContentIntent(pendingIntent)
		.setAutoCancel(true)
		.setSound(RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION))
		.setLights(Color.GREEN, 3000, 3000)
		.setVibrate(new long[]{1000,1000,1000});
		
		((NotificationManager)context.getSystemService(Context.NOTIFICATION_SERVICE)).notify(0, builder.build());
	}	

}
