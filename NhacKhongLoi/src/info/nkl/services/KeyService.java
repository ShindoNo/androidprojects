package info.nkl.services;

import org.json.JSONObject;

import com.google.analytics.tracking.android.Log;

import info.nkl.tools.Logger;
import info.nkl.tools.MCrypt;

public class KeyService {
	public static long SYSTEM_TIME = 0;
	public static long START_TIME = 0;
	
	public static final String key = "key";
	public static final String API_KEY = "http://api2.nhackhongloi.info/key";
	
	public static MCrypt MCRYPT_MP3;
	public static MCrypt MCYRPT_SYSTIME_ENCRYPT;
	public static MCrypt MCYRPT_SYSTIME_DECRYPT;
	
	public static boolean initKey() {
		JSONObject reponse = ServiceHelper.getData(API_KEY);
		if (reponse == null)
			return false;
		else
			return true;
	}	
	
	public static void decryptTime(String sysTimeHex) {
		try {
			String sysTimeRaw = MCYRPT_SYSTIME_DECRYPT.decryptFromHexString(sysTimeHex);
			SYSTEM_TIME = Long.parseLong(sysTimeRaw);
			START_TIME = System.currentTimeMillis() / 1000;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static String encryptTime(String sysTimeRaw) {
		try {
			return MCYRPT_SYSTIME_ENCRYPT.encryptToHexString(sysTimeRaw);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "";
		}
	}
	
}
