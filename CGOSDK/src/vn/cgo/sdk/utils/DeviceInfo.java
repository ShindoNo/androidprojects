package vn.cgo.sdk.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.util.DisplayMetrics;
import android.view.WindowManager;

public class DeviceInfo {
	public static String getPhoneModel() {
		return android.os.Build.DEVICE;
	}

	public static String getBrand() {
		return android.os.Build.BRAND;
	}

	public static String getProduct() {
		return android.os.Build.PRODUCT;
	}

	public static String getAndroidVersion() {
		return android.os.Build.VERSION.RELEASE;
	}

	public static String getTotalMemSize() {
		StatFs memStatus = new StatFs(Environment.getExternalStorageDirectory().getPath());
		return ((long) memStatus.getBlockSize() * (long) memStatus.getBlockCount()) + "";
	}

	public static String getAvailableMemSize() {	        
		StatFs memStatus = new StatFs(Environment.getExternalStorageDirectory().getPath());
		return ((long) memStatus.getBlockSize() * (long) memStatus.getAvailableBlocks()) + "";
	}
	
	public static String getResolution(Context c) {
		DisplayMetrics displayMetrics = new DisplayMetrics();
		((WindowManager) c.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(displayMetrics);
		return displayMetrics.widthPixels + "x" + displayMetrics.heightPixels;
	}
	
	public static String getScale(Context context) {
		WindowManager windowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
		DisplayMetrics metrics = new DisplayMetrics();
		windowManager.getDefaultDisplay().getMetrics(metrics);
		return metrics.density + "";
	}
	
	public static String getDeviceID(Context context) {
		String deviceId = Secure.getString(context.getContentResolver(), Secure.ANDROID_ID);
		return deviceId;
	}
	
	public static String getMACAddress(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
		WifiInfo wifiInfo = wifiManager.getConnectionInfo();
		String macAddr = wifiInfo.getMacAddress();
		return macAddr;
	}

	@SuppressLint("NewApi")
	public static String getTotalRAMSize(Context context) {
		int apiLevel = android.os.Build.VERSION.SDK_INT;
		if (apiLevel < 16) {
			return "";
		}
		
		MemoryInfo mi = new MemoryInfo();
		ActivityManager activityManager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		activityManager.getMemoryInfo(mi);
		
		return mi.totalMem + "";
	}
	
	public static String getAvailableRAMSize(Context context) {
		MemoryInfo mi = new MemoryInfo();
		ActivityManager activityManager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		activityManager.getMemoryInfo(mi);
		return mi.availMem + "";
	}
	
//	public static String getDeviceInfo(Context context) {
//		try {
//			JSONObject deviceInfo = new JSONObject();
//			deviceInfo.put("app_version_code", getAppVersionCode(context));
//			deviceInfo.put("app_version_name", getAppVersionName(context));
//			deviceInfo.put("phone_model", getPhoneModel());
//			deviceInfo.put("brand", getBrand());
//			deviceInfo.put("product", getProduct());
//			deviceInfo.put("android_version", getAndroidVersion());
//			deviceInfo.put("total_mem_size", getTotalMemSize());
//			deviceInfo.put("available_mem_size", getAvailableMemSize());
//			deviceInfo.put("total_ram_size", getTotalRAMSize(context));
//			deviceInfo.put("available_ram_size", getAvailableRAMSize(context));
//			deviceInfo.put("resolution", getResolution(context));
//			deviceInfo.put("device_id", getDeviceID(context));
//			deviceInfo.put("mac_address", getMACAddress(context));
//			return URLEncoder.encode(deviceInfo.toString(), "utf-8");
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//			return "";
//		}
//	}
	
}
