package com.sologame.sdk;

import org.json.JSONObject;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;


import com.sologame.sdk.util.MyLog; 
import com.sologame.sdk.util.NameSpace;
import com.sologame.sdk.util.PushTools;
import com.sologame.sdk.util.ServiceHelper;
import com.sologame.sdk.util.Utils;
import com.sromku.simple.fb.Permission;
import com.sromku.simple.fb.Permission.Type;
import com.sromku.simple.fb.SimpleFacebook;
import com.sromku.simple.fb.SimpleFacebookConfiguration;

public class DialogLogin {

	Activity mActivity;
	OnLoginListener mOnLoginListener;
	Dialog mDialog;
	ProgressDialog mProgressDialog;

	boolean showingHelloDialog;
	
	// facebook
	SimpleFacebook mSimpleFacebook;
	static boolean isPendingLoginfacebook = false;

	public DialogLogin(Activity activity, OnLoginListener onLoginListener) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mOnLoginListener = onLoginListener;
		initUI();
	}

	public void initUI() {
		mProgressDialog = new ProgressDialog(mActivity);
		mProgressDialog.setMessage("Loading...");

		mDialog = new Dialog(mActivity, android.R.style.Theme_Light_NoTitleBar);
		mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mDialog.setContentView(R.layout.dialog_login);

		mDialog.findViewById(R.id.tv_login_sologame).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mDialog.findViewById(R.id.img_back).setVisibility(View.VISIBLE);
				mDialog.findViewById(R.id.layout_login_sologame).setVisibility(View.VISIBLE);
				mDialog.findViewById(R.id.layout_login_selection).setVisibility(View.GONE);
			}
		});

		mDialog.findViewById(R.id.btn_login_sologame).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				loginWithSoloGame();
			}
		});

		mDialog.findViewById(R.id.tv_login_with_facebook).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				isPendingLoginfacebook = true;
				loginWithFacebook();
			}
		});

		mDialog.findViewById(R.id.tv_register_account).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mDialog.findViewById(R.id.img_back).setVisibility(View.VISIBLE);
				mDialog.findViewById(R.id.layout_login_register).setVisibility(View.VISIBLE);
				mDialog.findViewById(R.id.layout_login_selection).setVisibility(View.GONE);
			}
		});

		mDialog.findViewById(R.id.btn_register).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				registerAccount();
			}
		});

		mDialog.findViewById(R.id.img_back).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mDialog.findViewById(R.id.img_back).setVisibility(View.GONE);
				mDialog.findViewById(R.id.layout_login_selection).setVisibility(View.VISIBLE);
				mDialog.findViewById(R.id.layout_login_register).setVisibility(View.GONE);
				mDialog.findViewById(R.id.layout_login_sologame).setVisibility(View.GONE);
			}
		});
		
		mDialog.findViewById(R.id.tv_forgot_password).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				showForgotPassword();
			}
		});
	}

	/**
	 * Show login options
	 */
	public void login() {
		if (Utils.getString(mActivity, NameSpace.SAVED_ACCESS_TOKEN) != null) {
			showHelloDialog(Utils.getString(mActivity, NameSpace.SAVED_USERNAME));
			mOnLoginListener.onSuccessful(Utils.getString(mActivity, NameSpace.SAVED_UID));
		} else {
			mDialog.show();	
		}
	}

	
	
	
	
	
	
	
	
	
	/**
	 * Login with sologame
	 */
	public void loginWithSoloGame() {
		final String username = ((EditText) mDialog.findViewById(R.id.et_username)).getText().toString().trim();
		final String password = ((EditText) mDialog.findViewById(R.id.et_password)).getText().toString().trim();

		if (username.equals("") || password.equals("")) {
			Toast.makeText(mActivity, mActivity.getString(R.string.please_fill_up_info), Toast.LENGTH_SHORT).show();
			if (username.equals("")) {
				((EditText) mDialog.findViewById(R.id.et_username)).requestFocus();
			} else if (password.equals("")) {
				((EditText) mDialog.findViewById(R.id.et_password)).requestFocus();
			}
			return;
		}

		mProgressDialog.show();

		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject dataJSON = new JSONObject();
					dataJSON.put("username", username);
					dataJSON.put("password", password);
					dataJSON.put("os_id", NameSpace.OS_ID);
					String data = dataJSON.toString();
					
					String apiUrl = Utils.createApiUrl(mActivity, NameSpace.COMMAND_LOGIN, data);
					final String response = ServiceHelper.get(apiUrl);

					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							checkLoginResponse(response);
						}
					});
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}).start();

	}

	
	
	
	
	
	
	
	/**
	 * Login with Facebook
	 */
	public void loginWithFacebook() {		
		com.sromku.simple.fb.listeners.OnLoginListener onLoginListener = new com.sromku.simple.fb.listeners.OnLoginListener() {
			@Override
			public void onFail(String arg0) {}
			
			@Override
			public void onException(Throwable arg0) {}
			
			@Override
			public void onThinking() {}
			
			@Override
			public void onNotAcceptingPermissions(Type arg0) {
				// TODO Auto-generated method stub
				MyLog.log("onNotAcceptingPermissions");
			}
			
			@Override
			public void onLogin() {
				// TODO Auto-generated method stub
				isPendingLoginfacebook = false;
				// window leak happend for first time login with facebook
				MyLog.log("onLogin: Login Facebook Successful; mDialog=" + mDialog + "; mActivity=" + mActivity);
				loginFacebookWithAccessToken();
			}
		};
		
		SimpleFacebook.getInstance(mActivity).login(onLoginListener);
	}
	
	/**
	 * Login after have active facebook access token
	 */
	public void loginFacebookWithAccessToken() {
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {					
					JSONObject dataJSON = new JSONObject();
					dataJSON.put("access_token_facebook", com.facebook.Session.getActiveSession().getAccessToken());
					dataJSON.put("os_id", NameSpace.OS_ID);
					String data = dataJSON.toString();
					String apiUrl = Utils.createApiUrl(mActivity, NameSpace.COMMAND_LOGIN_FACEBOOK, data);
					
					final String response = ServiceHelper.get(apiUrl);
					
					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							// sometimes this dialog cause force close with unknown reason
							try {
								mProgressDialog.dismiss();	
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
							
							checkLoginResponse(response);
						}
					});
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
				
				
			}
		}).start();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

	/**
	 * Login with Google
	 */
	public void loginWithGoogle() {
		Toast.makeText(mActivity, "Login with Google", Toast.LENGTH_SHORT).show();
	}
	
	
	
	
	
	
	
	
	/**
	 * Register new account
	 */
	public void registerAccount() {
		final String username = ((EditText) mDialog.findViewById(R.id.et_register_username)).getText().toString().trim();
		final String password = ((EditText) mDialog.findViewById(R.id.et_register_password)).getText().toString().trim();
		String password2 = ((EditText) mDialog.findViewById(R.id.et_register_password_2)).getText().toString().trim();

		if (username.equals("") || password.equals("") || password2.equals("")) {
			Toast.makeText(mActivity, mActivity.getString(R.string.please_fill_up_info), Toast.LENGTH_SHORT).show();
			if (username.equals("")) {
				((EditText) mDialog.findViewById(R.id.et_register_username)).requestFocus();	
			} else if (password.equals("")) {
				((EditText) mDialog.findViewById(R.id.et_register_password)).requestFocus();
			} else if (password2.equals("")) {
				((EditText) mDialog.findViewById(R.id.et_register_password_2)).requestFocus();
			}
			
		} else if (!password.equals(password2)) {
			Toast.makeText(mActivity, mActivity.getString(R.string.password_not_match), Toast.LENGTH_SHORT).show();
		} else {
			// check username validation
			if (username.length() < 6) {
				Toast.makeText(mActivity, mActivity.getString(R.string.username_is_too_short), Toast.LENGTH_SHORT).show();
				((EditText) mDialog.findViewById(R.id.et_register_username)).requestFocus();
				return;
			} else if (username.length() > 30) {
				Toast.makeText(mActivity, mActivity.getString(R.string.username_is_too_long), Toast.LENGTH_SHORT).show();
				((EditText) mDialog.findViewById(R.id.et_register_username)).requestFocus();
				return;
			} else if (username.contains(" ")) {
				Toast.makeText(mActivity, mActivity.getString(R.string.username_contains_space), Toast.LENGTH_SHORT).show();
				((EditText) mDialog.findViewById(R.id.et_register_username)).requestFocus();
				return;
			}
			
			mProgressDialog.show();

			new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					try {
						JSONObject dataJSON = new JSONObject();
						dataJSON.put("email", "");
						dataJSON.put("username", username);
						dataJSON.put("password", password);
						dataJSON.put("os_id", NameSpace.OS_ID);
						String data = dataJSON.toString();						
						String apiUrl = Utils.createApiUrl(mActivity, NameSpace.COMMAND_REGISTER, data);

						final String response = ServiceHelper.get(apiUrl);

						mActivity.runOnUiThread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								mProgressDialog.dismiss();
								checkLoginResponse(response);
							}
						});
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
				}
			}).start();
		}
	}
	
	
	
	/**
	 * Check login response after logging in by solo/facebook or registering
	 * @param response
	 */
	public void checkLoginResponse(String response) {
		if (Utils.checkResponseError(mActivity, response) == false) {
			try {
				JSONObject responseJSON = new JSONObject(response);
				JSONObject userInfoJSON = responseJSON.getJSONObject("data").getJSONObject("user_info");
				Utils.saveString(mActivity, NameSpace.SAVED_USER_INFO, userInfoJSON.toString());
				
				String uid = responseJSON.getJSONObject("data").getJSONObject("user_info").getString("uid");
				Utils.saveString(mActivity, NameSpace.SAVED_UID, uid);
				
				PushTools.logToken(mActivity);
				
				String username = responseJSON.getJSONObject("data").getJSONObject("user_info").getString("name");
				Utils.saveString(mActivity, NameSpace.SAVED_USERNAME, username);				
				
				String access_token = responseJSON.getJSONObject("data").getString("access_token");
				Utils.saveString(mActivity, NameSpace.SAVED_ACCESS_TOKEN, access_token);
				
				if (responseJSON.getJSONObject("data").has("account_fpay")) {
					String account_fpay = responseJSON.getJSONObject("data").getString("account_fpay");
					if (!account_fpay.equals("null")) {
						Utils.saveString(mActivity, NameSpace.SAVED_ACCOUNT_FPAY, account_fpay);	
					} else {
						Utils.saveString(mActivity, NameSpace.SAVED_ACCOUNT_FPAY, null);
					}
				} else {
					Utils.saveString(mActivity, NameSpace.SAVED_ACCOUNT_FPAY, username);
				}
				
				showHelloDialog(username);
				mOnLoginListener.onSuccessful(uid);
				mDialog.dismiss();						
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		} else {
			((EditText) mDialog.findViewById(R.id.et_username)).requestFocus();
		}		
	}

	
	
	
	
	
	
	/**
	 * Show hello dialog to user after logging successfully
	 * @param userName
	 */
	public void showHelloDialog(String userName) {
		final ViewGroup rootView = (ViewGroup) (mActivity).findViewById(android.R.id.content);

		final View helloView = LayoutInflater.from(mActivity).inflate(R.layout.layout_hello, null);
		((TextView) helloView.findViewById(R.id.tv_hello)).setText(mActivity.getString(R.string.welcome_back) + " " + userName);

		Animation animation = AnimationUtils.loadAnimation(mActivity, R.anim.top_in_then_out);
		animation.setAnimationListener(new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) {
			}

			@Override
			public void onAnimationRepeat(Animation animation) {
			}

			@Override
			public void onAnimationEnd(Animation animation) {
				// TODO Auto-generated method stub
				rootView.removeView(helloView);
				showingHelloDialog = false;
			}
		});

		helloView.startAnimation(animation);
		rootView.addView(helloView);
		showingHelloDialog = true;
	}
	
	
	/**
	 * Show forgot password webview
	 */
	public void showForgotPassword() {
		final Dialog dialog = new Dialog(mActivity, android.R.style.Theme_Light_NoTitleBar);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.setContentView(R.layout.dialog_forgot_password);
		dialog.show();
		
		WebView webView = (WebView) dialog.findViewById(R.id.webview_forgot_password);
		webView.setWebViewClient(new WebViewClient() {
			@Override
			public void onPageStarted(WebView view, String url, Bitmap favicon) {
				// TODO Auto-generated method stub
				super.onPageStarted(view, url, favicon);
				dialog.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
			}
			
			@Override
			public void onPageFinished(WebView view, String url) {
				// TODO Auto-generated method stub
				super.onPageFinished(view, url);
				dialog.findViewById(R.id.pb_loading).setVisibility(View.GONE);
			}
		});
		
		webView.loadUrl("https://fpay.vn/user/password");
	}
	
	
	
	public interface OnLoginListener {
		public void onSuccessful(String userId);
	}

}
