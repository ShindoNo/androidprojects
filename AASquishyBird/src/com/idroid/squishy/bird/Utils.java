package com.idroid.squishy.bird;

import android.content.Context;
import android.preference.PreferenceManager;

public class Utils {
	
	private static String SHARED_PREF_BEST_SCORE = "best_score";
	private static String SHARED_PREF_CURRENT_SCORE = "current_score";

	public static void saveBestScore(Context context, int bestScore) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(SHARED_PREF_BEST_SCORE, bestScore).commit();
	}
	
	public static int getBestScore(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getInt(SHARED_PREF_BEST_SCORE, 0);
	}
	
	public static void saveCurrentScore(Context context, int bestScore) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(SHARED_PREF_CURRENT_SCORE, bestScore).commit();
	}
	
	public static int getCurrentScore(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getInt(SHARED_PREF_CURRENT_SCORE, 0);
	}	
	
	
}
