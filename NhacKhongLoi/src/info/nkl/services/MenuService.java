package info.nkl.services;

import info.nkl.services.ServiceHelper.ServiceHelperListener;

public class MenuService {
	
	// group type
	public static final String instrument = "instrument";
	public static final String category = "category";
	
	// group fields
	public static final String data = "data";
	public static final String instruments = "instruments";
	public static final String categories = "categories";
	public static final String instrument_id = "instrument_id";
	public static final String instrument_name = "instrument_name";
	public static final String instrument_sub = "instrument_sub";
	public static final String sub_instrument_id = "sub_instrument_id";
	public static final String total_albums = "total_albums";
	public static final String total_album = "total_album";
	
	public static final String category_id = "category_id";
	public static final String category_name = "category_name";
	
//	public static String API_CATEGORY_SERVICE = "b94de32a3a241cb8da735d9e345ae38815006f3cca6893601e14ece8aba108228b932d2732e9a095bc22e94b36c17801dd367a9f11ac0d889e34d5a19c1cd4003686a8ec1ee3c75496eac21b02cdcfde";
	
	public static final String API_CATEGORY_SERVICE = "http://api.nhackhongloi.info/nhackhongloi/menu/?app_id=%s&secret_key=%s";
	
	public static final String API_MENU_SERVICE = "http://api2.nhackhongloi.info/menu";
	
	public static Object getCategory() {
//		String apiURl = String.format(API_CATEGORY_SERVICE, NameSpace.API_ID, NameSpace.SECRET_KEY);
//		return ServiceHelper.getData(apiURl, true);
		return null;
	}
	
	public static void getMenu(ServiceHelperListener serviceHelperListener) {
		ServiceHelper.getData(API_MENU_SERVICE, serviceHelperListener);
	}
}
