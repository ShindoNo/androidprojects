package vn.cgo.sdk;

import org.json.JSONObject;

import vn.cgo.sdk.utils.NameSpace;
import vn.cgo.sdk.utils.ServiceHelper;
import vn.cgo.sdk.utils.Utils;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.Toast;

import com.android.zing.ZME_Base;
import com.android.zing.ZME_Config;
import com.android.zing.ZME_DialogListener;
import com.android.zing.ZME_Environment;
import com.android.zing.ZME_Error;
import com.android.zing.dialog.ZME_DialogError;

public class LoginZing {
	private String APP_NAME   = "";
	private String APP_ID     = "";
	private String APP_SECRET = "";
	
	Context mContext;
	OnLoginZingListener mOnLoginZingListener;
	ProgressDialog mProgressDialog;
	
	ZME_Config zingConfig;
	ZME_Base zingBase;
	
	public LoginZing(Context context, OnLoginZingListener onLoginZingListener) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mOnLoginZingListener = onLoginZingListener;
		mProgressDialog = new ProgressDialog(mContext);
		mProgressDialog.setMessage("Logging in...");
	}
	
	public void login() {
		if (Utils.getGameInfo(mContext).equals("")) {
			// if game info doest not exist, download it by init CGO and try after 1 second
			new CGO((Activity) mContext);
			
			new Handler().postDelayed(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					login();
				}
			}, 1000);
			
			return;
		}
		
		try {
			JSONObject gameInfoJSON = new JSONObject(Utils.getGameInfo(mContext));
			APP_NAME = gameInfoJSON.getString("zing_app_name");
			APP_ID = gameInfoJSON.getString("zing_key");
			APP_SECRET = gameInfoJSON.getString("zing_secret");
			
			Log.e("cgo", "zing name=" + APP_NAME + "; zing id=" + APP_ID + "; zing secret=" + APP_SECRET);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		zingConfig = new ZME_Config(APP_NAME, APP_ID, APP_SECRET, ZME_Environment.PRODUCTION, true);
		zingBase = new ZME_Base(zingConfig);
		ZME_DialogListener zingListener = new ZME_DialogListener() {
			@Override
			public void onZmeError(ZME_Error arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onError(ZME_DialogError arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onComplete(Bundle arg0) {
				// TODO Auto-generated method stub
				loginWithZingAccessToken();
			}
			
			@Override
			public void onCancel() {
				// TODO Auto-generated method stub
				login(); // relogin, user can not cancel this action
			}
		};
		
		zingBase.authorize((Activity)mContext, Double.toString(Math.random()), zingListener);
	}
	
	public void loginWithZingAccessToken() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = Utils.getDefaultParams(mContext)
								+ "&type=6"
								+ "&big4_accesstoken=" + zingBase.getAccessToken()
								+ "&big4_accesstoken_expire=" + zingBase.getAccessExpires();
				final String response = ServiceHelper.post(NameSpace.API_LOGIN_FACEBOOK_GOOGLE, params);
				
				((Activity) mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (response == null) {
							Utils.checkInternetAndToast(mContext);
							return;
						}
						
						try {
							JSONObject responseJSON = new JSONObject(response);
							String status = responseJSON.getString(NameSpace.status);
							if (status.equals("1")) {
								String accessToken = responseJSON.getString(NameSpace.access_token);
								Utils.saveAccessToken(mContext, accessToken);
								mOnLoginZingListener.onLoginZingSuccessful();
							} else if (status.equals("2")) {
								String email = responseJSON.getString(NameSpace.email);
								mOnLoginZingListener.onLoginZingNeedConnectCGO(email, zingBase.getAccessToken());
								String msg = responseJSON.getString("msg");
								Toast.makeText(mContext, msg, Toast.LENGTH_SHORT).show();								
							} else {
								String msg = responseJSON.getString("msg");
								Toast.makeText(mContext, msg, Toast.LENGTH_SHORT).show();								
							}
						} catch (Exception e) {
							// TODO: handle exception
							e.printStackTrace();
						}
					}
				});
			}
		}).start();				
	}	
	
	public static void logout(Context context) {
		try {
			JSONObject gameInfoJSON = new JSONObject(Utils.getGameInfo(context));
			String APP_NAME = gameInfoJSON.getString("zing_app_name");
			String APP_ID = gameInfoJSON.getString("zing_key");
			String APP_SECRET = gameInfoJSON.getString("zing_secret");
			
			ZME_Config zingConfig = new ZME_Config(APP_NAME, APP_ID, APP_SECRET, ZME_Environment.PRODUCTION, true);
			ZME_Base zingBase = new ZME_Base(zingConfig);
			zingBase.logout(context);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	interface OnLoginZingListener {
		public void onLoginZingSuccessful();
		public void onLoginZingNeedConnectCGO(String email, String zingAccessToken);
	}

}
