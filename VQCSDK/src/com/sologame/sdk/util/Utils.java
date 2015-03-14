package com.sologame.sdk.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

import org.json.JSONObject;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.preference.PreferenceManager;
import android.util.Base64;
import android.util.Log;
import android.widget.Toast;

import com.sologame.sdk.R;

/**
 * Created by leanh215 on 12/26/14.
 */
public class Utils {
	/**
	 * Read a file
	 * @param f
	 * @return
	 */
    public static String readFile(File f) {
        try {
            return readInputStream(new FileInputStream(f));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    /**
     * Read a file in assets
     * @param context
     * @param fileName
     * @return
     */
    public static String readFileAssets(Context context, String fileName) {
        try {
            return readInputStream(context.getAssets().open(fileName));
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    /**
     * Read an inputstream
     * @param is
     * @return
     */
    public static String readInputStream(InputStream is) {
        try {
            StringBuilder text = new StringBuilder();
            BufferedReader br = new BufferedReader(new InputStreamReader(is));
            String line;
            while ((line = br.readLine()) != null) {
                text.append(line).append("\n");
            }
            is.close();
            br.close();
            return text.toString();
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    /**
     * Save string to shared preferences
     * @param context
     * @param key
     * @param value
     */
    public static void saveString(Context context, String key, String value) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(key, value).commit();
    }

    /**
     * Get string from shared preferences
     * @param context
     * @param key
     * @return
     */
    public static String getString(Context context, String key) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(key, null);
    }   
    
    /**
     * Generate md5 of a string
     * @param s
     * @return
     */
    public static String md5(final String s) {
        final String MD5 = "MD5";
        try {
            // Create MD5 Hash
            MessageDigest digest = java.security.MessageDigest
                    .getInstance(MD5);
            digest.update(s.getBytes());
            byte messageDigest[] = digest.digest();

            // Create Hex String
            StringBuilder hexString = new StringBuilder();
            for (byte aMessageDigest : messageDigest) {
                String h = Integer.toHexString(0xFF & aMessageDigest);
                while (h.length() < 2)
                    h = "0" + h;
                hexString.append(h);
            }
            return hexString.toString();

        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return "";
    }    
    
    /**
     * Generate facebook keyhash
     * @param context
     */
	public static void createKeyhashForFacebook(Context context) {
		PackageInfo info;
		try {
		    info = context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.GET_SIGNATURES);
		    for (Signature signature : info.signatures) {
		        MessageDigest md;
		        md = MessageDigest.getInstance("SHA");
		        md.update(signature.toByteArray());
		        String something = new String(Base64.encode(md.digest(), 0));
		        MyLog.log("KEYHASH=" + something);
		    }
		} catch (NameNotFoundException e1) {
		    Log.e("name not found", e1.toString());
		} catch (NoSuchAlgorithmException e) {
		    Log.e("no such an algorithm", e.toString());
		} catch (Exception e) {
		    Log.e("exception", e.toString());
		}			
	}    
	
	public static String createApiUrl(Context context, String command, String data) {
		String requestid = UUID.randomUUID().toString();
		String timereq = (System.currentTimeMillis() / 1000) + "";
		String sign = Utils.md5(command + requestid + timereq + data + Utils.getString(context, NameSpace.SAVED_SECRET_KEY));

		try {
			String apiUrl = NameSpace.API_SDK +  
							"&appid=" + Utils.getString(context, NameSpace.SAVED_APP_ID) +							
							"&command=" + command + 
							"&requestid=" + requestid + 
							"&timereq=" + timereq + 
							"&sign=" + sign + 
							"&data=" + URLEncoder.encode(data, "UTF-8");
			return apiUrl;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		}		
	}
	
	/**
	 * Return true if response contains error, false otherwise
	 * Note : Must call this function in UI thread
	 * @param response
	 * @return
	 */
	public static boolean checkResponseError(Context context, String response) {
		if (response == null) {
			Toast.makeText(context, context.getString(R.string.error_api_check_network), Toast.LENGTH_SHORT).show();
			return true;
		}
		
		try {
			JSONObject responseJSON = new JSONObject(response);
			int errorCode = responseJSON.getInt("errorCode");
			if (errorCode == 200) {
				return false;
			} else {
				String errorMessage = responseJSON.getString("errorMessage");
				if (ErrorTool.sErrorMap.containsKey(errorCode)) {
					errorMessage = ErrorTool.sErrorMap.get(errorCode);
				}
				
				Toast.makeText(context, errorMessage, Toast.LENGTH_SHORT).show();
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return true;
		}
		
	}
	
	


}
