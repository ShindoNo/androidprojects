package com.idroid.lib.support;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.apache.commons.io.IOUtils;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class ServiceHelper {

	private static int TIMEOUT_CONNECTION = 30000;
	private static int TIMEOUT_SOCKET = 30000;
	
	public static String post(String apiUrl, String params) {
		try {
			MyLog.log("POST apiUrl=" + apiUrl + "; params=" + params);
			URL url = new URL(apiUrl);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
			
			OutputStream outputStream = connection.getOutputStream();
			outputStream.write(params.getBytes());
			outputStream.close();
			
			String response = IOUtils.toString(connection.getInputStream());
			
			MyLog.log("POST RESPONSE=" + response);
			return response;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			MyLog.log("POST ERRORxxx=" + apiUrl);
			return e.getMessage();
		}
	}	
	
	public static String get(String url) {
		try {
			MyLog.log("GET apiUrl=" + url);
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
			
			MyLog.log("GET RESPONSE=" + responseString);
			return responseString;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			MyLog.log("error make query, url=" + url);
			return null;
		}
	}		

}
