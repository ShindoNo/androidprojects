package com.hdviet.mball.datacontrollers;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.Context;
import android.os.Handler;
import android.os.Message;

import com.hdviet.mball.R;
import com.hdviet.mball.entity.User;
import com.hdviet.mball.network.RequestHelper;
import com.hdviet.mball.util.NameSpace;

public class UserController {

	public static void login(final Handler handler, final String username, final String password) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = NameSpace.API_LOGIN + "username=" + username + "&password=" + password;
				final String response = RequestHelper.get(apiUrl);
				
				if (Utils.checkResponse(handler, response)) {
					try {
						JSONObject responseJSON = new JSONObject(response);
						Message msg = new Message();
						msg.what = ErrorCode.SUCCESS;
						msg.obj = parseUser(responseJSON.getJSONObject("data"));
						handler.sendMessage(msg);
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
						Message msg = new Message();
						msg.what = ErrorCode.FAIL;
						msg.obj = ErrorCode.MSG_JSON_ERROR;
						handler.sendMessage(msg);
					}
				}
			}
		}).start();
	}
	
	public static User parseUser(JSONObject data) throws JSONException {
		User user = new User();
		user.setUserId(data.getString("user_id"));
		user.setUsername(data.getString("username"));
		user.setSession(data.getString("session_id"));
		return user;
	}
	
	public static void saveUser(JSONObject data) {
		
	}
	
	public static void logout(final Handler handler) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = NameSpace.API_LOGOUT + "session_id=" + User.getInstance().getSession()
													 + "&user_id=" + User.getInstance().getUserId();
				String response = RequestHelper.get(apiUrl);
				if (Utils.checkResponse(handler, response)) {
					handler.sendEmptyMessage(ErrorCode.SUCCESS);
				}
			}
		}).start();
	}
	
	
	


}
