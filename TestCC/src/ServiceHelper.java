


public class ServiceHelper {

	private static int TIMEOUT_CONNECTION = 30000;
	private static int TIMEOUT_SOCKET = 30000;
	

	public static String getData(String url) {
		try {
//			HttpParams params = new BasicHttpParams();
//			HttpConnectionParams.setConnectionTimeout(params, TIMEOUT_CONNECTION);
//			HttpConnectionParams.setSoTimeout(params, TIMEOUT_SOCKET);
//			
//			HttpGet get = new HttpGet(url);
//			HttpClient client  = new DefaultHttpClient(params);
//			HttpResponse response = client.execute(get);
			
			
			
//			InputStream inputStream = response.getEntity().getContent();
//			String responseString = IOUtils.toString(inputStream);
//			
//			inputStream.close();
//			response.getEntity().consumeContent();
			
//			return responseString;
			return "";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}	

}
