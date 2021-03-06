package vn.muachung.cod.services;

public class NameSpace {
	/**
	 * Note :
	 * 1. Work
	 * - type : 1 => tickets, 2=> goods, 3 => solo
	 * - mustpay : 1 => đã thanh toán, 2 => chưa thanh toán
	 * - status :  => bình thường, -1 => đã hủy, 1 : đã cập nhật
	 * - ship_status : 0 : mới chia tuyến, 1 : đã giao hàng/phiếu cho cod đi giao
	 *  
	 *  	
	 */
	
	public static final String CLIENT_ID = "eabd001c45c9c66a1d485a98a55db27c";
	
	// namespace for shared preferences
	public static final String SP_NAME = "cod_sp";
	public static final String USERNAME = "username";
	public static final String PASSWORD = "password";
	
	// namespace for login
	public static final String ACCOUNT_INFO = "account_info"; 
	public static final String SESSIONID = "sessionId";
	public static final String POSTFIX = "-ShopTeam2010";
	public static final String LOGINTIME = "loginTime";
	public static final String USER_ID = "id";
	
	// namespace for reports
	public static final String REPORTS = "reports";
	public static final String DATE = "date";
	public static final String NUM_WORK = "num_work";
	public static final String NUM_COD = "num_cod";
	public static final String SHIPPED = "shipped";
	public static final String RETURNED = "returned";
	public static final String TICKETS = "tickets";
	public static final String GOODS = "goods";
	public static final String SHIPPED_TICKETS = "shipped_tickets";
	public static final String RETURNED_TICKETS = "returned_tickets";
	public static final String TOTAL = "total";
	public static final String SHIPPED_GOODS = "shipped_goods";
	public static final String RETURNED_GOODS = "returned_goods";
	public static final String RE_WORK = "re_work";
	
	// namespace for works
	public static final String WORKS = "works";
	public static final String WORK_SHIP_NUM = "work_ship_num";
	public static final String DISTRICT = "district";
	public static final String CUSTOMER = "customer";
	public static final String ID = "id";
	public static final String FULLNAME = "fullname";
	
	// namespace of a works
	public static final String WORK = "work";
	public static final String ORDER_ID = "order_id";
	public static final String ITEM_ID = "item_id";
	public static final String EMAIL = "email";
	public static final String PHONE = "phone";
	public static final String MUST_PAY = "must_pay";
	public static final String TYPE = "type";
	public static final String NUM_SHIP = "num_ship";
	public static final String NUM_RETURN = "num_return";
	public static final String SHIP_STATUS = "ship_status";
	public static final String COD_TIME = "cod_time";
	public static final String ITEM_TITLE = "item_title";
	public static final String PRICE = "price";
	public static final String FEE_SHIPPING = "fee_shipping";
	public static final String TOTAL_PRICE_ORDER = "total_price_order";
	public static final String QUANTITY = "quantity";
	public static final String NOTE = "note";
	public static final String STREET = "street";
	public static final String WARD = "ward";
	public static final String STATUS = "status";
	public static final String IMAGE = "image";
	public static final String NOTE_SHIP = "note_ship";
	public static final String STREET_ID_DEAL = "street_id";
	
	// namespace of update ship
	public static final String ERROR = "error";
	public static final String SMS = "sms";
	
	public static final String DEAL_REWORK_YES = "1";
	public static final String DEAL_REWORK_NO = "0";
	
	// search
//	public static final String SEARCH = "search";
	public static final String SEARCH_ALL = "0";
	public static final String SEARCH_TICKETS = "1";
	public static final String SEARCH_GOODS = "2";
	public static final String SEARCH_SOLO = "3";	
	
	// filter
	public static final String FILTER_SHIP_NO = "ship_no";
	public static final String FILTER_SHIP_YES = "ship_yes";
	public static final String FILTER_SHIP_REWORK = "ship_rework";
	
	public static final String FILTER_TYPE_TICKET = "type_ticket";
	public static final String FILTER_TYPE_GOOD = "type_goods";
	public static final String FILTER_TYPE_SOLO = "type_solo";
	
	public static final String FILTER_STREET = "street";
	
	public static final String FILTER_ALL = "filter_all";
	
	public static final String FILTER_GROUP_SHIP = "group_ship";
	public static final String FILTER_GROUP_TYPE = "group_type";
	public static final String FILTER_GROUP_STREETS = "group_streets";
	
	public static final String DEAL_STATUS_NORMAL = "0";
	public static final String DEAL_STATUS_SHIPPED = "1";
	public static final String DEAL_STATUS_RETURNED = "-1";
	
	public static final String DEAL_TYPE_TICKET = "1";
	public static final String DEAL_TYPE_GOOD = "2";
	public static final String DEAL_TYPE_SOLO = "3";
	
	public static final String STREET_ID = "id";
	public static final String STREET_NAME = "title";
	
	public static final String WORK_DISPLAY_SEARCH = "work_display_search";
	public static final String WORK_DISPLAY_DATE = "work_display_date";
	
	/* --------------------- API --------------------- */
	/* --------------------- API --------------------- */
	/* --------------------- API --------------------- */
	public static final String API_REPORTS = "http://api.muachung.vn/1.0/workReport.json?client_id=%s";
	public static final String API_LIST_WORKS = "http://api.muachung.vn/1.0/work.json?client_id=%s&date=%s";
	public static final String API_LIST_DATES = "http://api.muachung.vn/1.0/workCount.json?client_id=%s";
	public static final String API_LIST_STREETS = "http://api.muachung.vn/1.0/getOrder.json?code=getStreetWork&client_id=%s&cod_id=%s&date=%s";
	
	public static final String API_RETURN_ORDER = "http://api.muachung.vn/1.0/getOrder.json?code=cancelOrder&client_id=%s&order_id=%s&item_type=%s&note=%s";
	public static final String API_SHIP_BACK = "http://api.muachung.vn/1.0/getOrder.json?code=returnWork&client_id=%s&order_id=%s&item_type=%s&note=%s";
	public static final String API_REWORK = "http://api.muachung.vn/1.0/getOrder.json?code=reWork&client_id=%s&order_id=%s&item_type=%s";
	
	public static final String API_SHIP = "http://api.muachung.vn/1.0/workUpdate.json?client_id=%s&orderID=%s&item_type=%s&num_ship=%s&longitude=%s&latitude=%s";
}
