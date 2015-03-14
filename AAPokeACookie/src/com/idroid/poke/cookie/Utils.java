package com.idroid.poke.cookie;

import android.content.Context;
import android.preference.PreferenceManager;

public class Utils {
	public static final String SHARED_PREF_BEST_SCORE = "shared_pref_best_score";
	public static final String EASY_MODE = "easy_mode";
	public static final String HARD_MODE = "hard_mode";
	
	public static void saveBestScore(Context context, int bestScore, String mode) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(mode, bestScore).commit();
	}
	
	public static int getBestScore(Context context, String mode) {
		return PreferenceManager.getDefaultSharedPreferences(context).getInt(mode, 0);
	}
}
