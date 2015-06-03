package com.hdviet.mball.datacontrollers;

import org.json.JSONObject;

import android.os.Handler;
import android.os.Message;

public class Utils {
	
	public static boolean checkResponse(Handler handler, String response) {
		if (response == null) {
			Message msg = new Message();
			msg.what = ErrorCode.FAIL;
			msg.obj = ErrorCode.MSG_NO_INTERNET;
			handler.sendMessage(msg);
			return false;
		} else {
			try {
				JSONObject responseJSON = new JSONObject(response);
				int status = responseJSON.getInt("status");
				if (status == 200) {
					return true;
				} else {
					Message msg = new Message();
					msg.what = ErrorCode.FAIL;
					msg.obj = responseJSON.getString("mess");
					return false;
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				Message msg = new Message();
				msg.what = ErrorCode.FAIL;
				msg.obj = ErrorCode.MSG_JSON_ERROR;
				handler.sendMessage(msg);
				return false;				
			}
		}
		
		
	}
	

}
