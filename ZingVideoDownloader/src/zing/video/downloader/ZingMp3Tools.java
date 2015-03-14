package zing.video.downloader;

import java.util.ArrayList;

import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.http.AndroidHttpClient;
import android.preference.PreferenceManager;

public class ZingMp3Tools {
	/** ---------------- NETWORK TOOLS ---------------- */
	/** ---------------- NETWORK TOOLS ---------------- */
	/** ---------------- NETWORK TOOLS ---------------- */
	
	public static String getDownloadLink(String songId) {
		try {
			Document document = Jsoup.connect("http://mp3.zing.vn/bai-hat/ZingMp3Offline/" + songId + ".html").get();
			Element xmlLinkContainer = document.getElementsByClass("player").first();
			String xmlLinkHtml = xmlLinkContainer.html();
			String xmlLink = xmlLinkHtml.substring(xmlLinkHtml.indexOf("xmlURL=") + 7, xmlLinkHtml.indexOf("&amp;textad="));
			return getDownloadlinkFromXML(xmlLink);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	public static String getDownloadlinkFromXML(String xmlLink) {
		try {
			String source = ServiceHelper.getData(xmlLink);
			String downloadLink = source.substring(source.indexOf("http://stream"));
			downloadLink = downloadLink.substring(0, downloadLink.indexOf(".mp3", 20)) + ".mp3";
			return downloadLink;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}	
	
	public static ArrayList<ZingSongInfo> getListSongs(String url) {
		ArrayList<ZingSongInfo> zingListSongs = new ArrayList<ZingSongInfo>();
		try {
			Document document = Jsoup.connect(url).get();
			
			// get first song
			try {
				Element firstSongDiv = document.getElementsByClass("first-search-song").first();
				Element idAndNameContainer = firstSongDiv.getElementsByTag("a").first();
				
				String idContainer = idAndNameContainer.attr("href");
				String id = idContainer.substring(idContainer.lastIndexOf('/')+1, idContainer.indexOf(".html"));
				String name = StringEscapeUtils.unescapeHtml4(firstSongDiv.getElementsByTag("a").first().html().trim());
				String artist = StringEscapeUtils.unescapeHtml4(firstSongDiv.getElementsByTag("p").first().getElementsByTag("a").first().html().trim());
				String viewLong = firstSongDiv.getElementsByTag("p").get(1).html();
				String view = viewLong.substring(viewLong.lastIndexOf('|') +1).trim().replace("Lượt nghe", "Views");
				String downloadLinkLong = firstSongDiv.getElementsByTag("script").get(0).html();
				String downloadLink = null;
				if (downloadLinkLong.contains("music-buy")) {
					downloadLink = getDownloadLink(id);
				} else {
					downloadLink = downloadLinkLong.substring(downloadLinkLong.indexOf("http://mp3.zing.vn/download/song/"), downloadLinkLong.indexOf(" class=\"music-download _btnDownload\"")-1);
				}
				
				if (downloadLink != null) {
					ZingSongInfo zingSongInfo = new ZingSongInfo();
					zingSongInfo.setId(id);
					zingSongInfo.setName(name);
					zingSongInfo.setArtist(artist);
					zingSongInfo.setView(view);
					zingSongInfo.setDownloadLink(downloadLink);
					zingListSongs.add(zingSongInfo);					
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}		
			
			Element listContainer = document.getElementsByClass("content-block").get(1);
			Elements listSongs = listContainer.getElementsByClass("content-item");
			for (Element song : listSongs) {
				try {
					Elements aTags = song.getElementsByTag("a");
					String idLong = aTags.get(0).attr("href");
					String id = idLong.substring(idLong.lastIndexOf('/')+1, idLong.indexOf(".html"));
					
					String name = StringEscapeUtils.unescapeHtml4(aTags.get(0).html().trim());
					String artist = StringEscapeUtils.unescapeHtml4(aTags.get(1).html().trim()).replace("Nhi�?u Ca Sĩ", "VA");
					
					String bitLong = song.getElementsByTag("p").get(0).html();
					String bit = bitLong.subSequence(bitLong.lastIndexOf('|')+1, bitLong.length()).toString().trim();
					
					String viewLong = song.getElementsByTag("p").get(1).html();
					String view = viewLong.subSequence(viewLong.lastIndexOf('|') + 1, viewLong.length()).toString().trim().replace("Lượt nghe", "Views");
					
					String downloadLinkLong = song.getElementsByTag("script").get(0).html();
					String downloadlink = downloadLinkLong.substring(downloadLinkLong.indexOf("http://mp3.zing.vn/download/song/"), downloadLinkLong.indexOf(" class=\"music-download _btnDownload\"")-1);
					
					ZingSongInfo zingSongInfo = new ZingSongInfo();
					zingSongInfo.setName(name);
					zingSongInfo.setArtist(artist);
					zingSongInfo.setView(view);
					zingSongInfo.setId(id);
					zingSongInfo.setDownloadLink(downloadlink);
					zingListSongs.add(zingSongInfo);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}		
		
		return zingListSongs;
	}
	
	
	
	
	/** ---------------- SHARED PREFERENCES SONG ---------------- */
	/** ---------------- SHARED PREFERENCES SONG ---------------- */
	/** ---------------- SHARED PREFERENCES SONG ---------------- */
	
	public static JSONObject convertSongToJSON(ZingSongInfo zingSongInfo) {
		try {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put(ZingSongInfo.NAME, zingSongInfo.getName());
			jsonObject.put(ZingSongInfo.ARTIST, zingSongInfo.getArtist());
			jsonObject.put(ZingSongInfo.ID, zingSongInfo.getId());
			jsonObject.put(ZingSongInfo.VIEW, zingSongInfo.getView());
			jsonObject.put(ZingSongInfo.DOWNLOADLINK, zingSongInfo.getDownloadLink());
			return jsonObject;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	public static ZingSongInfo convertJSONToSong(String jsonString) {
		try {
			ZingSongInfo zingSongInfo = new ZingSongInfo();
			JSONObject jsonObject = new JSONObject(jsonString);
			zingSongInfo.setArtist(jsonObject.getString(ZingSongInfo.ARTIST));
			zingSongInfo.setId(jsonObject.getString(ZingSongInfo.ID));
			zingSongInfo.setName(jsonObject.getString(ZingSongInfo.NAME));
			zingSongInfo.setView(jsonObject.getString(ZingSongInfo.VIEW));
			zingSongInfo.setDownloadLink(jsonObject.getString(ZingSongInfo.DOWNLOADLINK));
			return zingSongInfo;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	public static ZingSongInfo getZingSongInfoFromId(Context context, String songId) {
		SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
		String zingSongJSON = sharedPreferences.getString(songId, "");
		return convertJSONToSong(zingSongJSON);
	}
	
	public static void saveZingSongInfo(Context context, String songId, ZingSongInfo zingSongInfo) {
		SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
		sharedPreferences.edit().putString(songId, convertSongToJSON(zingSongInfo).toString()).commit();
	}	
	
}
