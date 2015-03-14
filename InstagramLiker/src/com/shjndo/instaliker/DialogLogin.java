package com.shjndo.instaliker;

import org.json.JSONException;
import org.json.JSONObject;

import com.idroid.lib.support.ServiceHelper;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import android.widget.Toast;

public class DialogLogin {
	public static final String CALLBACK = "instagramliker://callback";
	
	Context mContext;
	OnLoginListener mOnLoginListener;
	Dialog mDialog;
	ProgressDialog mProgressDialog;
	
	public DialogLogin(Context context, OnLoginListener onLoginListener) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mOnLoginListener = onLoginListener;
		mProgressDialog = new ProgressDialog(mContext);
		mProgressDialog.setTitle("");
		mProgressDialog.setMessage("Logging in...");
		
		checkAccessToken();
	}
	
	public void checkAccessToken() {
		if (Util.getAccessToken(mContext).equals("")) {
			showDialogWelcome();
		} else {
			getUserInfo();
		}
	}
	
	boolean clickSignInButton = false;
	boolean loginWebviewSuccessful = false;
	
	public void showDialogWelcome() {
		if (Util.getClientID(mContext).equals("")) {
			getClientId();
		}
		
		final Dialog dialog = new Dialog(mContext, android.R.style.Theme_Light_NoTitleBar);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.setContentView(R.layout.dialog_welcome);
		dialog.findViewById(R.id.btn_sign_in).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				clickSignInButton = true;
				dialog.dismiss();
				showDialogLogin();
			}
		});
		
		dialog.setOnDismissListener(new OnDismissListener() {
			@Override
			public void onDismiss(DialogInterface dialog) {
				// TODO Auto-generated method stub
				if (clickSignInButton == false) {
					((Activity)mContext).finish();
				}
			}
		});
		
		dialog.show();
	}
	
	/**
	 * Get init client_id
	 */
	public void getClientId() {
		mProgressDialog.setMessage("Loading..");
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				final String apiResponse = ServiceHelper.get(NameSpace.API_GET_CLIENT_ID);
				
				((Activity)mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (apiResponse != null) {
							try {
								JSONObject apiResponseJSON = new JSONObject(apiResponse);
								String client_id = apiResponseJSON.getJSONObject("data").getString("client_id");
								String client_sercret = apiResponseJSON.getJSONObject("data").getString("client_secret");
								Util.saveClientID(mContext, client_id);
								Util.saveClientSecret(mContext, client_sercret);
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						} else {
							Toast.makeText(mContext, "Please check internet connection!", Toast.LENGTH_SHORT).show();
						}
					}
				});
			}
		}).start();
	}	
	
	
	/** ----------- Step 1 : Get CODE ----------- */
	/** ----------- Step 1 : Get CODE ----------- */
	/** ----------- Step 1 : Get CODE ----------- */
	public void showDialogLogin() {
		mDialog = new Dialog(mContext, android.R.style.Theme_Light_NoTitleBar);
		mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mDialog.setContentView(R.layout.dialog_login);
		mDialog.findViewById(R.id.tv_top_left).setVisibility(View.GONE);
		mDialog.findViewById(R.id.tv_top_right).setVisibility(View.GONE);
		((TextView)mDialog.findViewById(R.id.tv_top_center)).setText("Login");
		
		WebView mWebView = (WebView) mDialog.findViewById(R.id.webview);
		mWebView.getSettings().setJavaScriptEnabled(true);
		mWebView.setWebViewClient(new WebViewClient() {
			@Override
			public void onPageStarted(WebView view, String url, Bitmap favicon) {
				// TODO Auto-generated method stub
				super.onPageStarted(view, url, favicon);
				mDialog.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
			}
			
			@Override
			public boolean shouldOverrideUrlLoading(WebView view, String url) {
				// TODO Auto-generated method stub
				Log.e("stk", "DialogLogin, webview url=" + url);
				
				if (url.startsWith(CALLBACK)) {
					Uri uri = Uri.parse(url);
					String code = uri.getQueryParameter("code");
					getAccessToken(code);
					return true;
				}
				
				return super.shouldOverrideUrlLoading(view, url);
			}
			
			@Override
			public void onPageFinished(WebView view, String url) {
				// TODO Auto-generated method stub
				super.onPageFinished(view, url);
				mDialog.findViewById(R.id.pb_loading).setVisibility(View.GONE);
			}
			
		});
		
		String params = "client_id=" + Util.getClientID(mContext) +
						"&redirect_uri=" + CALLBACK +
						"&response_type=code" + 
						"&scope=likes comments relationships";
		String urlLogin = NameSpace.WEBVIEW_LOGIN + params;
		mWebView.loadUrl(urlLogin);
		
		mDialog.setOnDismissListener(new OnDismissListener() {
			@Override
			public void onDismiss(DialogInterface dialog) {
				// TODO Auto-generated method stub
				if (loginWebviewSuccessful == false) {
					((Activity)mContext).finish();
				}
			}
		});
		
		mDialog.show();
	}
	
	/** ----------- Step 2 : Get Access Token ----------- */
	/** ----------- Step 2 : Get Access Token ----------- */
	/** ----------- Step 2 : Get Access Token ----------- */
	public void getAccessToken(final String code) {
		mProgressDialog.setMessage("Logging in...");
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = "client_id=" + Util.getClientID(mContext) + 
						"&redirect_uri=" + CALLBACK +
						"&client_secret=" + Util.getClientSecret(mContext) +
						"&grant_type=authorization_code" +
						"&code=" + code +
						"&scope=likes comments relationships";
				final String apiResponse = ServiceHelper.post(NameSpace.API_ACCESS_TOKEN, params);
				
				((Activity)mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (apiResponse != null) {
							try {
								JSONObject apiResponseJSON = new JSONObject(apiResponse);
								String accessToken = apiResponseJSON.getString("access_token");
								String userId = apiResponseJSON.getJSONObject("user").getString("id");
								String userName = apiResponseJSON.getJSONObject("user").getString("username");
								
								SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(mContext);
								sharedPreferences.edit().putString(NameSpace.SHARED_PREF_ACCESS_TOKEN, accessToken).commit();
								sharedPreferences.edit().putString(NameSpace.SHARED_PREF_USER_ID, userId).commit();
								sharedPreferences.edit().putString(NameSpace.SHARED_PREF_USER_NAME, userName).commit();
								
								addUser();
								
								loginWebviewSuccessful = true;
								mDialog.dismiss();
							} catch (JSONException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						} else {
							Toast.makeText(mContext, "Error : Get Access Token", Toast.LENGTH_SHORT).show();
						}
					}
				});
			}
		}).start();
	}
	
	/** ----------- Step 3 : Add User ----------- */
	/** ----------- Step 3 : Add User ----------- */
	/** ----------- Step 3 : Add User ----------- */
	public void addUser() {
		mProgressDialog.setMessage("Logging in...");
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String accessToken = PreferenceManager.getDefaultSharedPreferences(mContext).getString(NameSpace.SHARED_PREF_ACCESS_TOKEN, "");
				String userId = PreferenceManager.getDefaultSharedPreferences(mContext).getString(NameSpace.SHARED_PREF_USER_ID, "");
				String userName = PreferenceManager.getDefaultSharedPreferences(mContext).getString(NameSpace.SHARED_PREF_USER_NAME, "");
				
				String params = "access_token=" + accessToken +
								"&user_id=" + userId +
								"&username=" + userName +
								"&client_id=" + Util.getClientID(mContext);
				 
				final String apiResponse = ServiceHelper.post(NameSpace.API_ADD_USER, params);
				
				((Activity)mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (apiResponse != null) {
							getUserInfo();
						} else {
							Toast.makeText(mContext, "Error : Add User", Toast.LENGTH_SHORT).show();
						}
					}
				});
			}
		}).start();
	}	
	
	/** ----------- Step 4 : Get User Info ----------- */
	/** ----------- Step 4 : Get User Info ----------- */
	/** ----------- Step 4 : Get User Info ----------- */
	public void getUserInfo() {
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String accessToken = PreferenceManager.getDefaultSharedPreferences(mContext).getString(NameSpace.SHARED_PREF_ACCESS_TOKEN, "");
				String params = "access_token=" + accessToken;
				final String apiResponse = ServiceHelper.get(NameSpace.API_USER_INFO + params);
				
				((Activity) mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (apiResponse != null) {
							try {
								JSONObject apiResponseJSON = new JSONObject(apiResponse);
								String status = apiResponseJSON.getString("status");
								if (status.toLowerCase().equals("error")) {
									showDialogWelcome();
								} else {
									Util.saveUserInfo(mContext, apiResponse);
									mOnLoginListener.onLoginSuccessful(apiResponse);
								}
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						} else {
							Toast.makeText(mContext, "Error : Get User Info", Toast.LENGTH_SHORT).show();
						}
					}
				});
			}
		}).start();
	}
	

	
	
	public interface OnLoginListener {
		public void onLoginSuccessful(String userInfo);
	}
	
}
