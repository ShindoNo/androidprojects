package com.hdviet.mball.util;

import com.hdviet.mball.entity.User;

import android.content.Context;
import android.preference.PreferenceManager;

public class Utils {
	
	public static void saveString(Context context, String key,String value) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(key, value).commit();
	};
	
	public static String getString(Context context, String key) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(key, null);
	}
	
	// add session param to specific url
	public static String addSession(String url) {
		// if user not log in yet
		if (User.getInstance() == null) {
			return url;
		}
		
		// if session id already added to url
		if (url.contains("session_id")) {
			return url;
		}
		
		if (url.contains("?")) {
			url = url + "&session_id=" + User.getInstance().getSession() + "&user_id=" + User.getInstance().getUserId();
		} else {
			url = url + "?session_id=" + User.getInstance().getSession() + "&user_id=" + User.getInstance().getUserId();
		}

		return url;
	}

}
