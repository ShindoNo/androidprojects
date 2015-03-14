package vn.cgo.sdk;

import java.net.URLDecoder;

import vn.cgo.sdk.utils.Utils;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;

public class InstallReceiver extends BroadcastReceiver{
	public static final String REFERRER_VALUE = "referrer_value";
	public static final String LOG_INSTALL_SUCCESSFUL = "log_install_successful";
	
	
	@Override
	public void onReceive(Context context, Intent intent) {
		// TODO Auto-generated method stub
		Log.e("cgo", "InstallReceiver : onReceiveeeeeeeeeeeeeee");
		
		try {
			// get referrer value
			Bundle extras = intent.getExtras();
			String referrerValue = extras.getString("referrer");
			Log.e("cgo", "InstallReceiver : referrerValue=" + referrerValue);
			
			SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
			sharedPreferences.edit().putString(REFERRER_VALUE, referrerValue).commit();
			
			Uri uri = Uri.parse(URLDecoder.decode("http://vn.cgo.sdk?" + referrerValue, "UTF-8"));
			
			String clientName = uri.getQueryParameter("clientname");
			String subClient = uri.getQueryParameter("subclient");
			String otherParams = uri.getQueryParameter("otherparams");
			
			Utils.saveClientName(context, clientName);
			Utils.saveSubClient(context, subClient);
			Utils.saveOtherParams(context, otherParams);
			
			Log.e("cgo", "clientname=" +  clientName + "; subClient=" + subClient + "; otherParams=" + otherParams);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}	
}
