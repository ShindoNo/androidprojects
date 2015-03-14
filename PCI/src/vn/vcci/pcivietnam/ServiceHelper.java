package vn.vcci.pcivietnam;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;

import org.apache.commons.io.IOUtils;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;

import android.util.Log;

public class ServiceHelper {
	
	public static String post(String apiUrl, String params) {
		try {
			
			Log.e("cgo", "POST API=" + apiUrl);
			Log.e("cgo", "POST PARAMS=" + params);	
			
			URL url = new URL(apiUrl);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
			
			OutputStream outputStream = connection.getOutputStream();
			outputStream.write(params.getBytes());
			outputStream.close();
			
			String response = IOUtils.toString(connection.getInputStream());
			
			Log.e("cgo", "POST RESPONSE=" + response);
			
			return response;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public static String get(String apiUrl, String params) {
		try {
			URL url = new URL(apiUrl + params);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setRequestMethod("GET");
			connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
			
			String response = IOUtils.toString(connection.getInputStream());
			
			Log.e("stk", "GET API=" + apiUrl);
			Log.e("stk", "GET PARAMS=" + params);
			Log.e("stk", "GET RESPONSE=" + response);
			
			return response;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
}
