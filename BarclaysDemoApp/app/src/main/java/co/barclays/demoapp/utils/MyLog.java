package co.barclays.demoapp.utils;

import android.util.Log;

/**
 * Created by leanh215 on 12/29/14.
 */
public class MyLog {
	
	static boolean enableLog = true;

    public static void log(String message) {
    	if (enableLog) {
    		Log.e("stk", message);	
    	}
    }
}
