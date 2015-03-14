package com.shjndo.instaliker;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.preference.PreferenceManager;
import android.view.inputmethod.InputBinding;

public class Util {
	public static void saveAccessToken(Context context, String accessToken) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_ACCESS_TOKEN, accessToken).commit();
	}
	
	public static String getAccessToken(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_ACCESS_TOKEN, "");
	}
	
	public static void saveCoins(Context context, int coins) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(NameSpace.SHARED_PREF_COINS, coins).commit();
	}
	
	public static int getCoins(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getInt(NameSpace.SHARED_PREF_COINS, 0);
	}
	
	public static void saveUserInfo(Context context, String userInfo) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_USER_INFO, userInfo).commit();
	}
	
	public static String getUserInfo(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_USER_INFO, "");
	}
	
	public static void saveClientID(Context context, String client_id) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_CLIENT_ID, client_id).commit();		
	}
	
	public static String getClientID(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_CLIENT_ID, "");
	}
	
	public static void saveClientSecret(Context context, String client_secret) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_CLIENT_SECRET, client_secret).commit();		
	}
	
	public static String getClientSecret(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_CLIENT_SECRET, "");
	}	
	
	public static void showErrorDialog(Context context, String message, String button, DialogInterface.OnClickListener onClickListener) {
		AlertDialog.Builder builder = new AlertDialog.Builder(context);
		builder.setMessage(message).setPositiveButton(button, onClickListener);
		builder.create().show();
	}
	
	
	
	public static void broadcastCoin(Context context, int coins) {
		Intent intent = new Intent(NameSpace.ACTION_BROADCAST_COIN);
		intent.putExtra(NameSpace.EXTRA_COINS, coins);
		context.sendBroadcast(intent);
	}
}
