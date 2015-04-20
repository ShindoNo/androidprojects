package com.sologame.sdk;

import android.app.Activity;
import android.content.Intent;
import android.widget.Toast;

import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.sologame.sdk.DialogLogin.OnLoginListener;
import com.sologame.sdk.DialogPayment.OnPayListener;
import com.sologame.sdk.util.ErrorTool;
import com.sologame.sdk.util.MyLog;
import com.sologame.sdk.util.NameSpace;
import com.sologame.sdk.util.PushTools;
import com.sologame.sdk.util.Utils;
import com.sromku.simple.fb.Permission;
import com.sromku.simple.fb.SimpleFacebook;
import com.sromku.simple.fb.SimpleFacebookConfiguration;

public class SoloSDK {

	Activity mActivity;
	SimpleFacebook mSimpleFacebook;
	public SupportButton mSupportButton;

	// public static boolean isShowingHello;

	/**
	 * SDK INIT Function
	 * 
	 * @param activity
	 */
	public SoloSDK(Activity activity, String APP_ID, String SECRET_KEY, String FACEBOOK_APP_ID) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		Utils.saveString(mActivity, NameSpace.SAVED_APP_ID, APP_ID);
		Utils.saveString(mActivity, NameSpace.SAVED_SECRET_KEY, SECRET_KEY);
		Utils.saveString(mActivity, NameSpace.SAVED_FACEBOOK_APP_ID, FACEBOOK_APP_ID);

		init();
	}

	public void init() {
		// init error tool
		ErrorTool.init();

		// init Facebook
		mSimpleFacebook = SimpleFacebook.getInstance(mActivity);
		Permission[] permissions = new Permission[] { Permission.EMAIL };
		SimpleFacebookConfiguration facebookConfiguration = new SimpleFacebookConfiguration.Builder()
				.setPermissions(permissions).setAppId(Utils.getString(mActivity, NameSpace.SAVED_FACEBOOK_APP_ID))
				.build();
		SimpleFacebook.setConfiguration(facebookConfiguration);

		// Get keyhash
		Utils.createKeyhashForFacebook(mActivity);

		// Get device token
		PushTools.logToken(mActivity);

		// Init image loader
		DisplayImageOptions displayImageOptions = new DisplayImageOptions.Builder().cacheInMemory(true)
				.cacheOnDisk(true).build();

		ImageLoaderConfiguration configuration = new ImageLoaderConfiguration.Builder(mActivity)
				.defaultDisplayImageOptions(displayImageOptions).build();

		ImageLoader.getInstance().init(configuration);
	}

	/**
	 * Must call function for login facebook
	 * 
	 * @param requestCode
	 * @param resultCode
	 * @param data
	 */
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		if (DialogLogin.isPendingLoginfacebook) {
			SimpleFacebook.getInstance(mActivity).onActivityResult(mActivity, requestCode, resultCode, data);
		}
	}

	/**
	 * Show login form, allow user login with different options and callback
	 * after login successful
	 * 
	 * @param onLoginListener
	 */
	public void login(OnLoginListener onLoginListener) {
		new DialogLogin(mActivity, onLoginListener).login();
	}

	/**
	 * Clear user login data, callback after logout successful
	 * 
	 * @param onLogoutListener
	 */
	public void logout(OnLogoutListener onLogoutListener) {
		Utils.saveString(mActivity, NameSpace.SAVED_ACCESS_TOKEN, null);
		Utils.saveString(mActivity, NameSpace.SAVED_UID, null);
		Utils.saveString(mActivity, NameSpace.SAVED_USERNAME, null);
		Utils.saveString(mActivity, NameSpace.SAVED_USER_INFO, null);

		mSimpleFacebook.logout(new com.sromku.simple.fb.listeners.OnLogoutListener() {
			@Override
			public void onFail(String arg0) {
			}

			@Override
			public void onException(Throwable arg0) {
			}

			@Override
			public void onThinking() {
			}

			@Override
			public void onLogout() {
				MyLog.log("onLogout");
			}
		});

		Toast.makeText(mActivity, mActivity.getString(R.string.logout_successful), Toast.LENGTH_SHORT).show();
		onLogoutListener.onLogoutSuccessful();
	}

	/**
	 * Open user dashboard
	 */
	public void openDashboard(OnLogoutListener onLogoutListener) {
		new DialogDashboard(mActivity, onLogoutListener);
	}

	/**
	 * Open payment
	 * 
	 * @param onPayListener
	 */
	public void openPayment(OnPayListener onPayListener) {
		new DialogPayment(mActivity, onPayListener);
	}

	/**
	 * Set server id
	 * 
	 * @param serverId
	 */
	public void setServerId(String serverId) {
		Utils.saveString(mActivity, NameSpace.SAVED_SERVER_ID, serverId);
	}

	/**
	 * Set role id
	 * 
	 * @param roleId
	 */
	public void setCharacterId(String characterId) {
		Utils.saveString(mActivity, NameSpace.SAVED_CHARACTER_ID, characterId);
	}

	public void showDashboardButton(OnLogoutListener onLogoutListener) {
		if (mSupportButton == null) {
			mSupportButton = new SupportButton(mActivity, onLogoutListener);
		}

		mSupportButton.showButton();
	}

	public void hideDashboardButton() {
		if (mSupportButton != null) {
			mSupportButton.hideButton();
		}
	}

	public void onPause() {
		if (mSupportButton != null) {
			mSupportButton.onPause();
		}
	}

	public void onResume() {
		if (mSupportButton != null) {
			mSupportButton.onResume();
		}
	}

	public void onDestroy() {
		if (mSupportButton != null) {
			mSupportButton.onDestroy();
		}
	}

	/**
	 * Interface for logout
	 *
	 */
	public interface OnLogoutListener {
		public void onLogoutSuccessful();
	}

}
