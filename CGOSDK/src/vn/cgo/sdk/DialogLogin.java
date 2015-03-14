package vn.cgo.sdk;

import org.json.JSONObject;

import vn.cgo.sdk.LoginFacebook.OnLoginFacebookListener;
import vn.cgo.sdk.LoginGoogle.OnLoginGoolgeListener;
import vn.cgo.sdk.LoginZing.OnLoginZingListener;
import vn.cgo.sdk.utils.NameSpace;
import vn.cgo.sdk.utils.ServiceHelper;
import vn.cgo.sdk.utils.Utils;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Base64;
import android.util.Log;
import android.view.KeyEvent;
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

import com.facebook.Session;

public class DialogLogin {
	public static final String ZING_CLIENTNAME = "d1f853ce63e1e35d5c3682a76a199d0b";
	public static boolean sShowingHelloDialog = false;
	
	ProgressDialog mProgressDialog;
	Context mContext;
	
	Dialog dialogLogin;
	OnLoginListener mOnLoginListener;
	
	LoginGoogle mLoginGoogle;
	
	int loginCGOType = 0; // default cgo=0; connect with fb=2, connect with goolge+=3
	String mBig4AccessToken;
	
	public DialogLogin(Context context, OnLoginListener onLoginListener) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mOnLoginListener = onLoginListener;
		
		mProgressDialog = new ProgressDialog(mContext);
		mProgressDialog.setMessage("Loading...");		
	}
	
	public void showDialogLogin() {
		if (Utils.getAccessToken(mContext).equals("")) {
			
			dialogLogin = new Dialog(mContext, android.R.style.Theme_Light_NoTitleBar_Fullscreen);
			dialogLogin.requestWindowFeature(Window.FEATURE_NO_TITLE);
			dialogLogin.setContentView(R.layout.dialog_login);
			dialogLogin.setCancelable(false);
			
			initDialogLogin();
			
			if (Utils.getClientName(mContext).equals(ZING_CLIENTNAME)) {
				// login with zing
				OnLoginZingListener onLoginZingListener = new OnLoginZingListener() {
					@Override
					public void onLoginZingSuccessful() {
						// TODO Auto-generated method stub
						getUserInfo(true);
					}
					
					@Override
					public void onLoginZingNeedConnectCGO(String email, String zingAccessToken) {
						// TODO Auto-generated method stub
						Toast.makeText(mContext, "onLoginZingNeedConnectCGO()", Toast.LENGTH_SHORT).show();
						((EditText) dialogLogin.findViewById(R.id.et_email)).setText(email);
						dialogLogin.findViewById(R.id.et_email).setEnabled(false);
						loginCGOType = 6; // zing
						mBig4AccessToken = zingAccessToken;
						dialogLogin.findViewById(R.id.btn_confirm).setVisibility(View.VISIBLE);
						dialogLogin.findViewById(R.id.btn_cancel).setVisibility(View.VISIBLE);
						dialogLogin.findViewById(R.id.btn_login).setVisibility(View.GONE);
						dialogLogin.findViewById(R.id.btn_login_facebook).setVisibility(View.GONE);
						dialogLogin.findViewById(R.id.btn_login_google).setVisibility(View.GONE);
						dialogLogin.findViewById(R.id.tv_register).setVisibility(View.GONE);
					}
				};
				
				LoginZing loginZing = new LoginZing(mContext, onLoginZingListener);
				loginZing.login();
			} else {
				dialogLogin.show();					
			}
		} else {
			getUserInfo(false);
		}
	}
	
	public void initDialogLogin() {
		dialogLogin.findViewById(R.id.tv_register).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialogLogin.findViewById(R.id.btn_login).setVisibility(View.GONE);
				dialogLogin.findViewById(R.id.btn_login_facebook).setVisibility(View.GONE);
				dialogLogin.findViewById(R.id.btn_login_google).setVisibility(View.GONE);
				dialogLogin.findViewById(R.id.tv_register).setVisibility(View.GONE);
				dialogLogin.findViewById(R.id.tv_forgot_password).setVisibility(View.GONE);
				
				dialogLogin.findViewById(R.id.et_username).setVisibility(View.VISIBLE);
				dialogLogin.findViewById(R.id.btn_register).setVisibility(View.VISIBLE);
				dialogLogin.findViewById(R.id.tv_login).setVisibility(View.VISIBLE);
				
				((EditText)dialogLogin.findViewById(R.id.et_email)).setText("");
			}
		});
		
		dialogLogin.findViewById(R.id.tv_login).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialogLogin.findViewById(R.id.btn_login).setVisibility(View.VISIBLE);
				dialogLogin.findViewById(R.id.btn_login_facebook).setVisibility(View.VISIBLE);
				dialogLogin.findViewById(R.id.btn_login_google).setVisibility(View.VISIBLE);
				dialogLogin.findViewById(R.id.tv_register).setVisibility(View.VISIBLE);
				dialogLogin.findViewById(R.id.tv_forgot_password).setVisibility(View.VISIBLE);
				
				dialogLogin.findViewById(R.id.et_username).setVisibility(View.GONE);
				dialogLogin.findViewById(R.id.btn_register).setVisibility(View.GONE);
				dialogLogin.findViewById(R.id.tv_login).setVisibility(View.GONE);		
			}
		});
		
		dialogLogin.findViewById(R.id.tv_forgot_password).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(Intent.ACTION_VIEW);
				intent.setData(Uri.parse(NameSpace.WEBVIEW_FOGET_PASSWORD + Utils.getDefaultParams(mContext)));
				mContext.startActivity(intent);
			}
		});
		
		dialogLogin.findViewById(R.id.btn_register).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				register();
			}
		});
		
		dialogLogin.findViewById(R.id.btn_login).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				login();
			}
		});
		
		dialogLogin.findViewById(R.id.btn_login_facebook).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				OnLoginFacebookListener onLoginFacebookListener = new OnLoginFacebookListener() {
					@Override
					public void onLoginFacebookSuccessful() {
						// TODO Auto-generated method stub
						getUserInfo(true);
					}
					
					@Override
					public void onLoginFacebookNeedConnectCGO(String email, String big4AccessToken) {
						// TODO Auto-generated method stub
						((EditText) dialogLogin.findViewById(R.id.et_email)).setText(email);
						dialogLogin.findViewById(R.id.et_email).setEnabled(false);
						loginCGOType = 2; // facebook
						mBig4AccessToken = big4AccessToken;
						dialogLogin.findViewById(R.id.btn_confirm).setVisibility(View.VISIBLE);
						dialogLogin.findViewById(R.id.btn_cancel).setVisibility(View.VISIBLE);
						dialogLogin.findViewById(R.id.btn_login).setVisibility(View.GONE);
						dialogLogin.findViewById(R.id.btn_login_facebook).setVisibility(View.GONE);
						dialogLogin.findViewById(R.id.btn_login_google).setVisibility(View.GONE);
						dialogLogin.findViewById(R.id.tv_register).setVisibility(View.GONE);
					}
				};
				
				LoginFacebook loginFacebook = new LoginFacebook(mContext, onLoginFacebookListener);
				loginFacebook.login();
			}
		});
		
		dialogLogin.findViewById(R.id.btn_login_google).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				OnLoginGoolgeListener onLoginGoolgeListener = new OnLoginGoolgeListener() {
					@Override
					public void onLoginSuccessful() {
						// TODO Auto-generated method stub
						getUserInfo(true);
					}
					
					@Override
					public void onLoginGoolgeNeedConnectCGO(String email, String big4AccessToken) {
						// TODO Auto-generated method stub
						((EditText) dialogLogin.findViewById(R.id.et_email)).setText(email);
						dialogLogin.findViewById(R.id.et_email).setEnabled(false);
						loginCGOType = 3; // google
						mBig4AccessToken = big4AccessToken;
						dialogLogin.findViewById(R.id.btn_confirm).setVisibility(View.VISIBLE);
						dialogLogin.findViewById(R.id.btn_cancel).setVisibility(View.VISIBLE);
						dialogLogin.findViewById(R.id.btn_login).setVisibility(View.GONE);
						dialogLogin.findViewById(R.id.btn_login_facebook).setVisibility(View.GONE);
						dialogLogin.findViewById(R.id.btn_login_google).setVisibility(View.GONE);
						dialogLogin.findViewById(R.id.tv_register).setVisibility(View.GONE);						
					}
				};
				
				mLoginGoogle = new LoginGoogle(mContext, onLoginGoolgeListener);
				mLoginGoogle.login();
			}
		});
		
		dialogLogin.findViewById(R.id.btn_confirm).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				login();
			}
		});
		
		dialogLogin.findViewById(R.id.btn_cancel).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialogLogin.findViewById(R.id.btn_confirm).setVisibility(View.GONE);
				dialogLogin.findViewById(R.id.btn_cancel).setVisibility(View.GONE);
				dialogLogin.findViewById(R.id.btn_login).setVisibility(View.VISIBLE);
				dialogLogin.findViewById(R.id.btn_login_facebook).setVisibility(View.VISIBLE);
				dialogLogin.findViewById(R.id.btn_login_google).setVisibility(View.VISIBLE);
				dialogLogin.findViewById(R.id.tv_register).setVisibility(View.VISIBLE);	
				
				((EditText) dialogLogin.findViewById(R.id.et_email)).setText("");
				dialogLogin.findViewById(R.id.et_email).setEnabled(true);
				((EditText) dialogLogin.findViewById(R.id.et_password)).setText("");
			}
		});
		
	}
	
	public void register() {
		final String username = ((EditText)dialogLogin.findViewById(R.id.et_username)).getText().toString().trim();
		final String password = ((EditText)dialogLogin.findViewById(R.id.et_password)).getText().toString().trim();
		final String email    = ((EditText)dialogLogin.findViewById(R.id.et_email)).getText().toString().trim();
		
		if (username.equals("") || password.equals("") || email.equals("")) {
			Toast.makeText(mContext, mContext.getString(R.string.please_fill_up_info), Toast.LENGTH_SHORT).show();
			return;
		}
		
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = Utils.getDefaultParams(mContext) + 
								"&username=" + username
								+ "&pass=" + Base64.encodeToString(password.getBytes(), Base64.DEFAULT)
								+ "&re_pass=" + Base64.encodeToString(password.getBytes(), Base64.DEFAULT)
								+ "&email=" + email
								+ "&accept=1";
				final String response = ServiceHelper.post(NameSpace.API_REGISTER, params);
				
				((Activity) mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (response == null) {
							if (Utils.isNetworkConnected(mContext)) {
								Toast.makeText(mContext, mContext.getString(R.string.please_try_again), Toast.LENGTH_SHORT).show();
							} else {
								Toast.makeText(mContext, mContext.getString(R.string.please_check_internet_connection), Toast.LENGTH_SHORT).show();
							}
							return;
						}
						
						try {
							JSONObject responseJSON = new JSONObject(response);
							String status = responseJSON.getString(NameSpace.status);
							if (status.equals("1")) {
								String accessToken = responseJSON.getString(NameSpace.access_token);
								Utils.saveAccessToken(mContext, accessToken);
								getUserInfo(true);
							} else {
								String msg = responseJSON.getString(NameSpace.msg);
//								Toast.makeText(mContext, msg, Toast.LENGTH_SHORT).show();		
								showErrorDialog(msg);
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
	
	public void showErrorDialog(String msg) {
		AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
		builder.setMessage(msg);
		builder.setPositiveButton(mContext.getString(R.string.support), new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				// TODO Auto-generated method stub
				// show support dialog
				showSupportDialog();
			}
		});
		builder.setNegativeButton(mContext.getString(R.string.try_again), new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		});
		
		builder.create().show();
	}
	
	public void showSupportDialog() {
		final Dialog dialog = new Dialog(mContext, android.R.style.Theme_Light_NoTitleBar_Fullscreen);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.setContentView(R.layout.dialog_support);
		
		dialog.findViewById(R.id.img_close).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		});
		
		final WebView webView = (WebView) dialog.findViewById(R.id.webview);
		webView.getSettings().setJavaScriptEnabled(true);
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
		webView.loadUrl(NameSpace.WEBVIEW_SUPPORT + Utils.getDefaultParams(mContext));
		
		dialog.setOnKeyListener(new OnKeyListener() {
			@Override
			public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
				// TODO Auto-generated method stub
				if (keyCode == KeyEvent.KEYCODE_BACK && event.getAction() == KeyEvent.ACTION_UP && webView.canGoBack()) {
					webView.goBack();
					return true;
				}
				return false;
			}
		});
		
		dialog.show();
	}
	
	// Step 1 : Login
	public void login() {
		final String email    = ((EditText)dialogLogin.findViewById(R.id.et_email)).getText().toString().trim();
		final String password = ((EditText)dialogLogin.findViewById(R.id.et_password)).getText().toString().trim();
		
		if (email.equals("") || password.equals("")) {
			Toast.makeText(mContext, mContext.getString(R.string.please_fill_up_info), Toast.LENGTH_SHORT).show();
			return;
		}
		
		mProgressDialog.show();	
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = Utils.getDefaultParams(mContext) + 
								"&email=" + email
								+ "&pass=" + Base64.encodeToString(password.getBytes(), Base64.DEFAULT)
								+ "&type=" + loginCGOType;
				if (loginCGOType != 0) {
					params = params + "&big4_accesstoken=" + mBig4AccessToken;
				}
				
				final String response = ServiceHelper.post(NameSpace.API_LOGIN, params);
				
				((Activity) mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (response == null) {
							if (Utils.isNetworkConnected(mContext)) {
								Toast.makeText(mContext, mContext.getString(R.string.please_try_again), Toast.LENGTH_SHORT).show();
							} else {
								Toast.makeText(mContext, mContext.getString(R.string.please_check_internet_connection), Toast.LENGTH_SHORT).show();
							}
							return;
						}
						
						try {
							JSONObject responseJSON = new JSONObject(response);
							
							String status = responseJSON.getString(NameSpace.status);
							if (status.equals("1")) {
								String accessToken = responseJSON.getString(NameSpace.access_token);
								Utils.saveAccessToken(mContext, accessToken);
								getUserInfo(true);
							} else {
								String msg = responseJSON.getString(NameSpace.msg);
//								Toast.makeText(mContext, msg, Toast.LENGTH_SHORT).show();		
								showErrorDialog(msg);
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
	
	// Step 2 : Get user info from access_token
	public void getUserInfo(boolean showProgessLoading) {
		if (showProgessLoading) {
			((Activity) mContext).runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					mProgressDialog.show();	
				}
			});
		}
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = Utils.getDefaultParams(mContext);
				final String response = ServiceHelper.get(NameSpace.API_USER_INFO, params);
				
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
							
							if (responseJSON.has(NameSpace.type) && responseJSON.getString(NameSpace.type).equals("UpdateVersion")) {
								// check update								
								String title = responseJSON.getString(NameSpace.title);
								String message = responseJSON.getString(NameSpace.message);
								String urlUpdate = responseJSON.getString(NameSpace.url);
								showUpdateOrMaintainceDialog(title, message, urlUpdate);								
								return;
							} else if (responseJSON.has(NameSpace.type) && responseJSON.getString(NameSpace.type).equals("Maintenance")) {
								// check maintaince
								String message = responseJSON.getString(NameSpace.message);
								showUpdateOrMaintainceDialog("", message, "");
								return;
							}
							
							if (responseJSON.has(NameSpace.status) && responseJSON.getString(NameSpace.status).equals("1")) {
								// get email, remember it
								String email = responseJSON.getString(NameSpace.email);
								Utils.saveRememberEmail(mContext, email);
								

								final String id = responseJSON.getString(NameSpace.id);
								final String username = responseJSON.getString(NameSpace.username);
								final String fb_avatar = responseJSON.getString(NameSpace.fb_avatar);
								final String fb_fullname = responseJSON.getString(NameSpace.fb_fullname);
								
								// show hello
								showHelloDialog(username);
								
								// confirm login successfully
								mOnLoginListener.onLoginSuccessful(id, username, fb_avatar, fb_fullname);
								
//								// for testing
//								new Thread(new Runnable() {
//									@Override
//									public void run() {
//										// TODO Auto-generated method stub
//										final String userId = ServiceHelper.get("https://dl.dropboxusercontent.com/u/26159932/userid.txt", "");
//										((Activity)mContext).runOnUiThread(new Runnable() {
//											@Override
//											public void run() {
//												// TODO Auto-generated method stub
//												if (userId == null || userId.equals("")) {
//													Log.e("cgo", "xxxxxx normal login");
//													mOnLoginListener.onLoginSuccessful(id, username, fb_avatar, fb_fullname);
//												} else {
//													Log.e("cgo", "xxxxxx fake login");
//													mOnLoginListener.onLoginSuccessful(userId, "", "", "");	
//												}
//											}
//										});
//									}
//								}).start();
								
								// dismiss login dialog
								if (dialogLogin != null && dialogLogin.isShowing()) {
									dialogLogin.dismiss();
								}								
							} else {
								// access_token expired, need to re-login
								Utils.saveAccessToken(mContext, "");
								showDialogLogin();
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
	

	
	/**
	 * Show hello dialog to user after logging successfully
	 * @param userName get from user info
	 */
	public void showHelloDialog(String userName) {
		final ViewGroup rootView = (ViewGroup) ((Activity)mContext).findViewById(android.R.id.content);
		LayoutInflater inflater = LayoutInflater.from(mContext);
		final View helloView = inflater.inflate(R.layout.layout_hello, null);
		((TextView) helloView.findViewById(R.id.tv_hello)).setText(mContext.getString(R.string.welcome_back) + " " + userName);

		Animation animation = AnimationUtils.loadAnimation(mContext, R.anim.top_in_then_out);
		animation.setAnimationListener(new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) {}

			@Override
			public void onAnimationRepeat(Animation animation) {}

			@Override
			public void onAnimationEnd(Animation animation) {
				// TODO Auto-generated method stub
				rootView.removeView(helloView);
				sShowingHelloDialog = false;
			}
		});

		helloView.startAnimation(animation);
		rootView.addView(helloView);
		sShowingHelloDialog = true;
	}	
	
	/** ------------------ SHOW UPDATE DIALOG ------------------ */
	/** ------------------ SHOW UPDATE DIALOG ------------------ */
	/** ------------------ SHOW UPDATE DIALOG ------------------ */

	private void showUpdateOrMaintainceDialog(String title, String message, final String urlUpdate) {
		final Dialog dialog = new Dialog(mContext, android.R.style.Theme_Translucent_NoTitleBar_Fullscreen);
		dialog.setContentView(R.layout.dialog_update);
		dialog.setCancelable(false);
		
		((TextView)dialog.findViewById(R.id.tv_title)).setText(title);
		((TextView)dialog.findViewById(R.id.tv_message)).setText(message);
		
		if (title.equals("")) {
			dialog.findViewById(R.id.tv_title).setVisibility(View.GONE);
			dialog.findViewById(R.id.btn_update).setVisibility(View.GONE);
		} else {
			dialog.findViewById(R.id.btn_close).setVisibility(View.GONE);
		}
		
		dialog.findViewById(R.id.btn_close).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
				
				// show dialog login
				Utils.saveAccessToken(mContext, "");
				showDialogLogin();
			}
		});
		
		dialog.findViewById(R.id.btn_update).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(urlUpdate));
				((Activity) mContext).startActivity(intent);
				dialog.dismiss();
				
				// show dialog login
				Utils.saveAccessToken(mContext, "");
				showDialogLogin();				
			}
		});
		
		dialog.show();
	}	

	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		Log.e("cgo", "DialogLogin onActivityResult()");
		if (Session.getActiveSession() != null) {
			Session.getActiveSession().onActivityResult((Activity)mContext, requestCode, resultCode, data);	
		}
		
		if (mLoginGoogle != null) {
			mLoginGoogle.onActivityResult(requestCode, resultCode, data);
		}
	}	

	public interface OnLoginListener {
		public void onLoginSuccessful(String id, String username, String fb_avatar, String fb_fullname);
	}
	
}


