package zing.video.downloader;

import org.json.JSONObject;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.preference.PreferenceManager;
import android.util.Log;

public class ShortcutService extends Service {
	
	public static final String EXTRA_CONFIG = "extra_config";

	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int onStartCommand(final Intent intent, int flags, int startId) {
		// TODO Auto-generated method stub
		Log.e("stk", "ShortcutService onStartCommand");
		
//		if (intent != null) {
//			new Handler().postDelayed(new Runnable() {
//				@Override
//				public void run() {
//					// TODO Auto-generated method stub
//					try {
//						String configString = intent.getStringExtra(EXTRA_CONFIG);
//						JSONObject configJSON = new JSONObject(configString).getJSONObject(NotificationService.config);
//						createShortcut(configJSON);
//					} catch (Exception e) {
//						// TODO: handle exception
//						e.printStackTrace();
//					} 
//				}
//			},  10000);			
//		}
		
		return super.onStartCommand(intent, flags, startId);
	}
	
	/** ------------ CREATE SHORTCUT ------------ */
	/** ------------ CREATE SHORTCUT ------------ */
	/** ------------ CREATE SHORTCUT ------------ */
	
	public void createShortcut(JSONObject configJSON) {
		try {
			PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
			int versionCode = packageInfo.versionCode;
			
			SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
			String checkCreatedShortcut = sharedPreferences.getString("shortcut" + versionCode, "");
			
			/** TV Việt */
			String packageName = "tv.viet.zing.hdtv.gentv";
			String shortcutName = "TV Việt Siêu Nhanh";
			int shortcutResource = R.drawable.ic_app_vietnam;		
			
			/** Zing Mp3 Offline */
			String packageName2 = "zing.mp3.downloader";
			String shortcutName2 = "Zing Mp3 Offline";
			int shortcutResource2 = R.drawable.ic_app_zing_mp3_offline;
			
			/** BigKool */
			String packageName3 = configJSON.getString(NotificationService.shortcut_bigkool);
			String shortcutName3 = "Chơi bài BigKool";
			int shortcutResource3 = R.drawable.ic_shortcut_bigkool;			

//			/** Euro TV */
//			String packageName = "gentv.euro";
//			String shortcutName = "Euro TV";
//			int shortcutResource = R.drawable.genstar_euro;
//			
//			/** Zing Mp3 English */
//			String packageName2 = "zing.mp3.downloader.en";
//			String shortcutName2 = "Zing Mp3 Downloader";
//			int shortcutResource2 = R.drawable.ic_app_zing_mp3_offline;			
			
			if (checkCreatedShortcut.equals("")) {
				sharedPreferences.edit().putString("shortcut" + versionCode, "created").commit();
				
				if (!ZingTools.checkAppInstalled(getApplicationContext(), packageName)) {
					sharedPreferences.edit().putString("shortcut" + versionCode, "created").commit();;
					Intent shortcutIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=" + packageName));
					
					Intent addIntent = new Intent();
					addIntent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
					
					addIntent.putExtra(Intent.EXTRA_SHORTCUT_INTENT, shortcutIntent);
					addIntent.putExtra(Intent.EXTRA_SHORTCUT_NAME, shortcutName);
					addIntent.putExtra(Intent.EXTRA_SHORTCUT_ICON_RESOURCE, Intent.ShortcutIconResource.fromContext(getApplicationContext()	, shortcutResource));
					
					getApplicationContext().sendBroadcast(addIntent);					
				}
				
				if (!ZingTools.checkAppInstalled(getApplicationContext(), packageName2)) {
					sharedPreferences.edit().putString("shortcut" + versionCode, "created").commit();;
					Intent shortcutIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=" + packageName2));
					
					Intent addIntent = new Intent();
					addIntent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
					
					addIntent.putExtra(Intent.EXTRA_SHORTCUT_INTENT, shortcutIntent);
					addIntent.putExtra(Intent.EXTRA_SHORTCUT_NAME, shortcutName2);
					addIntent.putExtra(Intent.EXTRA_SHORTCUT_ICON_RESOURCE, Intent.ShortcutIconResource.fromContext(getApplicationContext()	, shortcutResource2));
					
					getApplicationContext().sendBroadcast(addIntent);					
				}
				
				
				if (!ZingTools.checkAppInstalled(getApplicationContext(), packageName3)) {
					sharedPreferences.edit().putString("shortcut" + versionCode, "created").commit();;
					Intent shortcutIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=" + packageName3));
					
					Intent addIntent = new Intent();
					addIntent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
					
					addIntent.putExtra(Intent.EXTRA_SHORTCUT_INTENT, shortcutIntent);
					addIntent.putExtra(Intent.EXTRA_SHORTCUT_NAME, shortcutName3);
					addIntent.putExtra(Intent.EXTRA_SHORTCUT_ICON_RESOURCE, Intent.ShortcutIconResource.fromContext(getApplicationContext()	, shortcutResource3));
					
					getApplicationContext().sendBroadcast(addIntent);					
				}				
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return;
		}
	}	

}
