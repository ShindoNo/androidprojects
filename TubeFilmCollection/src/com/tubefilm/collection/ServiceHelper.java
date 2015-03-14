package com.tubefilm.collection;

import java.net.HttpURLConnection;
import java.net.URL;

import org.apache.commons.io.IOUtils;

import android.util.Log;

public class ServiceHelper {
	public static String get(String apiUrl, String params) {
		try {
			URL url = new URL(apiUrl + params);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setRequestMethod("GET");
			connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
			
			String response = IOUtils.toString(connection.getInputStream());
			
			Log.e("cgo", "GET api=" + apiUrl);
			Log.e("cgo", "GET params=" + params);
			Log.e("cgo", "GET response=" + response);
			
			return response;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
}
