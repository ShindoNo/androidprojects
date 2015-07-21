package co.barclays.demoapp.network;

import android.os.Handler;
import android.os.Message;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import co.barclays.demoapp.datacontroller.ErrorCode;
import co.barclays.demoapp.utils.MyLog;

public class RequestHelper {

    /**
     * Send HTTP POST request to given API URL with given params
     * @param callback handle bad request
     * @param apiUrl api of request
     * @param params params of request
     * @return string response if successful, null otherwise
     */
	public static String post(Handler callback, String apiUrl, String params) {
		HttpURLConnection connection = null;
		try {
			MyLog.log("POST apiUrl=" + apiUrl + "; params=" + params);
			
			URL url = new URL(apiUrl);
			connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json; charset=utf-8");

			OutputStream outputStream = connection.getOutputStream();
			outputStream.write(params.getBytes());
			outputStream.close();
			InputStream inputStream = connection.getInputStream();
			String response = readInputStream(inputStream);
			MyLog.log("POST response=" + response);
			return response;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
            // send error message to callback
            Message msg = new Message();
            msg.what = ErrorCode.FAILED;
            msg.obj = ErrorCode.MSG_BAD_REQUEST;
            callback.sendMessage(msg);
            MyLog.log("POTST error apiUrl=" + apiUrl);
            return null;
		} finally {
			if (connection != null) {
				connection.disconnect();
			}
		}
	}

    /**
     * Send HTTP GET request with given API Url
     * @param callback handle bad request
     * @param apiUrl api of request
     * @return string response if successful, null otherwise
     */
	public static String get(Handler callback, String apiUrl) {
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
            // send error message to callback
            Message msg = new Message();
            msg.what = ErrorCode.FAILED;
            msg.obj = ErrorCode.MSG_BAD_REQUEST;
            callback.sendMessage(msg);
			MyLog.log("GET error apiUrl=" + apiUrl);
			return null;
		} finally {
			if (connection != null) {
				connection.disconnect();
			}
		}
	}

	/**
	 * Read input stream and return string
	 * @param is input stream
	 * @return string from input stream
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

}
