package com.shindo.francetv;

import android.content.Context;
import android.preference.PreferenceManager;

public class Utils {

	public static void setDataVersion(Context context, int dataVersion) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(NameSpace.SHARED_PREF_DATA_VERSION, dataVersion).commit();
	}
	
	public static int getDataVersion(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getInt(NameSpace.SHARED_PREF_DATA_VERSION, 0);
	}
	
	public static void setData(Context context, String data) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_DATA, data).commit();
	}
	
	public static String getData(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_DATA, "");
	}
	
	
}
