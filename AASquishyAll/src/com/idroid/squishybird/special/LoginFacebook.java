package com.idroid.squishybird.special;
//package com.idroid.squishy.bird;
//
//import java.io.File;
//import java.io.FileNotFoundException;
//import java.security.MessageDigest;
//import java.security.NoSuchAlgorithmException;
//import java.util.Arrays;
//import java.util.Collection;
//import java.util.List;
//import android.app.Activity;
//import android.content.Context;
//import android.content.pm.PackageInfo;
//import android.content.pm.PackageManager;
//import android.content.pm.Signature;
//import android.content.pm.PackageManager.NameNotFoundException;
//import android.graphics.Bitmap;
//import android.util.Base64;
//import android.util.Log;
//import android.widget.Toast;
//
//import com.facebook.FacebookRequestError;
//import com.facebook.Request;
//import com.facebook.Response;
//import com.facebook.Session;
//import com.facebook.Session.OpenRequest;
//import com.facebook.Session.StatusCallback;
//import com.facebook.SessionState;
//
//public class LoginFacebook {
//	
//	Context mContext;
//	boolean pendingLogin;
//	OnLoginFacebookListener mOnLoginFacebookListener;
//	
//	OnShareFacebookListener mOnShareFacebookListener;
//	List<String> PERMISSIONS = Arrays.asList("publish_actions");
//	boolean pendingPublishImageBitmap;
//	String pendingText;
//	Bitmap pendingBitmap;
//	
//	File pendingFile;
//	boolean pendingPublishFile;
//	
//	public LoginFacebook(Context context) {
//		// TODO Auto-generated constructor stub
//		mContext = context;
//	}	
//
//	public void loginFacebook(OnLoginFacebookListener onLoginFacebookListener) {
//		StatusCallback callbackForLogin = new StatusCallback() {
//			@Override
//			public void call(Session session, SessionState state, Exception exception) {
//				// TODO Auto-generated method stub
//				if (exception != null) {
//					if (exception.getMessage() != null) {
//						Toast.makeText(mContext, exception.getMessage(), Toast.LENGTH_SHORT).show();
//					}
//				}
//
//				if (state.equals(SessionState.OPENED) && pendingLogin) {
//					pendingLogin = false;
//					mOnLoginFacebookListener.onLoginFacebookSuccessful();
//				}
//			}
//		};	
//		
//		if (Session.openActiveSessionFromCache(mContext) == null) {
//			pendingLogin = true;
//			mOnLoginFacebookListener = onLoginFacebookListener;
//			
//			OpenRequest openRequest = new OpenRequest((Activity) mContext);
//			openRequest.setPermissions(Arrays.asList("basic_info", "email"));
//			
//			openRequest.setCallback(callbackForLogin);
//
//			Session session = new Session(mContext);
//			Session.setActiveSession(session);
//			session.openForRead(openRequest);
//		} else {
//			Session	session = Session.openActiveSessionFromCache(mContext);
//			
//			if (session.isOpened()) {
//				onLoginFacebookListener.onLoginFacebookSuccessful();
//			} else {
//				Session.setActiveSession(null);
//				loginFacebook(onLoginFacebookListener);
//			}
//		}
//	}
//
//	public static void logoutFacebook() {
//		if (Session.getActiveSession() != null) {
//			Session.getActiveSession().closeAndClearTokenInformation();
//		}
//		Session.setActiveSession(null);
//	}
//	
//	public void shareFacebook(final String text, final Bitmap image, final OnShareFacebookListener onShareFacebookListener) {
//		mOnShareFacebookListener = onShareFacebookListener;
//		
//		// check session state; if state=opened then publish else require login
//		if (Session.openActiveSessionFromCache(mContext) != null && Session.openActiveSessionFromCache(mContext).isOpened()) {
//			publishImageBitmap(text, image);
//		} else {
//			loginFacebook(new OnLoginFacebookListener() {
//				@Override
//				public void onLoginFacebookSuccessful() {
//					// TODO Auto-generated method stub
//					shareFacebook(text, image, onShareFacebookListener);
//				}
//			});
//		}
//	}
//	
//	public void shareFacebook(final String text, final File image, final OnShareFacebookListener onShareFacebookListener) {
//		mOnShareFacebookListener = onShareFacebookListener;
//		
//		// check session state; if state=opened then publish else require login
//		if (Session.openActiveSessionFromCache(mContext) != null && Session.openActiveSessionFromCache(mContext).isOpened()) {
//			publishImageFile(text, image);
//		} else {
//			loginFacebook(new OnLoginFacebookListener() {
//				@Override
//				public void onLoginFacebookSuccessful() {
//					// TODO Auto-generated method stub
//					shareFacebook(text, image, onShareFacebookListener);
//				}
//			});
//		}
//	}	
//	
//
//	
//	public void publishImageBitmap(final String text, final Bitmap image) {
//		// logged in successful before go to here
//		Session session = Session.openActiveSessionFromCache(mContext);
//		
//		// Check for publish permissions
//		List<String> permissions = session.getPermissions();
//		if (!isSubsetOf(PERMISSIONS, permissions)) {
//			pendingPublishImageBitmap = true;
//			pendingText = text;
//			pendingBitmap = image;
//			
//			StatusCallback callbackForPublish = new StatusCallback() {
//				@Override
//				public void call(Session session, SessionState state, Exception exception) {
//					// TODO Auto-generated method stub
//					if (exception != null) {
//						if (exception.getMessage()!= null) {
//							Toast.makeText(mContext, exception.getMessage(), Toast.LENGTH_SHORT).show();
//						}
//					}
//					
//					if (state.equals(SessionState.OPENED_TOKEN_UPDATED)) {
//						if (pendingPublishImageBitmap) {
//							pendingPublishImageBitmap = false;
//							publishImageBitmap(pendingText, pendingBitmap);
//						}
//					}					
//					
//				}
//			};				
//			
//			Session.getActiveSession().addCallback(callbackForPublish);
//			Session.NewPermissionsRequest newPermissionsRequest = new Session.NewPermissionsRequest((Activity)mContext, PERMISSIONS);
//			session.requestNewPublishPermissions(newPermissionsRequest);
//			return;
//		}
//
//		Request.Callback callback = new Request.Callback() {
//			public void onCompleted(Response response) {
//				FacebookRequestError error = response.getError();
//				if (error != null) {
//					mOnShareFacebookListener.onFailed();
//					Toast.makeText(mContext, error.getErrorMessage(), Toast.LENGTH_SHORT).show();
//				} else {
//					mOnShareFacebookListener.onSuccessful();
//				}
//			}
//		};
//
//		Request photoRequest = Request.newUploadPhotoRequest(session, image, callback);
//		photoRequest.getParameters().putString("message", text);
//		photoRequest.executeAsync();
//	}
//	
//	
//	public void publishImageFile(final String text, final File image) {
//		// logged in successful before go to here
//		Session session = Session.openActiveSessionFromCache(mContext);
//		
//		// Check for publish permissions
//		List<String> permissions = session.getPermissions();
//		if (!isSubsetOf(PERMISSIONS, permissions)) {
//			pendingPublishFile = true;
//			pendingText = text;
//			pendingFile = image;
//			
//			StatusCallback callbackForPublish = new StatusCallback() {
//				@Override
//				public void call(Session session, SessionState state, Exception exception) {
//					// TODO Auto-generated method stub
//					if (exception != null) {
//						if (exception.getMessage()!= null) {
//							Toast.makeText(mContext, exception.getMessage(), Toast.LENGTH_SHORT).show();
//						}
//					}
//					
//					if (state.equals(SessionState.OPENED_TOKEN_UPDATED)) {
//						if (pendingPublishFile) {
//							pendingPublishFile = false;
//							publishImageFile(text, image);
//						}
//					}					
//					
//				}
//			};				
//			
//			Session.getActiveSession().addCallback(callbackForPublish);
//			Session.NewPermissionsRequest newPermissionsRequest = new Session.NewPermissionsRequest((Activity)mContext, PERMISSIONS);
//			session.requestNewPublishPermissions(newPermissionsRequest);
//			return;
//		}
//
//		Request.Callback callback = new Request.Callback() {
//			public void onCompleted(Response response) {
//				FacebookRequestError error = response.getError();
//				if (error != null) {
//					mOnShareFacebookListener.onFailed();
//					Toast.makeText(mContext, error.getErrorMessage(), Toast.LENGTH_SHORT).show();
//				} else {
//					mOnShareFacebookListener.onSuccessful();
//				}
//			}
//		};
//
//		Request photoRequest;
//		try {
//			photoRequest = Request.newUploadPhotoRequest(session, image, callback);
//			photoRequest.getParameters().putString("message", text);
//			photoRequest.executeAsync();
//		} catch (FileNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//	}	
//	
//
//	private boolean isSubsetOf(Collection<String> subset, Collection<String> superset) {
//		for (String string : subset) {
//			if (!superset.contains(string)) {
//				return false;
//			}
//		}
//		return true;
//	}	
//
//	public interface OnLoginFacebookListener {
//		public void onLoginFacebookSuccessful();
//	}
//	
//	public interface OnShareFacebookListener {
//		public void onSuccessful();
//		public void onFailed();
//	}	
//
//	public static void createKeyhasForFacebook(Context context) {
//		PackageInfo info;
//		try {
//			info = context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.GET_SIGNATURES);
//			for (Signature signature : info.signatures) {
//				MessageDigest md;
//				md = MessageDigest.getInstance("SHA");
//				md.update(signature.toByteArray());
//				String something = new String(Base64.encode(md.digest(), 0));
//				Log.e("stk", "KEYHASH=" + something);
//			}
//		} catch (NameNotFoundException e1) {
//			Log.e("name not found", e1.toString());
//		} catch (NoSuchAlgorithmException e) {
//			Log.e("no such an algorithm", e.toString());
//		} catch (Exception e) {
//			Log.e("exception", e.toString());
//		}
//	}
//
//}
