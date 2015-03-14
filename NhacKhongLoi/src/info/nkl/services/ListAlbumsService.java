package info.nkl.services;

import info.nkl.object.Album;
import info.nkl.tools.Logger;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

public class ListAlbumsService {
	public static final String data = "data";
	public static final String album_id = "album_id";
	public static final String album_name = "album_name";
	public static final String album_cover = "album_cover";
	public static final String album_num_views = "album_num_views";
	public static final String category_name = "category_name";
	public static final String sub_instrument_name = "sub_instrument_name";
	public static final String artist_name = "artist_name";
	public static final String slug = "slug";
	
	public static final String API_LIST_ALBUM_SERVICE = "http://api.nhackhongloi.info/nhackhongloi/album/%s/%s?page=%s&order=%s&app_id=%s&secret_key=%s";
	public static final String API_LIST_ALBUM_2 = "http://api2.nhackhongloi.info/album/%s/%s?page=%s&order=%s";
	
	public static Object getAlbums(String type, String id, String order, int pageNumb) {
//		if (order == null) order = "view";
//		String apiUrl = String.format(API_LIST_ALBUM_SERVICE, type, id, pageNumb, order, NameSpace.API_ID, NameSpace.SECRET_KEY);
//		return ServiceHelper.getData(apiUrl, true);
		return null;
	}
	
	public static ArrayList<Album> getAlbumsObject(String groupType, String groupId, int pageNumb, String order) {
		ArrayList<Album> listAlbums = new ArrayList<Album>();
		try {
			String apiUrl = String.format(API_LIST_ALBUM_2, groupType, groupId, pageNumb, order);
			
			JSONObject apiResponse = (JSONObject) ServiceHelper.getData(apiUrl);
			JSONArray listAlbumsJSON = apiResponse.getJSONArray(data);
			for (int i = 0; i < listAlbumsJSON.length(); i++) {
				listAlbums.add(convertToAlbum(listAlbumsJSON.getJSONObject(i)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return listAlbums;
	}
	
	public static Album convertToAlbum(JSONObject albumJSON) {
		Album album = new Album();
		try {
			album.album_id = albumJSON.getString(album_id);
			album.album_name = albumJSON.getString(album_name);
			album.album_cover = albumJSON.getString(album_cover);
			album.album_num_views = albumJSON.getString(album_num_views);
			album.category_name = albumJSON.getString(category_name);
			album.sub_instrument_name = albumJSON.getString(sub_instrument_name);
			album.artist_name = albumJSON.getString(artist_name);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return album;
	}
	
}
