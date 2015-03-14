package info.nkl.services;

import info.nkl.tools.Logger;

import java.io.InputStream;
import org.apache.commons.io.IOUtils;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.json.JSONArray;
import org.json.JSONObject;

import android.util.Log;

public class ServiceHelper {

	private static final String REAL_HOST = "api.nhackhongloi.info";
	
	private static int TIMEOUT_CONNECTION = 30000;
	private static int TIMEOUT_SOCKET = 30000;
	
//	public static Object getData(String url, boolean isJSONObject) {
//		try {
//			HttpParams params = new BasicHttpParams();
//			HttpConnectionParams.setConnectionTimeout(params, TIMEOUT_CONNECTION);
//			HttpConnectionParams.setSoTimeout(params, TIMEOUT_SOCKET);
//			
//			HttpGet get = new HttpGet(url);
//			HttpClient client  = new DefaultHttpClient(params);
//			HttpResponse response = client.execute(get);
//			
//			InputStream inputStream = response.getEntity().getContent();
//			String responseString = IOUtils.toString(inputStream);
//			
//			inputStream.close();
//			response.getEntity().consumeContent();
//			
//			if (isJSONObject)
//				return new JSONObject(responseString);
//			else
//				return new JSONArray(responseString);
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//			Log.e("stk", "error make query, url=" + url);
//			return null;
//		}
//	}
	
	public static void getData(final String apiUrl, final ServiceHelperListener onDownloadDataListener) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					onDownloadDataListener.onCompleted(makeQuery(apiUrl));
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
					Logger.e("error make query, url=" + apiUrl);
					onDownloadDataListener.onFailed();
				}				
			}
		}).start();
	}
	
	public static JSONObject getData(String apiUrl) {
		try {
			return makeQuery(apiUrl);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Logger.e("error make query, url=" + apiUrl);
			return null;
		}
	}
	
	public static JSONObject makeQuery(String apiUrl) throws Exception {
		long startTime = System.currentTimeMillis();
		
		long sysTimeRaw = KeyService.SYSTEM_TIME + (System.currentTimeMillis() / 1000 - KeyService.START_TIME);
		String sysTimeHexUp = KeyService.encryptTime(sysTimeRaw + "");
		
		String apiUrlWithKey;
		if (apiUrl.contains("?")) {
			apiUrlWithKey = apiUrl + "&key=" + sysTimeHexUp;
		} else {
			apiUrlWithKey = apiUrl + "?key=" + sysTimeHexUp;
		}				
		
		HttpParams params = new BasicHttpParams();
		HttpConnectionParams.setConnectionTimeout(params, TIMEOUT_CONNECTION);
		HttpConnectionParams.setSoTimeout(params, TIMEOUT_SOCKET);
		
		HttpGet get = new HttpGet(apiUrlWithKey);
		HttpClient client  = new DefaultHttpClient(params);
		HttpResponse response = client.execute(get);
		
		InputStream inputStream = response.getEntity().getContent();
		String responseString = IOUtils.toString(inputStream);
		
		inputStream.close();
		response.getEntity().consumeContent();
		
		JSONObject apiResponse = new JSONObject(responseString);
		
		if (apiResponse.has(KeyService.key)) {
			String sysTimeHexDown = apiResponse.getString(KeyService.key);
			KeyService.decryptTime(sysTimeHexDown);
		}
		
		Logger.e("time=" + (System.currentTimeMillis() - startTime) + "; apiUrl=" + apiUrl);
		
		return apiResponse;
	}
	
	public interface ServiceHelperListener {
		public void onCompleted(JSONObject data);
		public void onFailed();
	}
}
