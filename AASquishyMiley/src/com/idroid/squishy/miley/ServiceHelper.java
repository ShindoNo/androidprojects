package com.idroid.squishy.miley;

import java.io.IOException;
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

	private static int TIMEOUT_CONNECTION = 30000;
	private static int TIMEOUT_SOCKET = 30000;
	
	public static Object getData(String url, boolean isJSONObject) {
		try {
			
			HttpParams params = new BasicHttpParams();
			HttpConnectionParams.setConnectionTimeout(params, TIMEOUT_CONNECTION);
			HttpConnectionParams.setSoTimeout(params, TIMEOUT_SOCKET);
			
			HttpGet get = new HttpGet(url);
			HttpClient client  = new DefaultHttpClient(params);
			HttpResponse response = client.execute(get);
			
			InputStream inputStream = response.getEntity().getContent();
			String responseString = IOUtils.toString(inputStream);
			
			inputStream.close();
			response.getEntity().consumeContent();
			
			if (isJSONObject)
				return new JSONObject(responseString);
			else
				return new JSONArray(responseString);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Log.e("stk", "error make query, url=" + url);
			return null;
		}
	}
	
	public static String getData(String url) {
		try {
			HttpParams params = new BasicHttpParams();
			HttpConnectionParams.setConnectionTimeout(params, TIMEOUT_CONNECTION);
			HttpConnectionParams.setSoTimeout(params, TIMEOUT_SOCKET);
			
			HttpGet get = new HttpGet(url);
			HttpClient client  = new DefaultHttpClient(params);
			HttpResponse response = client.execute(get);
			
			InputStream inputStream = response.getEntity().getContent();
			String responseString = IOUtils.toString(inputStream);
			
			inputStream.close();
			response.getEntity().consumeContent();
			
			return responseString;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Log.e("stk", "error make query, url=" + url);
			return null;
		}
	}	

}
