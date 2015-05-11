package com.nano.lxus.util;

import android.util.Log;

/**
 * Created by leanh215 on 12/29/14.
 */
public class MyLog {

    public static void log(String message) {
        Log.e("stk", message);
    }

    public static void logInfo(String message) {
        Log.i("stk", message);
    }

}
