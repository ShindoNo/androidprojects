package vn.cgo.demo;

import vn.cgo.sdk.utils.NameSpace;
import vn.cgo.sdk.utils.ServiceHelper;
import vn.cgo.sdk.utils.Utils;

import com.facebook.android.Util;

import android.app.Application;
import android.os.Handler;
import android.util.Log;
import android.widget.Toast;

public class CGOApplication extends Application{
	@Override
	public void onCreate() {
		// TODO Auto-generated method stub
		super.onCreate();
		
		String logInstall = Utils.getData(getApplicationContext(), NameSpace.SHARED_PREF_LOG_INSTALL);
		if (logInstall == null) {
			new Handler().postDelayed(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					new Thread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							String response = ServiceHelper.get(NameSpace.API_LOG_INSTALL, Utils.getDefaultParams(getApplicationContext()));
							Utils.saveData(getApplicationContext(), NameSpace.SHARED_PREF_LOG_INSTALL, response);							
						}
					}).start();
				}
			}, 10000);
		} else {
			Log.e("cgo", "Logged Install");
		}
		
	}
	

}
