package linetv.vietnam.utils;

import gentv.downloader.R;

import java.io.InputStream;
import java.util.Random;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.http.AndroidHttpClient;
import android.preference.PreferenceManager;
import android.widget.Toast;

public class Utils {
	public static String URL_REG;
	public static String URL_LOGIN;
	public static String URL_GETSTREAM;
	
	public static String getEmailGoogle(Context context) {
		Account[] accounts = AccountManager.get(context).getAccountsByType("com.google");
		for (Account account : accounts) {
		 // this is where the email should be in: 
		  return account.name;
		}
		return "";
	}
	
	public static String RandomAlphaNumericString(int maxSize, int bandwidth){
		Random rd = new Random();
		int size = rd.nextInt(maxSize - bandwidth) + bandwidth; 
//	    String chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	    String chars = "abcdefghijklmnopqrstuvwxyz0123456789";
	    String ret = "";
	    int length = chars.length();
	    for (int i = 0; i < size; i ++){
	        ret += chars.split("")[ (int) (Math.random() * (length - 1)) ];
	    }
	    return ret;
	}
	public static String stringBetweenFirst(String source, String start, String end) {
		int iStart = source.indexOf(start) + start.length();
		int iEnd = source.indexOf(end);
		if(iEnd >= iStart) {
			return source.substring(iStart, iEnd);
		}
		return "";
	}
	
	public static boolean checkExistsData(Context context) {
		SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
		String userName = sharedPreferences.getString("[GENU]", "");
		if(userName.equals("") || userName.length() == 0) {
			return false;
		} else {
			return true;
		}
	}
	
	public static String[] getDataFromSharePref(Context context) {
		String[] result = new String[3]; 
		SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
		result[0] = sharedPreferences.getString("[GENU]", "");
		result[1] = sharedPreferences.getString("[GENP]", "");
		result[2] = sharedPreferences.getString("[GENS]", "");
		return result;
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

	public static void toast(Context context, String message) {
		Toast.makeText(context, message, Toast.LENGTH_SHORT).show();
	}

	public static void checkInternetAndToast(Context c) {
		if (checkInternet(c)) {
			Toast.makeText(c, c.getString(R.string.error_download), Toast.LENGTH_SHORT).show();
		} else {
			Toast.makeText(c, c.getString(R.string.disconnected_network), Toast.LENGTH_LONG).show();
		}
	}
	
	public static void initVtvPlusApi() {
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
		
		URL_REG = "https://api.tvplus.mobi/vtvplus/index.php/mobiApi/app/registerUser?email=%s&password=%s";
		URL_LOGIN = "https://api.tvplus.mobi/vtvplus/index.php/mobiApi/tv/login?username=%s&password=%s";
		URL_GETSTREAM = "https://api.tvplus.mobi/vtvplus/index.php/mobiApi/tv/getStreamUrl?channel=%s&username=%s&session=%s";
	}
	
}
