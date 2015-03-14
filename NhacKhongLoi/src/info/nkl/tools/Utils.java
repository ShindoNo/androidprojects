package info.nkl.tools;

import java.io.InputStream;
import java.util.Random;

import info.nkl.services.KeyService;
import info.nkl.services.ListAlbumsService;
import info.nkl.services.NameSpace;
import info.nkl.services.AlbumDetailService;
import android.app.Activity;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.http.AndroidHttpClient;
import android.util.Log;
import android.widget.Toast;

public class Utils {
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

	public static void checkInternetAndToast(Context context) {
		if (checkInternet(context)) {
			toast(context, "Lỗi tải dữ liệu");
		} else {
			toast(context, "Mất kết nối");
		}
	}
	
	public static void checkInternetAndToast(final Activity activity) {
		activity.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				if (checkInternet(activity)) {
					toast(activity, "Lỗi tải dữ liệu");
				} else {
					toast(activity, "Mất kết nối");
				}
			}
		});
	}

//	public static void decryptApiLink() {
////		MCrypt mCrypt = new MCrypt(NameSpace.ENCRYPT_IV , NameSpace.ENCRYPT_SECRET_KEY);
//		try {
////			NameSpace.API_ID = mCrypt.decryptFromHexString(NameSpace.API_ID);
////			NameSpace.SECRET_KEY = mCrypt.decryptFromHexString(NameSpace.SECRET_KEY);
//			
////			CategoryService.API_CATEGORY_SERVICE = mCrypt.decryptFromHexString(CategoryService.API_CATEGORY_SERVICE);
////			ListAlbumsService.API_LIST_ALBUM_SERVICE = mCrypt.decryptFromHexString(ListAlbumsService.API_LIST_ALBUM_SERVICE);
////			SingleAlbumService.API_SINGLE_ALBUM_SERVICE = mCrypt.decryptFromHexString(SingleAlbumService.API_SINGLE_ALBUM_SERVICE);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}

	public static void initEncryptKey() {
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
		
		NameSpace.ENCRYPT_SECRET_KEY = "nhackhongloiinfo";
		NameSpace.ENCRYPT_IV_SYSTIME_DECRYPT = "sys_timesys_time";
		NameSpace.ENCRYPT_IV_SYSTIME_ENCRYPT = "adasdasdasdasdad";
		NameSpace.ENCRYPT_IV_MP3_DECRYPT = "_mp3_mp3_mp3_mp3";
		
		KeyService.MCYRPT_SYSTIME_ENCRYPT = new MCrypt(NameSpace.ENCRYPT_IV_SYSTIME_ENCRYPT, NameSpace.ENCRYPT_SECRET_KEY);
		KeyService.MCYRPT_SYSTIME_DECRYPT = new MCrypt(NameSpace.ENCRYPT_IV_SYSTIME_DECRYPT, NameSpace.ENCRYPT_SECRET_KEY);
		KeyService.MCRYPT_MP3 = new MCrypt(NameSpace.ENCRYPT_IV_MP3_DECRYPT, NameSpace.ENCRYPT_SECRET_KEY);		
	}
	
//	public static String createKey() {
//		Random random = new Random();
//		byte[] ivBytes = new byte[16];
//		random.nextBytes(ivBytes);
//		
//		MCrypt mCrypt = new MCrypt(ivBytes, NameSpace.ENCRYPT_SECRET_KEY);
//		mCrypt.setIvBytes(ivBytes);
//		
//		try {
//			String ivString = MCrypt.bytesToHex(ivBytes);
//			String encrytedSecretKey = mCrypt.encryptToHexString("super thin kun");
//			return ivString + encrytedSecretKey;
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//			return null;
//		}
//	}
	
}
