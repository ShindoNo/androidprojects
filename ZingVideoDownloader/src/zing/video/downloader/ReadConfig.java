package zing.video.downloader;

import java.util.Random;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
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

public class ReadConfig {
	// boardcast
	public static final String ACTION_ADMOB_ID = "video.downloader.ACTION_ADMOB_ID";
	public static final String EXTRA_ADMOB_ID = "extra_admob_id";
	
	public static final String ACTION_CATEGORY = "video.downloader.ACTION_CATEGORY";
	public static final String EXTRA_CATEGORY = "extra_category";

	Context mContext;
	String mApi;

	boolean broadcastAdmobId = false;

	public ReadConfig(Context context, String api) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mApi = api;
		initConfig();
	}

	public void initConfig() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				final String configString = ServiceHelper.getData(mApi);

				((Activity) mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						{
							try {
								JSONObject config = new JSONObject(configString).getJSONObject(ConfigService.config);
								JSONObject notify = config.getJSONObject(ConfigService.notify);
								
								JSONArray category = config.getJSONArray("category");
								broadcastCategory(category.toString());

								// init GA
								String gaAll = config.getString(ConfigService.ga_all);
								if (!gaAll.equals("")) {
									Tracker trackerAll = GoogleAnalytics.getInstance(mContext).getTracker(gaAll);
									trackerAll.send(MapBuilder.createAppView().set(Fields.SCREEN_NAME, mContext.getPackageName()).build());
								}

								String gaApp = config.getString(ConfigService.ga_app);
								Tracker trackerApp = GoogleAnalytics.getInstance(mContext).getTracker(gaApp);
								trackerApp.send(MapBuilder.createAppView().set(Fields.SCREEN_NAME, mContext.getPackageName()).build());

								// broadcast admob id
								String admobId = config.getString(ConfigService.admob_id);
								Intent intent = new Intent(ACTION_ADMOB_ID);
								intent.putExtra(EXTRA_ADMOB_ID, admobId);
								mContext.sendBroadcast(intent);
								broadcastAdmobId = true;

								// check update
								String appVersion = notify.getString(ConfigService.version_app);
								String msgUpdate = notify.getString(ConfigService.msg_update);
								String playStoreUpdate = notify.getString(ConfigService.playstore_update);
								String forceUpdate = notify.getString(ConfigService.force_update);
								String btnUpdateYes = notify.getString(ConfigService.btn_update_yes);
								String btnUpdateNo = notify.getString(ConfigService.btn_update_no);

								if (checkUpdate(appVersion)) {
									showNotificationDialog(msgUpdate, btnUpdateYes, btnUpdateNo, playStoreUpdate, "", forceUpdate);
									return;
								}

								int msgCount = Integer.parseInt(notify.getString(ConfigService.msg_count));

								boolean[] flagInstalledApp = new boolean[msgCount];
								while (true) {
									// check if all app installed or not
									boolean installedAllApp = true;
									for (int i = 0; i < flagInstalledApp.length; i++) {
										if (!flagInstalledApp[i]) {
											installedAllApp = false;
										}
									}

									// if all app installed, break out of while
									// loop
									if (installedAllApp) {
										Log.e("stk", "all app installed");
										break;
									}

									Random random = new Random();
									int selectedMsg = random.nextInt(msgCount);
									Log.e("stk", "selectedMsg=" + selectedMsg);
									String selectedPackageId = notify.getString(ConfigService.packageid_ + selectedMsg);

									if (checkAppInstalled(mContext, selectedPackageId)) {
										// flag ap as installed
										flagInstalledApp[selectedMsg] = true;
									} else {
										String msg = notify.getString(ConfigService.msg_ + selectedMsg);
										String yes = notify.getString(ConfigService.yes_ + selectedMsg);
										String no = notify.getString(ConfigService.no_ + selectedMsg);
										String playstore = notify.getString(ConfigService.playstore_ + selectedMsg);
										String packageId = notify.getString(ConfigService.packageid_ + selectedMsg);

										showNotificationDialog(msg, yes, no, playstore, packageId, "");

										// break out of while loop
										break;
									}
								}
								
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();

								if (!broadcastAdmobId) {
									Intent intent = new Intent(ACTION_ADMOB_ID);
									intent.putExtra(EXTRA_ADMOB_ID, "a152732bdb1e088");
									mContext.sendBroadcast(intent);
								}
							}
						}
					}
				});
			}
		}).start();
	}
	
	public void broadcastCategory(String category) {
		try {
			Intent intent = new Intent(ACTION_CATEGORY);
			intent.putExtra(EXTRA_CATEGORY, category);
			mContext.sendBroadcast(intent);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public boolean checkUpdate(String appVersion) {
		try {
			PackageInfo packageInfo = mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0);
			String currentVersion = packageInfo.versionName;
			return !appVersion.equals(currentVersion);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}

	public void showNotificationDialog(String msg, String yes, String no, final String playstore, String packageId, String forceUpdate) {
		final Dialog dialog = new Dialog(mContext);
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
				mContext.startActivity(intent);

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

	public static void showAds(Activity activity) {
		MobileCore.showOfferWall(activity, null);
	}

	public static void showExit(final Context context) {
		final Dialog dialog = new Dialog(context);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.getWindow().getAttributes().windowAnimations = R.style.ConfigDialogAnimation;
		dialog.setContentView(R.layout.dialog_config);

		((TextView) dialog.findViewById(R.id.tv_notify)).setText("Rate 5* ủng hộ ứng dụng Việt bạn nhé!:)");
		((Button) dialog.findViewById(R.id.btn_yes)).setText("Rate & Exit");
		((Button) dialog.findViewById(R.id.btn_no)).setText("Exit");

		dialog.findViewById(R.id.btn_yes).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();

				MobileCore.showOfferWall((Activity) context, new CallbackResponse() {
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

				MobileCore.showOfferWall((Activity) context, new CallbackResponse() {
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
