package vn.cgo.sdk;

import org.json.JSONObject;

import vn.cgo.sdk.utils.NameSpace;
import vn.cgo.sdk.utils.ServiceHelper;
import vn.cgo.sdk.utils.Utils;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.plus.PlusClient;

public class LoginGoogle {
	
	private static final int REQUEST_CODE_RESOLVE_ERR = 9000;
	boolean pendingGetGoogleAccessToken;
    ProgressDialog mConnectionProgressDialog;
    PlusClient mPlusClient;
    ConnectionResult mConnectionResult;
	Context mContext;
	OnLoginGoolgeListener mOnLoginGoolgeListener;
	
	public LoginGoogle(Context context, OnLoginGoolgeListener onLoginGoolgeListener) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mOnLoginGoolgeListener = onLoginGoolgeListener;
		
//		mPlusClient = new PlusClient.Builder(mContext, connectionCallbacks, onConnectionFailedListener)
//			.setVisibleActivities("http://schemas.google.com/AddActivity", "http://schemas.google.com/BuyActivity")
//			.setScopes(Scopes.PLUS_LOGIN, "https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/userinfo.profile")
//			.build();
		
		mPlusClient = new PlusClient.Builder(mContext, connectionCallbacks, onConnectionFailedListener)
		.setActions("http://schemas.google.com/AddActivity", "http://schemas.google.com/BuyActivity")
		.setScopes(Scopes.PLUS_LOGIN, "https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/userinfo.profile")
		.build();		
		
		mConnectionProgressDialog = new ProgressDialog(mContext);
		mConnectionProgressDialog.setMessage("Loading...");
	}
	
	public void login() {
		mConnectionProgressDialog.show();
		
		mPlusClient.connect();
		pendingGetGoogleAccessToken = true;
	}
	
	ConnectionCallbacks connectionCallbacks = new ConnectionCallbacks() {
		@Override
		public void onDisconnected() {
			// TODO Auto-generated method stub
			Log.e("cgo", "ConnectionCallbacks onDisconnected()");
		}
		
		@Override
		public void onConnected(Bundle arg0) {
			// TODO Auto-generated method stub
			String accountName = mPlusClient.getAccountName();
			Log.e("cgo", "ConnectionCallbacks onConnected(); accountName=" + accountName);
			
//	        Toast.makeText(mContext, accountName + " is connected.", Toast.LENGTH_LONG).show();
	        
	        if (pendingGetGoogleAccessToken) {
	        	getGoolgeAccessToken();	
	        }
		}
	};
	
	OnConnectionFailedListener onConnectionFailedListener = new OnConnectionFailedListener() {
		@Override
		public void onConnectionFailed(ConnectionResult connectionResult) {
			// TODO Auto-generated method stub
			Log.e("cgo", "OnConnectionFailedListener onConnectionFailed()");
			
			if (connectionResult.hasResolution()) {
				try {
					connectionResult.startResolutionForResult((Activity)mContext, REQUEST_CODE_RESOLVE_ERR);
				} catch (SendIntentException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					mPlusClient.connect();
				}
			}
			
			mConnectionResult = connectionResult;
		}
	};	
	
	public void onActivityResult(int requestCode, int resultCode, android.content.Intent data) {
		if (requestCode == REQUEST_CODE_RESOLVE_ERR && resultCode == Activity.RESULT_OK) {
			mConnectionResult = null;
			mPlusClient.connect();
		}
	};
	
	public void getGoolgeAccessToken() {
		pendingGetGoogleAccessToken = false;
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					String googleAccessToken = GoogleAuthUtil.getToken(mContext, mPlusClient.getAccountName(), "oauth2:" + Scopes.PLUS_LOGIN + " https://www.googleapis.com/auth/userinfo.email" + " https://www.googleapis.com/auth/userinfo.profile");
					loginWithGoogleAccessToken(googleAccessToken);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}						
			}
		}).start();		
	}
	
	public void loginWithGoogleAccessToken(final String goolgeAccessToken) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = Utils.getDefaultParams(mContext)
								+ "&type=3"
								+ "&big4_accesstoken=" + goolgeAccessToken
								+ "&big4_accesstoken_expire=";
				final String response = ServiceHelper.post(NameSpace.API_LOGIN_FACEBOOK_GOOGLE, params);
				
				((Activity) mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mConnectionProgressDialog.dismiss();
						
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
								mOnLoginGoolgeListener.onLoginSuccessful();
							} else if (status.equals("2")) {
								String email = responseJSON.getString(NameSpace.email);
								mOnLoginGoolgeListener.onLoginGoolgeNeedConnectCGO(email, goolgeAccessToken);
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
	
	public void logout() {
		if (mPlusClient.isConnected()) {
			mPlusClient.clearDefaultAccount();
		}
	}
	
	interface OnLoginGoolgeListener {
		public void onLoginSuccessful();
		public void onLoginGoolgeNeedConnectCGO(String email, String googleAccessToken);
	}
	
}
