package linetv.vietnam.dataservices;

import java.io.InputStream;

import linetv.vietnam.http.HTTPServer;
import linetv.vietnam.utils.MCrypt;
import linetv.vietnam.utils.NameSpace;
import linetv.vietnam.utils.Utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.http.AndroidHttpClient;
import android.preference.PreferenceManager;

public class RegisterVtvAccountService {
	public static void register(Context mContext, String username) {
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
		
		HTTPServer mHttpServer = new HTTPServer();
		MCrypt mMCrypt = new MCrypt(NameSpace.IV, NameSpace.SECRET);
		
		String password = Utils.RandomAlphaNumericString(12, 8);
		try {
			int iCountLoop = 2;
			String res = "";
			do {
				if(iCountLoop == 1) {	//Sau khi register fail voi gmail
					username = username.replace("@gmail.com", "@yahoo.com");
				} else if(iCountLoop == 2) { //Sau khi register fail voi yahoo
					username = username.replace("@yahoo.com", "") + Utils.RandomAlphaNumericString(4, 2) + "@gmail.com";
				} else if(iCountLoop == 3) {
					username = "";
					break;
				}
				res = mHttpServer.getResponse(String.format(Utils.URL_REG, username, password), false);
				iCountLoop ++;
			} while (!Utils.stringBetweenFirst(res, "<error_code>", "</error_code>").equals("0")); //check register success ???
			
			if(!username.equals("")) { //Register success
				res = mHttpServer.getResponse(String.format(Utils.URL_LOGIN, username, password),  false);
				if(Utils.stringBetweenFirst(res, "<error_code>", "</error_code>").equals("0")) {
					String session = Utils.stringBetweenFirst(res, "<session>", "</session>");
					SharedPreferences pref = PreferenceManager.getDefaultSharedPreferences(mContext);
					Editor edit = pref.edit();
					edit.putString("[GENU]", mMCrypt.encryptToHexString(username));
					edit.putString("[GENP]", mMCrypt.encryptToHexString(password));
					edit.putString("[GENS]", mMCrypt.encryptToHexString(session));
					edit.commit();
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		
	}
	
}