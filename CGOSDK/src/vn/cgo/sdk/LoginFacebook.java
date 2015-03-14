package vn.cgo.sdk;

import java.util.Arrays;

import org.json.JSONObject;

import vn.cgo.sdk.utils.NameSpace;
import vn.cgo.sdk.utils.ServiceHelper;
import vn.cgo.sdk.utils.Utils;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.util.Log;
import android.widget.Toast;

import com.facebook.Session;
import com.facebook.Session.OpenRequest;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;

public class LoginFacebook {
	
	Context mContext;
	ProgressDialog mProgressDialog;
	OnLoginFacebookListener mOnLoginFacebookListener;
	boolean pendingRequestFacebookAccessToken;
	
	public LoginFacebook(Context context, OnLoginFacebookListener onLoginFacebookListener) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mOnLoginFacebookListener = onLoginFacebookListener;
		
		mProgressDialog = new ProgressDialog(mContext);
		mProgressDialog.setMessage("Loading...");
	}
	
	public void login() {
		mProgressDialog.show();
		
		if (Session.getActiveSession() == null) {
			Session session = Session.openActiveSessionFromCache(mContext);
			if (session == null) {
				pendingRequestFacebookAccessToken = true;
				
				OpenRequest openRequest = new OpenRequest((Activity)mContext);
				openRequest.setPermissions(Arrays.asList("basic_info", "email"));
				openRequest.setCallback(callback);				
				
				session = new Session(mContext);
				Session.setActiveSession(session);
				session.openForRead(openRequest);
			} else {
				loginWithFacebookAccessToken();
			}
		} else {
			loginWithFacebookAccessToken();
		}
		
	}
	
	StatusCallback callback = new StatusCallback() {
		@Override
		public void call(Session session, SessionState state, Exception exception) {
			// TODO Auto-generated method stub
			Log.e("cgo", "LoginFacebook : StatusCallback.call(), State=" + state + "; pendingRequestUserInfo=" + pendingRequestFacebookAccessToken);
			
			if (exception != null) {
				Log.e("cgo", "StatusCallback.call(), Facebook Exception=" + exception.getMessage());
				if (exception.getMessage() != null) {
					Toast.makeText(mContext, exception.getMessage(), Toast.LENGTH_SHORT).show();
				}
			}
			
			if (state.equals(SessionState.OPENED) && pendingRequestFacebookAccessToken) {
				pendingRequestFacebookAccessToken = false;
				loginWithFacebookAccessToken();
			}
			
		}
	};	
	
	public void loginWithFacebookAccessToken() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = Utils.getDefaultParams(mContext)
								+ "&type=2"
								+ "&big4_accesstoken=" + Session.getActiveSession().getAccessToken()
								+ "&big4_accesstoken_expire=" + Session.getActiveSession().getExpirationDate().getTime();
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
								mOnLoginFacebookListener.onLoginFacebookSuccessful();
							} else if (status.equals("2")) {
								String email = responseJSON.getString(NameSpace.email);
								mOnLoginFacebookListener.onLoginFacebookNeedConnectCGO(email, Session.getActiveSession().getAccessToken());
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
	
	public static void logoutFacebook() {
		if (Session.getActiveSession() != null) {
			Session.getActiveSession().closeAndClearTokenInformation();
		}
		Session.setActiveSession(null);
	}	
	
	public interface OnLoginFacebookListener{
		public void onLoginFacebookSuccessful();
		public void onLoginFacebookNeedConnectCGO(String email, String facebookAccessToken);
	}
	
	/**
	 * ---------------------- Login Facebook when share (not login before) ----------------------
	 * ---------------------- Login Facebook when share (not login before) ----------------------
	 * ---------------------- Login Facebook when share (not login before) ---------------------- 
	 */
	
	public static void loginFacebook(final Context context, final OnLoginFacebookListener onLoginFacebookListener) {
		StatusCallback callback = new StatusCallback() {
			@Override
			public void call(Session session, SessionState state, Exception exception) {
				// TODO Auto-generated method stub
				Log.e("cgo", "LoginFacebook : StatusCallback.call(), State=" + state);
				
				if (exception != null) {
					Log.e("cgo", "StatusCallback.call(), Facebook Exception=" + exception.getMessage());
					if (exception.getMessage() != null) {
						Toast.makeText(context, exception.getMessage(), Toast.LENGTH_SHORT).show();
					}
				}
				
				if (state.equals(SessionState.OPENED) ) {
					onLoginFacebookListener.onLoginFacebookSuccessful();
				}
			}
		};
		
		if (Session.getActiveSession() == null) {
			Session session = Session.openActiveSessionFromCache(context);
			if (session == null) {
				
				OpenRequest openRequest = new OpenRequest((Activity)context);
				openRequest.setPermissions(Arrays.asList("basic_info", "email"));
				openRequest.setCallback(callback);				
				
				session = new Session(context);
				Session.setActiveSession(session);
				session.openForRead(openRequest);
			} else {
				onLoginFacebookListener.onLoginFacebookSuccessful();
			}
		} else {
			onLoginFacebookListener.onLoginFacebookSuccessful();
		}		
	}

}
