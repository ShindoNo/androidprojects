package vn.vccorp.rongbay.network;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.Cookie;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.impl.client.DefaultHttpClient;

import android.util.Log;

public class RequestHelper {

	public static String post(String apiUrl, String params) {
		HttpURLConnection connection = null;
		try {
			MyLog.log("POST apiUrl=" + apiUrl + "; params=" + params);
			
			URL url = new URL(apiUrl);
			connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setRequestMethod("POST");
//			connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
			connection.setRequestProperty("user-agent", "Mozilla/5.0 (Linux; U; Android 4.1.1; en-us; Google Nexus 4 - 4.1.1 - API 16 - 768x1280 Build/JRO03S) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30");
			

			OutputStream outputStream = connection.getOutputStream();
			outputStream.write(params.getBytes());
			outputStream.close();

			InputStream inputStream = connection.getInputStream();
			
			Map<String, List<String>> map = connection.getHeaderFields();
			
			Set<String> key = map.keySet();
			Iterator<String> interator = key.iterator();
			
			while (interator.hasNext()) {
				String header = interator.next();
				if (header != null) {
					Log.e("stk", header + ":" + map.get(header));
				}
			}
			
			String response = readInputStream(inputStream);

			MyLog.log("POST response=" + response);
			return response;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			MyLog.log("POST error apiUrl=" + apiUrl);
			return null;
		} finally {
			if (connection != null) {
				connection.disconnect();
			}
		}
	}

	public static String get(String apiUrl) {
		HttpURLConnection connection = null;
		try {
			MyLog.log("GET apiUrl=" + apiUrl);
			
			URL url = new URL(apiUrl);
			connection = (HttpURLConnection)url.openConnection();
			InputStream inputStream = connection.getInputStream();
			String response = readInputStream(inputStream);
			
			MyLog.log("GET response=" + response);
			return response;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			MyLog.log("GET error apiUrl=" + apiUrl);
			return null;
		} finally {
			if (connection != null) {
				connection.disconnect();
			}
		}
	}

	@SuppressWarnings("deprecation")
	public static String post(String apiUrl, MultipartEntityBuilder multipartEntityBuilder) {
		try {
			MyLog.log("POST apiUrl=" + apiUrl + "; params=MultipartEntityBuilder");
			HttpPost httpPost = new HttpPost(apiUrl);
			httpPost.setEntity(multipartEntityBuilder.build());
			HttpClient httpClient = new DefaultHttpClient();
			HttpResponse httpResponse = httpClient.execute(httpPost);

			InputStream inputStream = httpResponse.getEntity().getContent();
			String response = readInputStream(inputStream);
			inputStream.close();
			httpResponse.getEntity().consumeContent();

			MyLog.log("POST response=" + response);
			return response;
		} catch (Exception e) {
			e.printStackTrace();
			MyLog.log("POST error; apiUrl=" + apiUrl);
			return null;
		}

	}
	
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

}
