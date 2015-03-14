package com.sologame.sdk.util;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

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

			String response = Utils.readInputStream(connection.getInputStream());

			MyLog.log("POST response=" + response);
			return response;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			MyLog.log("POST error apiUrl=" + apiUrl);
			return null;
		}
	}

	public static String get(String apiUrl) {
		try {
			MyLog.log("GET apiUrl=" + apiUrl);
			HttpParams params = new BasicHttpParams();
			HttpConnectionParams.setConnectionTimeout(params, TIMEOUT_CONNECTION);
			HttpConnectionParams.setSoTimeout(params, TIMEOUT_SOCKET);

			HttpGet get = new HttpGet(apiUrl);
			HttpClient client = new DefaultHttpClient(params);
			HttpResponse httpResponse = client.execute(get);

			InputStream inputStream = httpResponse.getEntity().getContent();
			String response = Utils.readInputStream(inputStream);

			inputStream.close();
			httpResponse.getEntity().consumeContent();

			MyLog.log("GET response=" + response);
			return response;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			MyLog.log("GET error apiUrl=" + apiUrl);
			return null;
		}
	}

	// public static String post(String apiUrl, MultipartEntityBuilder
	// multipartEntityBuilder) {
	// try {
	// MyLog.log("POST apiUrl=" + apiUrl + "; params=MultipartEntityBuilder");
	// HttpPost httpPost = new HttpPost(apiUrl);
	// httpPost.setEntity(multipartEntityBuilder.build());
	// HttpClient httpClient = new DefaultHttpClient();
	// HttpResponse httpResponse = httpClient.execute(httpPost);
	//
	// InputStream inputStream = httpResponse.getEntity().getContent();
	// String response = Utils.readInputStream(inputStream);
	// inputStream.close();
	// httpResponse.getEntity().consumeContent();
	//
	// MyLog.log("POST response=" + response);
	// return response;
	// } catch (Exception e) {
	// e.printStackTrace();
	// MyLog.log("POST error; apiUrl=" + apiUrl);
	// return null;
	// }

}
