package com.instaliker.instafollower;

public class NameSpace {
	
	public static final String ACTION_BROADCAST_COIN = "action_broadcast_coin";
	public static final String EXTRA_COINS = "extra_coins";
	
	/*--------- SHAPRED PREFERENCE --------- */
	/*--------- SHAPRED PREFERENCE --------- */
	/*--------- SHAPRED PREFERENCE --------- */
	public static final String SHARED_PREF_ACCESS_TOKEN = "access_token";
	public static final String SHARED_PREF_USER_ID = "user_id";
	public static final String SHARED_PREF_USER_NAME = "user_name";
	public static final String SHARED_PREF_COINS = "coins";
	public static final String SHARED_PREF_USER_INFO = "user_info";
	
	public static final String SHARED_PREF_CLIENT_ID = "client_id";
	public static final String SHARED_PREF_CLIENT_SECRET = "client_secret";
	
	/*--------- LOGIN --------- */
	/*--------- LOGIN --------- */
	/*--------- LOGIN --------- */
	// Webview
	public static final String WEBVIEW_LOGIN = "https://api.instagram.com/oauth/authorize?";
	
	// API
	public static final String API_ACCESS_TOKEN = "https://api.instagram.com/oauth/access_token";
	public static final String API_USER_INFO = "http://loiviet.vn/mobile/instaliker/users/getuser?";
	public static final String API_ADD_USER = "http://loiviet.vn/mobile/instaliker/authorize/adduser";
	
	/*--------- TAB GET COINS --------- */
	public static final String API_GET_MEDIA = "http://loiviet.vn/mobile/instaliker/media/getmedia?";
	public static final String API_UPDATE_LIKE = "http://loiviet.vn/mobile/instaliker/media/updatelike";
	public static final String API_UPDATE_FOLLOW = "http://loiviet.vn/mobile/instaliker/media/updatefollower";
	
	/*--------- TAB BUY LIKES --------- */
	public static final String API_GET_MY_IMAGE = "https://api.instagram.com/v1/users/self/media/recent?";
	public static final String API_BUY_LIKES = "http://loiviet.vn/mobile/instaliker/spend/addmedia";
	
	/*--------- TAB BUY FOLLOWERS --------- */
	public static final String API_BUY_FOLLOWERS = "http://loiviet.vn/mobile/instaliker/spend/addfollowers";
	
	/*--------- API INSTAGRAM --------- */
	// GET IMAGE INFO
	public static final String API_GET_IMAGE = "https://api.instagram.com/v1/media/%s?";
	public static final String API_LIKE_IMAGE = "https://api.instagram.com/v1/media/%s/likes?";
	
	// FOLLOW USER
	public static final String API_GET_USER = "https://api.instagram.com/v1/users/%s?";
	public static final String API_FOLLOW_USER = "https://api.instagram.com/v1/users/%s/relationship";
	
	// GET CLIENT ID
	public static final String API_GET_CLIENT_ID = "http://loiviet.vn/mobile/instaliker/apps/get_client?type=android";
	
	// REPORT ERROR
	public static final String API_REPORT_ERROR_IMAGE = "http://loiviet.vn/mobile/instaliker/media/media_error";
	public static final String API_REPORT_ERROR_USER = "http://loiviet.vn/mobile/instaliker/media/user_error";
	public static final String API_REPORT_ERROR_CLIENTID = "http://loiviet.vn/mobile/instaliker/apps/client_error";
	
	public static final String API_REGISTER_DEVICE = "http://loiviet.vn/mobile/instaliker/push/register_device";
//	param: devicetoken, user
	
	
}
