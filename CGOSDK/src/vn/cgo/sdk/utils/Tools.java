package vn.cgo.sdk.utils;

import android.content.Context;
import android.preference.PreferenceManager;

public class Tools {
	
	public static int getInt(Context context, String key) {
		return PreferenceManager.getDefaultSharedPreferences(context).getInt(key, 0);
	}
	
	public static void saveInt(Context context, String key, int value) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(key, value).commit();
	}
	
}
