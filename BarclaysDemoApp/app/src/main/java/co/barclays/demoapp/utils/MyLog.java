package co.barclays.demoapp.utils;

import android.util.Log;

/**
 * Created by leanh215 on 7/20/15.
 */
public class MyLog {
	
	static boolean enableLog = true; // set true to enable log, false to disable log

    public static void log(String message) {
    	if (enableLog) {
    		Log.e("stk", message);	
    	}
    }
}
