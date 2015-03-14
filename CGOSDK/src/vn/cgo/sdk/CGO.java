package vn.cgo.sdk;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import vn.cgo.sdk.DialogLogin.OnLoginListener;
import vn.cgo.sdk.DialogPayment.OnPayListener;
import vn.cgo.sdk.LoginFacebook.OnLoginFacebookListener;
import vn.cgo.sdk.utils.NameSpace;
import vn.cgo.sdk.utils.ServiceHelper;
import vn.cgo.sdk.utils.Utils;
import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.Request;
import com.facebook.RequestAsyncTask;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;
import com.facebook.widget.WebDialog;
import com.facebook.widget.WebDialog.OnCompleteListener;
import com.facebook.widget.WebDialog.RequestsDialogBuilder;
import com.google.analytics.tracking.android.Fields;
import com.google.analytics.tracking.android.GoogleAnalytics;
import com.google.analytics.tracking.android.MapBuilder;
import com.google.android.gcm.GCMRegistrar;
import com.nostra13.universalimageloader.cache.disc.impl.UnlimitedDiscCache;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.utils.StorageUtils;

public class CGO {

	Activity mActivity;
	DialogLogin dialogLogin;

	public CGO(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		init();
	}

	public void init() {
		Utils.createKeyhasForFacebook(mActivity);
		initGCM();
		initGA();
		initImageLoader();
	}

	public void initGCM() {
		try {
			GCMRegistrar.checkDevice(mActivity);
			GCMRegistrar.checkManifest(mActivity);
			String regId = GCMRegistrar.getRegistrationId(mActivity);

			if (regId.equals("")) {
				GCMRegistrar.register(mActivity, mActivity.getString(R.string.gcm_app_id));
			} else {
				Utils.registerDevice(mActivity, regId);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void initGA() {
		final GoogleAnalytics googleAnalytics = GoogleAnalytics.getInstance(mActivity);

		// GA All Games
		googleAnalytics.getTracker("UA-34210127-11").send(MapBuilder.createAppView().set(Fields.SCREEN_NAME, mActivity.getPackageName()).build());

		// GA Game via API
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String response = ServiceHelper.get(NameSpace.API_GAME_INFO, Utils.getDefaultParams(mActivity));
				if (response != null) {
					try {
						// save game info
						Utils.saveGameInfo(mActivity, response);
						
						JSONObject responseJSON = new JSONObject(response);
						String ga_code = responseJSON.getString("ga_code");
						googleAnalytics.getTracker(ga_code).send(MapBuilder.createAppView().set(Fields.SCREEN_NAME, mActivity.getPackageName()).build());
					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}).start();
	}
	
	public void initImageLoader() {
		try {
			String CACHE_DIR = Environment.getExternalStorageDirectory().getAbsolutePath() + "/.temp_tmp";
			new File(CACHE_DIR).mkdirs();

			File cacheDir = StorageUtils.getOwnCacheDirectory(mActivity, CACHE_DIR);

			DisplayImageOptions defaultOptions = new DisplayImageOptions.Builder().cacheOnDisc(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Bitmap.Config.RGB_565).build();
			ImageLoaderConfiguration.Builder builder = new ImageLoaderConfiguration.Builder(mActivity).defaultDisplayImageOptions(defaultOptions).discCache(new UnlimitedDiscCache(cacheDir))
					.memoryCache(new WeakMemoryCache());

			ImageLoaderConfiguration config = builder.build();
			ImageLoader.getInstance().init(config);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}	

	public void login(OnLoginListener onLoginListener) {
		dialogLogin = new DialogLogin(mActivity, onLoginListener);
		dialogLogin.showDialogLogin();
	}

	public void logout() {
		Utils.saveAccessToken(mActivity, "");
		LoginFacebook.logoutFacebook();
		if (dialogLogin != null && dialogLogin.mLoginGoogle != null) {
			dialogLogin.mLoginGoogle.logout();
		}

		if (Utils.getClientName(mActivity).equals(DialogLogin.ZING_CLIENTNAME)) {
			LoginZing.logout(mActivity);
		}

	}

	public void payment() {
		new DialogPayment(mActivity).showDialogPayment();
	}
	
	public void payment(OnPayListener onPayListener) {
		new DialogPayment(mActivity, onPayListener).showDialogPayment();
	}	

	public void openDashboard() {
		String webUrl = NameSpace.WEBVIEW_DASHBOARD + Utils.getDefaultParams(mActivity);
		new DialogDashboardAndForum(mActivity, webUrl);
	}

	public void openForum() {
		String webUrl = NameSpace.WEBVIEW_FORUM + Utils.getDefaultParams(mActivity);
		new DialogDashboardAndForum(mActivity, webUrl);
	}

	public void onActivityResult(int requestCode, int resultCode, android.content.Intent data) {
		if (dialogLogin != null) {
			dialogLogin.onActivityResult(requestCode, resultCode, data);
		}
	};
	
	public void onDestroy() {
		if (supportButton != null) {
			supportButton.isDestroyed = true;
		}
 	}

	public void setUserInfo(String areaId, String roleId) {
		Utils.saveAreaId(mActivity, areaId);
		Utils.saveRoleId(mActivity, roleId);

		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				ServiceHelper.get(NameSpace.API_LOG_PLAY_USER, Utils.getDefaultParams(mActivity));
			}
		}).start();
	}

	/** ------------- Facebook Share ------------- */
	/** ------------- Facebook Share ------------- */
	/** ------------- Facebook Share ------------- */
	boolean pendingPublishLink;
	boolean pendingPublishImageFile;
	boolean pendingPublishImageBitmap;
	String pendingText;
	String pendingLink;
	File pendingImageFile;
	Bitmap pendingImageBitmap;
	List<String> PERMISSIONS = Arrays.asList("publish_actions");
	OnShareFacebookListener mOnShareFacebookListener;

	StatusCallback callback = new StatusCallback() {
		@Override
		public void call(Session session, SessionState state, Exception exception) {
			// TODO Auto-generated method stub
			Log.e("cgo", "CGO: StatusCallback changed, state=" + state);

			if (state.equals(SessionState.OPENED_TOKEN_UPDATED)) {
				if (pendingPublishLink) {
					pendingPublishLink = false;
					publishLink(pendingText, pendingLink);
				}

				if (pendingPublishImageFile) {
					pendingPublishImageFile = false;
					publishImageFile(pendingText, pendingImageFile);
				}

				if (pendingPublishImageBitmap) {
					pendingPublishImageBitmap = false;
					publishImageBitmap(pendingText, pendingImageBitmap);
				}
			}
		}
	};

	public void shareFacebook(final String text, final String link, final OnShareFacebookListener onShareFacebookListener) {
		mOnShareFacebookListener = onShareFacebookListener;

		Session session = Session.getActiveSession();
		if (session == null) {
			session = Session.openActiveSessionFromCache(mActivity);
		}

		if (session != null) {
			session.addCallback(callback);
			publishLink(text, link);
		} else {
//			Toast.makeText(mActivity, mActivity.getString(R.string.need_login_facebook), Toast.LENGTH_SHORT).show();
			LoginFacebook.loginFacebook(mActivity, new OnLoginFacebookListener() {
				@Override
				public void onLoginFacebookSuccessful() {
					// TODO Auto-generated method stub
					shareFacebook(text, link, onShareFacebookListener);
				}
				
				@Override
				public void onLoginFacebookNeedConnectCGO(String email, String facebookAccessToken) {}
			});
		}
	}

	public void shareFacebook(final String text, final File image, final OnShareFacebookListener onShareFacebookListener) {
		mOnShareFacebookListener = onShareFacebookListener;

		Session session = Session.getActiveSession();
		if (session == null) {
			session = Session.openActiveSessionFromCache(mActivity);
		}

		if (session != null) {
			session.addCallback(callback);
			publishImageFile(text, image);
		} else {
//			Toast.makeText(mActivity, mActivity.getString(R.string.need_login_facebook), Toast.LENGTH_SHORT).show();
			LoginFacebook.loginFacebook(mActivity, new OnLoginFacebookListener() {
				@Override
				public void onLoginFacebookSuccessful() {
					// TODO Auto-generated method stub
					shareFacebook(text, image, onShareFacebookListener);
				}
				
				@Override
				public void onLoginFacebookNeedConnectCGO(String email, String facebookAccessToken) {}
			});
		}
	}

	public void shareFacebook(final String text, final Bitmap image, final OnShareFacebookListener onShareFacebookListener) {
		mOnShareFacebookListener = onShareFacebookListener;

		Session session = Session.getActiveSession();

		if (session == null) {
			session = Session.openActiveSessionFromCache(mActivity);
		}

		if (session != null) {
			session.addCallback(callback);
			publishImageBitmap(text, image);
		} else {
//			Toast.makeText(mActivity, mActivity.getString(R.string.need_login_facebook), Toast.LENGTH_SHORT).show();
			LoginFacebook.loginFacebook(mActivity, new OnLoginFacebookListener() {
				@Override
				public void onLoginFacebookSuccessful() {
					// TODO Auto-generated method stub
					shareFacebook(text, image, onShareFacebookListener);
				}
				
				@Override
				public void onLoginFacebookNeedConnectCGO(String email, String facebookAccessToken) {}
			});
		}
	}
	
	public void shareFacebookScreenshot(String text, OnShareFacebookListener onShareFacebookListener) {
		// create bitmap screen capture
		Bitmap bitmap;
		View v1 = mActivity.findViewById(android.R.id.content).getRootView();
		v1.setDrawingCacheEnabled(true);
		bitmap = Bitmap.createBitmap(v1.getDrawingCache());
		v1.setDrawingCacheEnabled(false);
		
		shareFacebook(text, bitmap, onShareFacebookListener);
	}

	public void publishLink(String text, String link) {
		Session session = Session.getActiveSession();

		if (session != null) {
			// Check for publish permissions
			List<String> permissions = session.getPermissions();
			if (!isSubsetOf(PERMISSIONS, permissions)) {
				pendingPublishLink = true;
				pendingText = text;
				pendingLink = link;
				Session.NewPermissionsRequest newPermissionsRequest = new Session.NewPermissionsRequest(mActivity, PERMISSIONS);
				session.requestNewPublishPermissions(newPermissionsRequest);
				return;
			}

			Bundle postParams = new Bundle();
			postParams.putString("message", text);
			postParams.putString("link", link);

			Request.Callback callback = new Request.Callback() {
				public void onCompleted(Response response) {
					FacebookRequestError error = response.getError();
					if (error != null) {
						Toast.makeText(mActivity, error.getErrorMessage(), Toast.LENGTH_SHORT).show();
						mOnShareFacebookListener.onFailed();
					} else {
						Toast.makeText(mActivity, mActivity.getString(R.string.share_facebook_successful), Toast.LENGTH_SHORT).show();
						mOnShareFacebookListener.onSuccessful();
					}
				}
			};

			Request request = new Request(session, "me/feed", postParams, HttpMethod.POST, callback);
			RequestAsyncTask task = new RequestAsyncTask(request);
			task.execute();
		}
	}

	public void publishImageFile(String text, File image) {
		Session session = Session.getActiveSession();

		if (session != null) {
			// Check for publish permissions
			List<String> permissions = session.getPermissions();
			if (!isSubsetOf(PERMISSIONS, permissions)) {
				pendingPublishImageFile = true;
				pendingText = text;
				pendingImageFile = image;
				Session.NewPermissionsRequest newPermissionsRequest = new Session.NewPermissionsRequest(mActivity, PERMISSIONS);
				session.requestNewPublishPermissions(newPermissionsRequest);
				return;
			}

			Request.Callback callback = new Request.Callback() {
				public void onCompleted(Response response) {
					FacebookRequestError error = response.getError();
					if (error != null) {
						Toast.makeText(mActivity, error.getErrorMessage(), Toast.LENGTH_SHORT).show();
						mOnShareFacebookListener.onFailed();
					} else {
						Toast.makeText(mActivity, mActivity.getString(R.string.share_facebook_successful), Toast.LENGTH_SHORT).show();
						mOnShareFacebookListener.onSuccessful();
					}
				}
			};

			try {
				Request photoRequest = Request.newUploadPhotoRequest(session, image, callback);
				photoRequest.getParameters().putString("message", text);
				photoRequest.executeAsync();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public void publishImageBitmap(String text, Bitmap image) {
		Session session = Session.getActiveSession();

		if (session != null) {
			// Check for publish permissions
			List<String> permissions = session.getPermissions();
			if (!isSubsetOf(PERMISSIONS, permissions)) {
				pendingPublishImageBitmap = true;
				pendingText = text;
				pendingImageBitmap = image;
				Session.NewPermissionsRequest newPermissionsRequest = new Session.NewPermissionsRequest(mActivity, PERMISSIONS);
				session.requestNewPublishPermissions(newPermissionsRequest);
				return;
			}

			Request.Callback callback = new Request.Callback() {
				public void onCompleted(Response response) {
					FacebookRequestError error = response.getError();
					if (error != null) {
						Toast.makeText(mActivity, error.getErrorMessage(), Toast.LENGTH_SHORT).show();
						mOnShareFacebookListener.onFailed();
					} else {
						Toast.makeText(mActivity, mActivity.getString(R.string.share_facebook_successful), Toast.LENGTH_SHORT).show();
						mOnShareFacebookListener.onSuccessful();
					}
				}
			};

			Request photoRequest = Request.newUploadPhotoRequest(session, image, callback);
			photoRequest.getParameters().putString("message", text);
			photoRequest.executeAsync();
		}
	}

	private boolean isSubsetOf(Collection<String> subset, Collection<String> superset) {
		for (String string : subset) {
			if (!superset.contains(string)) {
				return false;
			}
		}
		return true;
	}

	public interface OnShareFacebookListener {
		public void onSuccessful();
		public void onFailed();
	}
	
	public interface OnRequestFacebookListener {
		public void onSucessful();
		public void onFailed();
	}
	
	public void sendFacbookRequest(final OnRequestFacebookListener onRequestFacebookListener) {
		Session session = Session.getActiveSession();
		if (session == null) {
			session = Session.openActiveSessionFromCache(mActivity);
		}
		
//		if (session == null) {
//			Toast.makeText(mActivity, mActivity.getString(R.string.need_login_facebook), Toast.LENGTH_SHORT).show();
//			return;
//		}
		
		if (session == null) {
			LoginFacebook loginFacebook = new LoginFacebook(mActivity, new OnLoginFacebookListener() {
				@Override
				public void onLoginFacebookSuccessful() {
					// TODO Auto-generated method stub
					sendFacbookRequest(onRequestFacebookListener);
				}
				
				@Override
				public void onLoginFacebookNeedConnectCGO(String email, String facebookAccessToken) {
					// TODO Auto-generated method stub
					sendFacbookRequest(onRequestFacebookListener);
				}
			});
			loginFacebook.login();
			
			return;
		}
		
		Bundle bundle = new Bundle();
		bundle.putString("message", "Play game with me!");
		WebDialog.RequestsDialogBuilder requestsDialogBuilder = new RequestsDialogBuilder(mActivity, session, bundle);
		requestsDialogBuilder.setOnCompleteListener(new OnCompleteListener() {
			@Override
			public void onComplete(final Bundle values, FacebookException error) {
				// TODO Auto-generated method stub
				if (error != null) {
					onRequestFacebookListener.onFailed();
					if (error instanceof FacebookOperationCanceledException) {
						Toast.makeText(mActivity, "Request Cancelled", Toast.LENGTH_SHORT).show();
					} else {
						Toast.makeText(mActivity, "Network Error", Toast.LENGTH_SHORT).show();
					}
				} else {
					final String request = values.getString("request");
					if (request == null) {
						onRequestFacebookListener.onFailed();
						Toast.makeText(mActivity, "Request Cancelled", Toast.LENGTH_SHORT).show();
					} else {
						onRequestFacebookListener.onSucessful();
						Toast.makeText(mActivity, "Request Sent", Toast.LENGTH_SHORT).show();
						
						new Thread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								String paramsRequest = "request=" + request; 
								for (int i = 0; i < values.size()-1; i++) {
									paramsRequest = paramsRequest + "&to[" + i + "]=" + values.getString("to[" + i + "]");
								}
								Log.e("cgo", "paramRequest=" + paramsRequest);
								String paramsRequestBase64 = Base64.encodeToString(paramsRequest.getBytes(), Base64.DEFAULT);
								String params = Utils.getDefaultParams(mActivity) + "&data=" + paramsRequestBase64;
								ServiceHelper.post(NameSpace.API_REQUEST_FACEBOOK, params);				
							}
						}).start();
					}
				}
			}
		});
		
		requestsDialogBuilder.build().show();
	}

	/**
	 * Dashboard Assitive Button
	 */

	SupportButton supportButton;

	public void showDashboardButton() {
		// wait until hide hello dialog
		if (DialogLogin.sShowingHelloDialog) {
			new Handler().postDelayed(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					showDashboardButton();
				}
			}, 300);
			return;
		}
		if (supportButton == null) {
			supportButton = new SupportButton(mActivity);	
		} else {
			supportButton.supportView.setVisibility(View.VISIBLE);
		}
	}
	
	public void showDashboardButton(final OnRequestFacebookListener onRequestFacebookListener) {
		// wait until hide hello dialog
		if (DialogLogin.sShowingHelloDialog) {
			new Handler().postDelayed(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					showDashboardButton(onRequestFacebookListener);
				}
			}, 300);
			return;
		}
		if (supportButton == null) {
			supportButton = new SupportButton(mActivity, onRequestFacebookListener);	
		} else {
			supportButton.supportView.setVisibility(View.VISIBLE);
		}
	}	

	public void hideDashboardButton() {
		if (supportButton != null) {
			supportButton.supportView.setVisibility(View.GONE);
		}
	}
	
	public static void showDashboard(Activity activity) {
		new DialogDashboard(activity);
	}
	
	public static void showDashboard(Activity activity, OnRequestFacebookListener onRequestFacebookListener) {
		new DialogDashboard(activity, onRequestFacebookListener);
	}	
	
}
