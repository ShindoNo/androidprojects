package com.idroid.squishybird.special;

import android.content.Context;
import android.preference.PreferenceManager;

public class Utils {
	
	private static String SHARED_PREF_BEST_SCORE = "best_score";
	private static String SHARED_PREF_CURRENT_SCORE = "current_score";
	private static String SHARED_PREF_CURRENT_BIRD = "current_bird";
	private static String SHARED_PREF_CURRENT_SCENE = "current_scene";

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
	
	public static String getCurrentBird(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(SHARED_PREF_CURRENT_BIRD, "");
	}
	
	public static void setCurrentBird(Context context, String currentBird) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(SHARED_PREF_CURRENT_BIRD, currentBird).commit();
	}
	
	public static String getCurrentScene(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(SHARED_PREF_CURRENT_SCENE, "");
	}
	
	public static void setCurrentScene(Context context, String currentScene) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(SHARED_PREF_CURRENT_SCENE, currentScene).commit();
	}
	
}
