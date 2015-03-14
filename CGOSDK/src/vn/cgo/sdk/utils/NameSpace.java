package vn.cgo.sdk.utils;

public class NameSpace {
	
	// SharedPreference
	public static final String SHARED_PREF_ACCESS_TOKEN   = "access_token";
	public static final String SHARED_PREF_EXPIRED        = "expired";
	public static final String SHARED_PREF_REMEMBER_EMAIL = "remember_email";
	public static final String SHARED_PREF_ROLE_ID = "role_id";
	public static final String SHARED_PREF_AREA_ID = "area_id";
	public static final String SHARED_PREF_GAME_INFO = "game_info";
	public static final String SHARED_PREF_CLIENTNAME = "client_name";
	public static final String SHARED_PREF_SUBCLIENT = "sub_client";
	public static final String SHARED_PREF_OTHERPARAMS = "other_params";
	public static final String SHARED_PREF_LOG_INSTALL = "log_install";
	
	
	// API
	public static final String API_REGISTER = "https://api.cgo.vn/POST/Auth/Register";			// POST
	public static final String API_LOGIN = "https://api.cgo.vn/POST/Auth/Login";				// POST
	public static final String API_USER_INFO = "https://api.cgo.vn/GET/mobileMe/show?";		 	// GET
	public static final String API_LOGIN_FACEBOOK_GOOGLE = "https://api.cgo.vn/POST/Auth/LoginBig4";	// POST
//	public static final String API_GET_SESSION = "https://api.cgo.vn/GET/mobileMe/session?";	// GET
	public static final String API_REGISTER_GCM = "https://api.cgo.vn/POST/Push/RegisterDevice";// POST
	public static final String API_GAME_INFO = "https://api.cgo.vn/GET/Game/Info?";
	public static final String API_LOG_PLAY_USER = "https://api.cgo.vn/Get/Mobile/LogPlayUser?"; // GET
	
	public static final String API_NOTIFY = "http://api.cgo.vn/GET/notify/User?";				 // GET
	public static final String API_LOG_INSTALL = "http://api.cgo.vn/POST/mobile/loginstall?";    // GET
	
	public static final String API_UPLOAD_IMAGE = "http://file.box4game.net/rest/uploadMobile";  // POST
	
	// WEBVIEW
	public static final String WEBVIEW_PAYMENT_LISTPACKAGE = "https://pay.cgo.vn/ListPackage/Jailbreaken?";
//	public static final String WEBVIEW_SET_SESSION = "https://id.cgo.vn/oauthv2/setsession?";
	public static final String WEBVIEW_PAYMENT_TRANSFER = "https://pay.cgo.vn/Transfer/Mobile?";
	
	public static final String WEBVIEW_DASHBOARD = "https://pay.cgo.vn/redirect/dashboard?";
	public static final String WEBVIEW_FORUM = "https://pay.cgo.vn/redirect/forum?";
	
	public static final String WEBVIEW_FOGET_PASSWORD = "http://id.cgo.vn/login/forgot_password?";
	
	public static final String WEBVIEW_SUPPORT = "http://id.cgo.vn/support?";
	
	// CROSS PROMOTION
	public static final String API_MOBILE_SETTINGS = "https://api.cgo.vn/GET/ads/CPMobileSettings?";
	public static final String API_MOBILE_DATA = "https://api.cgo.vn/GET/ads/CPMobileData?";
	public static final String API_REQUEST_FACEBOOK = "https://api.cgo.vn/POST/Push/Invite";
	
	// OTHER VALUES
	public static final String REDIRECT_URI_1 = "http://redirect_finish_1";
	public static final String REDIRECT_URI_2 = "http://redirect_finish_2";
	
//	JSON NameSpace
	// login
	public static final String status = "status";
	public static final String msg = "msg";
	public static final String data = "data";
	public static final String access_token = "access_token";
	public static final String expired = "expired";
	
	// user info
	public static final String id = "id";
	public static final String username = "username";
	public static final String avatar = "avatar";
	public static final String email = "email";
	public static final String fb_avatar = "fb_avatar";
	public static final String fb_fullname = "fb_fullname";
	
	// update
	public static final String type = "type";
	public static final String title = "title";
	public static final String message = "message";
	public static final String url = "url";
	
	// get session
	public static final String session_id = "session_id";
	
	// payment
	public static final String order_info = "order_info";
	
}
