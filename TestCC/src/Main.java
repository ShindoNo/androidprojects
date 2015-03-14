import java.io.FileWriter;
import java.io.IOException;

import org.apache.commons.lang3.StringEscapeUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class Main {
	public static void main(String []args) {
		
		for (int i = 0; i < 100; i++) {
			int id = 12348200 + i;
			System.out.println("i=" + i);
			String uid = getUid("" + id);
			String userName = getUserName(uid);
			if (!userName.startsWith("SSG")) {
				String data = id + "-" + uid + "-" + userName;
				System.out.println(data);
				saveToFile(data + "\r\n");
			}
		}
		
		
	}
	
	public static void saveToFile(String data) {
		try {
			FileWriter fileWriter = new FileWriter("dataxx.txt", true);
			fileWriter.append(data);
			fileWriter.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	
	public static String getUid(String id) {
		String api = "http://vi.seastar-games.net/plus/api/login.php?cgo_username=&login_method=vietnam_cgo&cgo_uid=" + id;
		Document document;
		try {
			document = Jsoup.connect(api).get();
			String response = document.text();
			String uid = response.substring(response.indexOf("uid\":\"") + 6, response.indexOf("\",\"password"));
			return uid;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	
	// get username from uid
	public static String getUserName(String player_uid) {
		String api = "http://vi.seastar-games.net/plus/views/mobile/player.php?page=player&player_uid=" + player_uid;
		try {
			
			Document document = Jsoup.connect(api).cookie("PHPSESSID", "8as9d884bj6srtgmv3q0n4k412").get();
			
			
//			Document document = Jsoup.connect(api).get();
			
			org.jsoup.nodes.Element element = document.getElementById("player_info");
			org.jsoup.nodes.Element strong = element.getElementsByTag("strong").get(0);
			return StringEscapeUtils.unescapeHtml4(strong.html());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	
	
}
