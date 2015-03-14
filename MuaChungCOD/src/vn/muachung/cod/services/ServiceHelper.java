package vn.muachung.cod.services;

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

import vn.muachung.cod.muachungmobile.MainActivity;


import android.util.Log;

public class ServiceHelper {
	
	private static int TIMEOUT_CONNECTION = 30000;
	private static int TIMEOUT_SOCKET = 30000;
	
	private static  final String REAL_HOST = "api.muachung.vn";
	private static final String REAL_HOST_NEW = "apimc.todo.vn";
	private static final String TEST_HOST = "book.todo.vn";
	
	private static final String API_1_0 = "/1.0/";
	private static final String API_2_0 = "/2.0/";
	
	public static Object downloadJsonData(String apiUrl, boolean isJSONObject) {
		try {
//			apiUrl = apiUrl.replace(REAL_HOST, REAL_HOST_NEW);
			apiUrl = apiUrl.replace(REAL_HOST, TEST_HOST);
			apiUrl = apiUrl.replace(API_1_0, API_2_0);
			
			HttpParams params = new BasicHttpParams();
			HttpConnectionParams.setConnectionTimeout(params, TIMEOUT_CONNECTION);
			HttpConnectionParams.setSoTimeout(params, TIMEOUT_SOCKET);
			
			HttpGet get = new HttpGet(apiUrl);
			if (MainActivity.SESSIONID != null) 	// if this is login query, not set header to get sessionId
				get.setHeader("Cookie", "PHPSESSID=" + MainActivity.SESSIONID);
			
			HttpClient client  = new DefaultHttpClient(params);
			HttpResponse response = client.execute(get);
			
			InputStream inputStream = response.getEntity().getContent();
			String responseString = IOUtils.toString(inputStream);
			
//			if (!apiUrl.contains("work.json"))
				Log.e("stk", "request=" + apiUrl);			
			
//			if (!apiUrl.contains("work.json"))
				Log.e("stk", "response=" + responseString);
			
			inputStream.close();
			response.getEntity().consumeContent();
			if (isJSONObject)
				return new JSONObject(responseString);
			else
				return new JSONArray(responseString);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
}
