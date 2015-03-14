package vn.cgo.sdk.utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.io.IOUtils;
import org.json.JSONObject;

import vn.cgo.sdk.R;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.preference.PreferenceManager;
import android.util.Base64;
import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;

public class Utils {
	
	public static void createKeyhasForFacebook(Context context) {
		PackageInfo info;
		try {
		    info = context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.GET_SIGNATURES);
		    for (Signature signature : info.signatures) {
		        MessageDigest md;
		        md = MessageDigest.getInstance("SHA");
		        md.update(signature.toByteArray());
		        String something = new String(Base64.encode(md.digest(), 0));
		        Log.e("cgo", "KEYHASH=" + something);
		    }
		} catch (NameNotFoundException e1) {
		    Log.e("name not found", e1.toString());
		} catch (NoSuchAlgorithmException e) {
		    Log.e("no such an algorithm", e.toString());
		} catch (Exception e) {
		    Log.e("exception", e.toString());
		}			
	}
	
	public static boolean checkInternet(Context c) {
		ConnectivityManager cm = (ConnectivityManager) c.getSystemService(Context.CONNECTIVITY_SERVICE);
		android.net.NetworkInfo wifi = cm.getNetworkInfo(ConnectivityManager.TYPE_WIFI);
		android.net.NetworkInfo mobile = cm.getNetworkInfo(ConnectivityManager.TYPE_MOBILE);
		if (wifi.isConnected() || mobile.isConnected())
			return true;
		else
			return false;
	}

	public static boolean isNetworkConnected(Context context) {
		ConnectivityManager cm = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
		NetworkInfo ni = cm.getActiveNetworkInfo();
		if (ni == null) {
			// There are no active networks.
			return false;
		} else
			return true;
	}
	
	public static void checkInternetAndToast(Context context) {
		if (checkInternet(context)) {
			Toast.makeText(context, context.getString(R.string.load_failed), Toast.LENGTH_SHORT).show();
		} else {
			Toast.makeText(context, context.getString(R.string.check_internet), Toast.LENGTH_SHORT).show();
		}
	}

	public static String MD5(String text) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		MessageDigest md;
		md = MessageDigest.getInstance("MD5");
		byte[] md5hash = new byte[32];
		md.update(text.getBytes("iso-8859-1"), 0, text.length());
		md5hash = md.digest();
		return convertToHex(md5hash);
	}

	private static String convertToHex(byte[] data) {
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < data.length; i++) {
			int halfbyte = (data[i] >>> 4) & 0x0F;
			int two_halfs = 0;
			do {
				if ((0 <= halfbyte) && (halfbyte <= 9))
					buf.append((char) ('0' + halfbyte));
				else
					buf.append((char) ('a' + (halfbyte - 10)));
				halfbyte = data[i] & 0x0F;
			} while (two_halfs++ < 1);
		}
		return buf.toString();
	}

	public static String checkSum(String input) {
		try {
			return MD5(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		}
	}

	public static void toggleSoftKeyboard(Context context) {
		InputMethodManager imm = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
		imm.toggleSoftInput(0, 0);
	}

	public static String getAppId(Context context) {
		try {
			String configString = IOUtils.toString(context.getAssets().open("cgo.txt"));
			JSONObject configJSON = new JSONObject(configString);
			return configJSON.getString("app_id");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "";
		}
	}
	
	public static void saveClientName(Context context, String clientName) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_CLIENTNAME, clientName).commit();
	}
	
	public static String getClientName(Context context) {
		String clientName = PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_CLIENTNAME, null);
		if (clientName != null) {
			return clientName;
		}
		
		try {
			String configString = IOUtils.toString(context.getAssets().open("cgo.txt"));
			JSONObject configJSON = new JSONObject(configString);
			return configJSON.getString("clientname");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}		
	}
	
	public static void saveSubClient(Context context, String subClient) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_SUBCLIENT, subClient).commit();
	}
	
	public static String getSubClient(Context context) {
		String subClient = PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_SUBCLIENT, null);
		if (subClient != null) {
			return subClient;
		}
		
		try {
			String configString = IOUtils.toString(context.getAssets().open("cgo.txt"));
			JSONObject configJSON = new JSONObject(configString);
			return configJSON.getString("subclient");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}		
	}	
	
	public static void saveOtherParams(Context context, String otherParams) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_OTHERPARAMS, otherParams).commit();
	}
	
	public static String getOtherParams(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_OTHERPARAMS, null);
	}

	public static String getVersionCode(Context context) {
		try {
			PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
			return packageInfo.versionCode + "";
		} catch (NameNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}

	public static String getVersionName(Context context) {
		PackageInfo packageInfo;
		try {
			packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
			return packageInfo.versionName;
		} catch (NameNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	
	public static String getAccessToken(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_ACCESS_TOKEN, "");
	}
	
	public static void saveAccessToken(Context context, String accessToken) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_ACCESS_TOKEN, accessToken).commit();
	}
	
	public static String getRememberEmail(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_REMEMBER_EMAIL, "");
	}
	
	public static void saveRememberEmail(Context context, String email) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_REMEMBER_EMAIL, email).commit();
	}
	
	public static void saveRoleId(Context context, String roleId) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_ROLE_ID, roleId).commit();
	}
	
	public static String getRoleId(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_ROLE_ID, "");
	}
	
	public static void saveAreaId(Context context, String areaId) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_AREA_ID, areaId).commit();
	}
	
	public static String getAreaId(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_AREA_ID, "");
	}	
	
	public static void saveGameInfo(Context context, String gameInfo) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(NameSpace.SHARED_PREF_GAME_INFO, gameInfo).commit();
	}
	
	public static String getGameInfo(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(NameSpace.SHARED_PREF_GAME_INFO, "");
	}
	
	public static void saveData(Context context, String key, String value) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(key, value).commit();
	}
	
	public static String getData(Context context, String key) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(key, null);
	}
	
	
	public static String getDefaultParams(Context context) {
		String param = "app_key=%s&app_id=%s&clientname=%s&subclient=%s&otherparams=%s&gver=%s&sdkver=%s&device_model=%s&device_version=%s&mac_address=%s&access_token=%s&areaid=%s&roleid=%s&area_id=%s&role_id=%s";
		param = String.format(param,
							Utils.getAppId(context),
							Utils.getAppId(context),
							Utils.getClientName(context),
							Utils.getSubClient(context),
							Utils.getOtherParams(context),
							Utils.getVersionName(context),
							context.getString(R.string.sdk_version),
							DeviceInfo.getPhoneModel(),
							DeviceInfo.getAndroidVersion(),
							DeviceInfo.getMACAddress(context),
							Utils.getAccessToken(context),
							Utils.getAreaId(context),
							Utils.getRoleId(context),
							Utils.getAreaId(context),
							Utils.getRoleId(context));
		return param;
	}
	
	public static void registerDevice(final Context context, final String deviceId) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				Log.e("cgo", "registerDevice; regId=" + deviceId);
				
				String params = Utils.getDefaultParams(context) +
						"&device_token=" + deviceId +
						"&type=android" +
						"&bundleid=" + context.getPackageName();
				ServiceHelper.post(NameSpace.API_REGISTER_GCM, params);
			}
		}).start();
	}
	
}
