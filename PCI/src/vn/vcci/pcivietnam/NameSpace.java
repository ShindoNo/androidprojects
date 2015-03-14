package vn.vcci.pcivietnam;

public class NameSpace {
	public static String API_LANGUAGE = "http://localhost/Code/pci/api/language";
	public static String API_REPORT = "http://localhost/Code/pci/api/report?"; // params : year, language
	public static String API_HIGHLIGHT_LIST = "http://localhost/Code/pci/api/highlight?"; // param : year, language
	public static String API_HIGHLIGHT_DETAIL = "http://localhost/Code/pci/api/highlight_detail?"; // params : year, language, id (of highlight)
	
	public static String API_HIGHLIGHT_2 = "http://localhost/Code/pci/api/highlight2?";
	
	public static String API_PCI = "http://localhost/Code/pci/api/pci?";
	
	public static String API_PCI_INDEX_DETAILS = "http://localhost/Code/pci/api/pci_full_detail?"; // params ; year, language, city, index
	
	public static String API_CHART = "http://localhost/Code/pci/api/chart";
	
	public static String API_REPORT_2 = "http://localhost/Code/pci/api/report2?";
	
	public static final String TEST_HOST = "http://localhost/Code";
	public static final String REAL_HOST = "http://pcivietnam.org/mobile";
	
	public static void changeHost() {
		API_LANGUAGE = API_LANGUAGE.replace(TEST_HOST, REAL_HOST);
		API_REPORT = API_REPORT.replace(TEST_HOST, REAL_HOST);
		API_HIGHLIGHT_LIST = API_HIGHLIGHT_LIST.replace(TEST_HOST, REAL_HOST);
		API_HIGHLIGHT_DETAIL = API_HIGHLIGHT_DETAIL.replace(TEST_HOST, REAL_HOST);
		API_PCI = API_PCI.replace(TEST_HOST, REAL_HOST);
		API_PCI_INDEX_DETAILS = API_PCI_INDEX_DETAILS.replace(TEST_HOST, REAL_HOST);
		API_CHART = API_CHART.replace(TEST_HOST, REAL_HOST);
		API_HIGHLIGHT_2 = API_HIGHLIGHT_2.replace(TEST_HOST, REAL_HOST);
		API_REPORT_2 = API_REPORT_2.replace(TEST_HOST, REAL_HOST);
	}
}
