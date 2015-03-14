package zing.video.downloader;

import java.util.ArrayList;
import java.util.UUID;

import org.apache.commons.lang3.StringEscapeUtils;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class ZingVideoTools {

	static String dataTest = "<a href=\"/video-clip/Gia-Vo-Nhung-Em-Yeu-Anh-Miu-Le/ZW66UC69.html\" class=\"content-items\"><img height=\"72\" width=\"120\" src=\"http://image.mp3.zdn.vn/thumb/128_72/thumb_video/4/8/486bb8576bb86df545ee05b2bc053269_1373270473.jpg\" alt=\"Giả V�? Nhưng Em Yêu Anh\" class=\"video-img\" /><h3>Giả V�? Nhưng Em Yêu Anh</h3><h4>Miu Lê</h4><ul class=\"info-des\"><li class=\"icon-luot-nghe fn-number\">260238</li></ul></a>\r\n<a href=\"/video-clip/Co-Le-Em-Dang-Hanh-Phuc-Vuong-Duy/ZW66FOA8.html\" class=\"content-items\"><img height=\"72\" width=\"120\" src=\"http://image.mp3.zdn.vn/thumb/128_72/thumb_video/2/5/2516a3e87df277f715c90158cb345825_1371788003.jpg\" alt=\"Có Lẽ Em �?ang Hạnh Phúc\" class=\"video-img\" /><h3>Có Lẽ Em �?ang Hạnh Phúc</h3><h4>Vương Duy</h4><ul class=\"info-des\"><li class=\"icon-luot-nghe fn-number\">183567</li></ul></a>\r\n<a href=\"/video-clip/Gui-Cho-Anh-Khoi-My/ZW67IBZB.html\" class=\"content-items\"><img height=\"72\" width=\"120\" src=\"http://image.mp3.zdn.vn/thumb/128_72/thumb_video/3/3/33649e863b0952e8304b61b3fbe1e679_1374237834.jpg\" alt=\"Gửi Cho Anh\" class=\"video-img\" /><h3>Gửi Cho Anh</h3><h4>Khởi My</h4><ul class=\"info-des\"><li class=\"icon-luot-nghe fn-number\">179503</li></ul></a>\r\n<a href=\"/video-clip/Khi-Nguoi-Yeu-Lua-Doi-Daniel-Mastro-Remix-Thuy-Khanh/ZW6ZBA9E.html\" class=\"content-items\"><img height=\"72\" width=\"120\" src=\"http://image.mp3.zdn.vn/thumb/128_72/thumb_video/0/2/02b3c2c63ffc057d5c9fce3ad29baaa7_1374993098.jpg\" alt=\"Khi Ngư�?i Yêu Lừa Dối (Daniel Mastro Remix)\" class=\"video-img\" /><h3>Khi Ngư�?i Yêu Lừa Dối (Daniel Mastro Remix)</h3><h4>Thúy Khanh</h4><ul class=\"info-des\"><li class=\"icon-luot-nghe fn-number\">159778</li></ul></a>\r\n<a href=\"/video-clip/Nong-BigDaddy-Hanh-Sino/ZW66EWOC.html\" class=\"content-items\"><img height=\"72\" width=\"120\" src=\"http://image.mp3.zdn.vn/thumb/128_72/thumb_video/6/7/67ebd062c2e05aac40e0861d9f9cb2c3_1374733433.jpg\" alt=\"Nóng\" class=\"video-img\" /><h3>Nóng</h3><h4>BigDaddy  ft.  Hạnh Sino</h4><ul class=\"info-des\"><li class=\"icon-luot-nghe fn-number\">156671</li></ul></a>\r\n<a href=\"/video-clip/Khong-Quan-Tam-Chi-Dan/ZW6OWOEF.html\" class=\"content-items\"><img height=\"72\" width=\"120\" src=\"http://image.mp3.zdn.vn/thumb/128_72/thumb_video/2/c/2c0afeb63da150d7df3d54090d274475_1373377200.jpg\" alt=\"Không Quan Tâm\" class=\"video-img\" /><h3>Không Quan Tâm</h3><h4>Chi Dân</h4><ul class=\"info-des\"><li class=\"icon-luot-nghe fn-number\">145889</li></ul></a>\r\n<a href=\"/video-clip/Nguoi-La-Tung-Yeu-Luong-Bich-Huu-Tam-Ho/ZW669D76.html\" class=\"content-items\"><img height=\"72\" width=\"120\" src=\"http://image.mp3.zdn.vn/thumb/128_72/thumb_video/9/6/9663db998d1229b6b220ca08c9fe81b8_1374057289.jpg\" alt=\"Ngư�?i Lạ Từng Yêu\" class=\"video-img\" /><h3>Ngư�?i Lạ Từng Yêu</h3><h4>Lương Bích Hữu  ft.  Tam Hổ</h4><ul class=\"info-des\"><li class=\"icon-luot-nghe fn-number\">144700</li></ul></a>\r\n<a href=\"/video-clip/Cham-Lai-Mot-Phut-Van-Mai-Huong/ZW67WEUA.html\" class=\"content-items\"><img height=\"72\" width=\"120\" src=\"http://image.mp3.zdn.vn/thumb/128_72/thumb_video/d/f/df48e0396fcfaea5fc5685e54b82a8b1_1373503989.jpg\" alt=\"Chậm Lại Một Phút\" class=\"video-img\" /><h3>Chậm Lại Một Phút</h3><h4>Văn Mai Hương</h4><ul class=\"info-des\"><li class=\"icon-luot-nghe fn-number\">144647</li></ul></a>\r\n<a href=\"/video-clip/Xoa-Dong-Nhi/ZW67OAZ9.html\" class=\"content-items\"><img height=\"72\" width=\"120\" src=\"http://image.mp3.zdn.vn/thumb/128_72/thumb_video/9/3/9349254f8067e35f2ea9b06623610e29_1374656531.jpg\" alt=\"Xóa\" class=\"video-img\" /><h3>Xóa</h3><h4>�?ông Nhi</h4><ul class=\"info-des\"><li class=\"icon-luot-nghe fn-number\">142704</li></ul></a>\r\n<a href=\"/video-clip/Hoi-Han-Trong-Anh-Tuan-Hung/ZW67ZDAA.html\" class=\"content-items\"><img height=\"72\" width=\"120\" src=\"http://image.mp3.zdn.vn/thumb/128_72/thumb_video/e/d/edb8e3e6346e735b9e1ad534f5fc9130_1374639758.jpg\" alt=\"Hối Hận Trong Anh\" class=\"video-img\" /><h3>Hối Hận Trong Anh</h3><h4>Tuấn Hưng</h4><ul class=\"info-des\"><li class=\"icon-luot-nghe fn-number\">138646</li></ul></a>\r\n";

	public static void main(String args[]) {
		// http://m.mp3.zing.vn/genre/video/get-items?genreId=IWZ9Z08I&sort=total_play&filter=week&offset=0
		// http://m.mp3.zing.vn/video-clip/Gia-Vo-Nhung-Em-Yeu-Anh-Miu-Le/ZW66UC69.html

//		getVideosFromHtml(dataTest);
		
		System.out.println(getVideoDownloadLink("ZW66UC69"));
		
	}

	public static ArrayList<ZingVideoInfo> getVideoByCategory(String catId, String sortType, int offset) {
		try {
			String apiUrl = "http://m.mp3.zing.vn/genre/video/get-items?filter=week&genreId=%s&sort=%s&offset=%s";
			JSONObject apiResponseJSON = (JSONObject) ServiceHelper.getData(String.format(apiUrl, catId, sortType, offset), true);
			String html = apiResponseJSON.getString("html");
			return getVideosFromHtml(html);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	public static ArrayList<ZingVideoInfo> getVideoBySearch(String searchText, int offset, boolean isSearchingByArtist) {
		try {
			
			String apiUrl = "http://m.mp3.zing.vn/tim-kiem/video.html?act=more&search_type=video&q=%s&offset=%s";
			String apiUrlFull = String.format(apiUrl, searchText, offset);
			if (isSearchingByArtist) {
				apiUrlFull = apiUrlFull + "&t=artist";
			}
			
			JSONObject apiResponseJSON = (JSONObject) ServiceHelper.getData(apiUrlFull, true);
			String html = apiResponseJSON.getString("html");
			return getVideosFromHtml(html);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}	
	
	
	

	public static ArrayList<ZingVideoInfo> getVideosFromHtml(String html) {
		ArrayList<ZingVideoInfo> listZingVideoInfo = new ArrayList<ZingVideoInfo>();
		Document document = Jsoup.parse(html);
		Elements songElements = document.getElementsByTag("a");
		for (int i = 0; i < songElements.size(); i++) {
			try {
				Element songElement = songElements.get(i);

				String videoId = songElement.attr("href");
				videoId = videoId.substring(videoId.lastIndexOf('/') + 1, videoId.indexOf(".html"));
				String videoCoverUrl = songElement.getElementsByTag("img").first().attr("src");
				String videoName = StringEscapeUtils.unescapeHtml4(songElement.getElementsByTag("h3").first().html());
				String videoArtist = StringEscapeUtils.unescapeHtml4(songElement.getElementsByTag("h4").first().html());
				String videoViews = songElement.getElementsByTag("li").html();

				ZingVideoInfo zingVideoInfo = new ZingVideoInfo();
				zingVideoInfo.setVideoId(videoId);
				zingVideoInfo.setVideoCoverUrl(videoCoverUrl);
				zingVideoInfo.setVideoName(videoName);
				zingVideoInfo.setVideoArtist(videoArtist);
				zingVideoInfo.setVideoViews(videoViews);

				listZingVideoInfo.add(zingVideoInfo);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return listZingVideoInfo;
	}
	
	public static String getVideoDownloadLink(String videoId) {
		try {
			String randomUUID = UUID.randomUUID().toString();
			String source = ServiceHelper.getData("http://m.mp3.zing.vn/video-clip/" + randomUUID + "/" + videoId + ".html");
			Document document = Jsoup.parse(source);
			Element videoElement = document.getElementById("videoPlayer");
			String videoUrl = videoElement.getElementsByTag("source").first().attr("src");
			return videoUrl;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	
	
	/** ---------------- SHARED PREFERENCES ---------------- */
	/** ---------------- SHARED PREFERENCES ---------------- */
	/** ---------------- SHARED PREFERENCES ---------------- */
	
	public static ZingVideoInfo getZingVideoInfoFromId(Context context, String songId) {
		SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
		String zingSongJSON = sharedPreferences.getString(songId, "");
		return convertJSONToSong(zingSongJSON);
	}
	
	public static void saveZingVideoInfo(Context context, ZingVideoInfo zingVideoInfo) {
		SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
		sharedPreferences.edit().putString(zingVideoInfo.getVideoId(), convertSongToJSON(zingVideoInfo).toString()).commit();
	}
	
	public static JSONObject convertSongToJSON(ZingVideoInfo zingVideoInfo) {
		try {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put(ZingVideoInfo.VIDEO_ARTIST, zingVideoInfo.getVideoArtist());
			jsonObject.put(ZingVideoInfo.VIDEO_COVER_URL, zingVideoInfo.getVideoCoverUrl());
			jsonObject.put(ZingVideoInfo.VIDEO_ID, zingVideoInfo.getVideoId());
			jsonObject.put(ZingVideoInfo.VIDEO_NAME, zingVideoInfo.getVideoName());
			jsonObject.put(ZingVideoInfo.VIDEO_VIEWS, zingVideoInfo.getVideoViews());
			return jsonObject;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	public static ZingVideoInfo convertJSONToSong(String jsonString) {
		try {
			ZingVideoInfo zingVideoInfo = new ZingVideoInfo();
			JSONObject jsonObject = new JSONObject(jsonString);
			
			zingVideoInfo.setVideoArtist(jsonObject.getString(ZingVideoInfo.VIDEO_ARTIST));
			zingVideoInfo.setVideoCoverUrl(jsonObject.getString(ZingVideoInfo.VIDEO_COVER_URL));
			zingVideoInfo.setVideoId(jsonObject.getString(ZingVideoInfo.VIDEO_ID));
			zingVideoInfo.setVideoName(jsonObject.getString(ZingVideoInfo.VIDEO_NAME));
			zingVideoInfo.setVideoViews(jsonObject.getString(ZingVideoInfo.VIDEO_VIEWS));
			
			return zingVideoInfo;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}	

}
