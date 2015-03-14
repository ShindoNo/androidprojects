package info.nkl.services;

import info.nkl.services.ServiceHelper.ServiceHelperListener;
import java.net.URLEncoder;
import org.json.JSONArray;
import org.json.JSONObject;

public class SearchService {
	public static final String data = "data";
	public static final String albums = "albums";
	public static final String songs = "songs";
	public static final String albums_artists = "albums_artists";
	public static final String artists_name = "artists_name";
	
	public static final String id = "id";
	public static final String cover = "cover";
	public static final String artist_name = "artist_name";
	public static final String name = "name";
	public static final String view = "view";
	
	public static final String BASE_URL = "http://nhackhongloi.info/resources/";
	public static final String API_SEARCH = "http://api2.nhackhongloi.info/search?kw=%s";
	
	public static void search(String s, final ServiceHelperListener serviceHelperListener) {
		s = URLEncoder.encode(s);
		String apiUrl = String.format(API_SEARCH, s);
		
		ServiceHelperListener localListener = new ServiceHelperListener() {
			@Override
			public void onFailed() {
				serviceHelperListener.onFailed();
			}
			
			@Override
			public void onCompleted(JSONObject apiResponse) {
				// TODO Auto-generated method stub
				// insert base url to image url
				try {
					JSONArray listAlbumByName = apiResponse.getJSONObject(data).getJSONObject(albums).getJSONArray(data);
					for (int i = 0; i < listAlbumByName.length(); i++) {
						JSONObject album = listAlbumByName.getJSONObject(i);
						String fullUrlCover = BASE_URL + album.getString(cover);
						album.put(cover, fullUrlCover);
					}
					
					JSONArray listAlbumByArtist = apiResponse.getJSONObject(data).getJSONObject(albums_artists).getJSONArray(data);
					for (int i = 0; i < listAlbumByArtist.length(); i++) {
						JSONObject album = listAlbumByArtist.getJSONObject(i);
						String fullUrlCover = BASE_URL + album.getString(cover);
						album.put(cover, fullUrlCover);
					}					
					
					serviceHelperListener.onCompleted(apiResponse);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		};
		
		ServiceHelper.getData(apiUrl, localListener);
	}
}
