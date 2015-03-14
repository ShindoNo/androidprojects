package info.nkl.services;

import info.nkl.object.Album;
import info.nkl.services.ServiceHelper.ServiceHelperListener;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

public class TopAlbumsService {
	
	public static final String data = "data";
	
	public static final String API_TOP_VIEW_ALBUM = "http://api2.nhackhongloi.info/album/top?top=20";
	public static final String API_TOP_NEW_ALBUM = "http://api2.nhackhongloi.info/album/new?top=20";
	
	public static ArrayList<Album> getTopAlbums() {
		ArrayList<Album> topAlbums = new ArrayList<Album>();
		try {
			JSONObject apiResponse = ServiceHelper.getData(API_TOP_VIEW_ALBUM);
			JSONArray listAlbumsJSON = apiResponse.getJSONArray(data);
			for (int i = 0; i < listAlbumsJSON.length(); i++) {
				topAlbums.add(ListAlbumsService.convertToAlbum(listAlbumsJSON.getJSONObject(i)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return topAlbums;
	}
	
	public static ArrayList<Album> getNewAlbums() {
		ArrayList<Album> topAlbums = new ArrayList<Album>();
		try {
			JSONObject apiResponse = ServiceHelper.getData(API_TOP_NEW_ALBUM);
			JSONArray listAlbumsJSON = apiResponse.getJSONArray(data);
			for (int i = 0; i < listAlbumsJSON.length(); i++) {
				topAlbums.add(ListAlbumsService.convertToAlbum(listAlbumsJSON.getJSONObject(i)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return topAlbums;
	}	
}
