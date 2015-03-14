package info.nkl.tools;

import android.util.Log;

public class Logger {
	public static final boolean isDebug = false;
	
	public static void e(String msg) {
		if (isDebug) {
			Log.e("stk", msg);
		}
	}
}
