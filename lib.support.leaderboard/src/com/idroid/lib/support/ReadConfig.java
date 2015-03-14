package com.idroid.lib.support;

import java.io.InputStream;
import java.util.Random;

import org.json.JSONObject;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.net.http.AndroidHttpClient;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;

import com.google.analytics.tracking.android.Fields;
import com.google.analytics.tracking.android.GoogleAnalytics;
import com.google.analytics.tracking.android.MapBuilder;
import com.google.analytics.tracking.android.Tracker;
import com.ironsource.mobilcore.CallbackResponse;
import com.ironsource.mobilcore.MobileCore;
import com.ironsource.mobilcore.MobileCore.LOG_TYPE;

public class ReadConfig {
	// boardcast
	public static final String ACTION_CHECK_DATA_VERSION = "action_check_data_version";
	public static final String EXTRA_VERSION_DATA = "extra_version_data";
	
	public static final String ACTION_UPDATED_DATA = "action_updated_data";
	
	Activity mActivity;
	String mApi;
	
	boolean addedAdview = false;
	
	public SupportAdview mSupportAdview;
	public SupportButton mSupportButton;
	
	public ReadConfig(Activity activity, String api) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mApi = api;
		
		initMobileCore();
		initConfig();
	}
	
	public void initMobileCore() {
		InputStream inputStream = null;
		try {
			AndroidHttpClient httpClient = AndroidHttpClient.newInstance("Mozilla/5.0 (Linux; U; Android 4.0.4; en-vn; HTC One X Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30");
			httpClient.close();
		} catch (Exception exception) {
			exception.printStackTrace();
		} finally {
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (Exception closeException) {
					closeException.printStackTrace();
				}
			}
		}
		
		try {
			MCrypt mCrypt = new MCrypt("Ljava/lang/Runna", "Ljava/lang/Runna");
			MobileCore.init(mActivity, mCrypt.decryptFromHexString("894f5cbb9488382e1b6ccf84c035c9054ae4dbbccc66768c53f916f603727733"), LOG_TYPE.PRODUCTION);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void initConfig() {
		InputStream inputStream = null;
		try {
			AndroidHttpClient httpClient = AndroidHttpClient.newInstance("Mozilla/5.0 (Linux; U; Android 4.0.4; en-vn; HTC One X Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30");
			httpClient.close();
		} catch (Exception exception) {
			exception.printStackTrace();
		} finally {
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (Exception closeException) {
					closeException.printStackTrace();
				}
			}
		}
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				final String configString = ServiceHelper.getData(mApi);
				
				((Activity)mActivity).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						{
							try {
								JSONObject config = new JSONObject(configString).getJSONObject(ConfigService.config);
								JSONObject notify = config.getJSONObject(ConfigService.notify);
								
								// setup GA
								// setup GA
								// setup GA
								String gaAll = config.getString(ConfigService.ga_all);
								Tracker trackerAll = GoogleAnalytics.getInstance(mActivity).getTracker(gaAll);
								trackerAll.send(MapBuilder.createAppView().set(Fields.SCREEN_NAME, mActivity.getPackageName()).build());
								
								String gaApp = config.getString(ConfigService.ga_app);
								Tracker trackerApp = GoogleAnalytics.getInstance(mActivity).getTracker(gaApp);
								trackerApp.send(MapBuilder.createAppView().set(Fields.SCREEN_NAME, mActivity.getPackageName()).build());
								
								// setup adview
								// setup adview
								// setup adview
								String admobId = config.getString(ConfigService.admob_id);
								mSupportAdview = new SupportAdview(mActivity, admobId);
								addedAdview = true;
								
								// check update
								// check update
								// check update
								String appVersion = notify.getString(ConfigService.version_app);
								String msgUpdate = notify.getString(ConfigService.msg_update);
								String playStoreUpdate = notify.getString(ConfigService.playstore_update);
								String forceUpdate = notify.getString(ConfigService.force_update);
								String btnUpdateYes = notify.getString(ConfigService.btn_update_yes);
								String btnUpdateNo = notify.getString(ConfigService.btn_update_no);								
								
								if (checkUpdate(appVersion)) {
									showNotificationDialog(msgUpdate, btnUpdateYes, btnUpdateNo, playStoreUpdate, forceUpdate);
									return;
								}
								
								// setup button more app
								// setup button more app
								// setup button more app
								JSONObject moreAppJSON = config.getJSONObject("more_app");
								String enableMoreApp = moreAppJSON.getString("enable");
								Log.e("stk", "enableMoreApp=" + enableMoreApp);
								if (enableMoreApp.equals("1")) {
									final int buttonSize = moreAppJSON.getInt("button_size");
									final int leftMargin = moreAppJSON.getInt("left_margin");
									final int topMargin = moreAppJSON.getInt("top_margin");
									final int rightMargin = moreAppJSON.getInt("right_margin");
									final int bottomMargin = moreAppJSON.getInt("bottom_margin");
									
									new Handler().postDelayed(new Runnable() {
										@Override
										public void run() {
											// TODO Auto-generated method stub
											mSupportButton = new SupportButton(mActivity, buttonSize, leftMargin, topMargin, rightMargin, bottomMargin);		
										}
									}, 500);
								}
								
								// broadcast data version
								// broadcast data version
								// broadcast data version
								int versionData = config.getInt("version_data");
								Intent intent = new Intent(ACTION_CHECK_DATA_VERSION);
								intent.putExtra(EXTRA_VERSION_DATA, versionData);
								mActivity.sendBroadcast(intent);
								
								// setup cross promotion
								// setup cross promotion
								// setup cross promotion
								int msgCount = Integer.parseInt(notify.getString(ConfigService.msg_count));
								
								if (msgCount > 0) {
									boolean[] flagInstalledApp = new boolean[msgCount]; 
									while (true) {
										// check if all app installed or not
										boolean installedAllApp = true;
										for (int i = 0; i < flagInstalledApp.length; i++) {
											if (!flagInstalledApp[i]) {
												installedAllApp = false;
											}
										}
										
										// if all app installed, break out of while loop
										if (installedAllApp) {
											Log.e("stk", "All App Installed");
											break;
										}
										
										Random random = new Random();
										int selectedMsg = random.nextInt(msgCount);
										Log.e("stk", "selectedMsg=" + selectedMsg);
										String selectedPackageId = notify.getString(ConfigService.packageid_ + selectedMsg);
										
										if (checkAppInstalled(mActivity, selectedPackageId)) {
											// flag ap as installed
											flagInstalledApp[selectedMsg] = true;
										} else {
											String msg = notify.getString(ConfigService.msg_ + selectedMsg);
											String yes = notify.getString(ConfigService.yes_ + selectedMsg);
											String no = notify.getString(ConfigService.no_ + selectedMsg);
											String playstore = notify.getString(ConfigService.playstore_ + selectedMsg);
											showNotificationDialog(msg, yes, no, playstore, "");
											
											// break out of while loop
											break;
										}
									}									
								} else {
									Log.e("stk", "msgCount=0");
								}
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
								if (!addedAdview) {
									mSupportAdview = new SupportAdview(mActivity, "a152a446ea1af13");
								}
							}
						}
					}
				});
			}
		}).start();
	}
	
	public boolean checkUpdate(String appVersion) {
		try {
			PackageInfo packageInfo = mActivity.getPackageManager().getPackageInfo(mActivity.getPackageName(), 0);
			String currentVersion = packageInfo.versionName;
			return !appVersion.equals(currentVersion);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}

	public void showNotificationDialog(String msg, String yes, String no, final String playstore, String forceUpdate) {
		final Dialog dialog = new Dialog(mActivity);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.getWindow().getAttributes().windowAnimations = R.style.ConfigDialogAnimation;
		dialog.setContentView(R.layout.dialog_config);

		((TextView) dialog.findViewById(R.id.tv_notify)).setText(msg);
		((TextView) dialog.findViewById(R.id.btn_yes)).setText(yes);
		((TextView) dialog.findViewById(R.id.btn_no)).setText(no);

		dialog.findViewById(R.id.btn_yes).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(playstore));
				mActivity.startActivity(intent);
				
				dialog.dismiss();
			}
		});

		dialog.findViewById(R.id.btn_no).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		});
		
		if (forceUpdate.equals("1")) {
			dialog.setCancelable(false);
			dialog.findViewById(R.id.btn_no).setVisibility(View.GONE);
		}

		dialog.show();
	}	
	
	public static boolean checkAppInstalled(Context context, String uri) {
		PackageManager pm = context.getPackageManager();
		boolean app_installed = false;
		try {
			pm.getPackageInfo(uri, PackageManager.GET_ACTIVITIES);
			app_installed = true;
		} catch (PackageManager.NameNotFoundException e) {
			app_installed = false;
		}
		return app_installed;
	}
	
	public static void showExit(final Context context) {
		final Dialog dialog = new Dialog(context);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.getWindow().getAttributes().windowAnimations = R.style.ConfigDialogAnimation;
		dialog.setContentView(R.layout.dialog_config);
		
		((TextView) dialog.findViewById(R.id.tv_notify)).setText("Help us by rate 5* for app?");
		((Button) dialog.findViewById(R.id.btn_yes)).setText("Rate & Exit");
		((Button) dialog.findViewById(R.id.btn_no)).setText("Exit");
		
		dialog.findViewById(R.id.btn_yes).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
				
				MobileCore.showOfferWall((Activity)context, new CallbackResponse() {
					@Override
					public void onConfirmation(TYPE arg0) {
						// TODO Auto-generated method stub
						Intent intent = new Intent(Intent.ACTION_VIEW);
						intent.setData(Uri.parse("market://details?id=" + context.getPackageName()));
						context.startActivity(intent);						
						
						((Activity) context).finish();		
					}
				});						
				
			}
		});
		
		dialog.findViewById(R.id.btn_no).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
				
				MobileCore.showOfferWall((Activity)context, new CallbackResponse() {
					@Override
					public void onConfirmation(TYPE arg0) {
						// TODO Auto-generated method stub
						((Activity) context).finish();		
					}
				});
			}
		});
		
		dialog.show();
	}
}
