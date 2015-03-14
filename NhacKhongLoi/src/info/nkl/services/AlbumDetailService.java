package info.nkl.services;

import org.json.JSONArray;
import org.json.JSONObject;

public class AlbumDetailService {
	
	// album info fields
	public static final String data = "data";
	public static final String album_name = "album_name";
	public static final String album_cover = "album_cover";
	public static final String album_blur_cover = "album_blur_cover";
	public static final String artist_name = "artist_name";
	public static final String album_num_views = "album_num_views";
	public static final String album_description = "album_description";
	public static final String album_id = "album_id";
	public static final String sub_instrument_name = "sub_instrument_name";
	public static final String album_information = "album_information";
	public static final String slug = "slug";
	public static final String create_date = "create_date";
	
	// song fields
	public static final String songs = "songs";
	public static final String song_name = "song_name";
	public static final String song_mp3 = "song_mp3";
	
//	public static String API_SINGLE_ALBUM_SERVICE = "b94de32a3a241cb8da735d9e345ae38815006f3cca6893601e14ece8aba1082274841bc4e5680c4bf40b85637cfaa9bd5008fccc4a4ed605bd56ff772fe9d014b98423dc0e4f127a80613e427d507ea6f8ae0ae84a1aab70c04ca9771d09e308";
	
	public static final String API_SINGLE_ALBUM_SERVICE = "http://api.nhackhongloi.info/nhackhongloi/album/details/%s?app_id=%s&secret_key=%s";
	
	public static final String API_ALBUM_DETAIL = "http://api2.nhackhongloi.info/album/detail/%s";
	
	public static final Object getAlbum(String albumId) {
//		String apiUrl = String.format(API_SINGLE_ALBUM_SERVICE, albumId, NameSpace.API_ID, NameSpace.SECRET_KEY);
//		return ServiceHelper.getData(apiUrl, true);
		return null;
	}
	
	public static final JSONObject getAlbumDetail(String albumId) {
		try {
			String apiUrl = String.format(API_ALBUM_DETAIL, albumId);
			JSONObject apiResponse = ServiceHelper.getData(apiUrl);
			JSONObject albumDetails = apiResponse.getJSONObject(AlbumDetailService.data);
			JSONArray songs = albumDetails.getJSONArray(AlbumDetailService.songs);
			for (int i = 0; i < songs.length(); i++) {
				JSONObject song = songs.getJSONObject(i);
				String encryptedMp3 = song.getString(AlbumDetailService.song_mp3);
				String decryptedMp3 = KeyService.MCRYPT_MP3.decryptFromHexString(encryptedMp3);
				song.put(AlbumDetailService.song_mp3, decryptedMp3);
			}
			return albumDetails;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
}
