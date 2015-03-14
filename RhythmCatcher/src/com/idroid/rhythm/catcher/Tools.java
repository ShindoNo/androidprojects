package com.idroid.rhythm.catcher;

import java.util.Random;

import org.json.JSONArray;

import com.idroid.lib.support.SupportTools;

import android.content.Context;
import android.preference.PreferenceManager;

public class Tools {
	
	public static int pickSongNumberNotPlayYet(Context context, JSONArray listSongs) {
		if (checkPlayedAllSongs(context, listSongs)) {
			return -1;
		}
		
		Random random = new Random();
		while (true) {
			try {
				int pickNumb = random.nextInt(listSongs.length());
				String songId = listSongs.getJSONObject(pickNumb).getString("song_id");
				if (SupportTools.getBoolean(context, songId) == false) {
					return pickNumb;
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return -2;
			}
 		}
	}
	
	public static boolean checkPlayedAllSongs(Context context, JSONArray listSongs) {
		try {
			for (int i = 0; i < listSongs.length(); i++) {
				String songId = listSongs.getJSONObject(i).getString("song_id");
				if (SupportTools.getBoolean(context, songId) == false) {
					return false;
				}
			}			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return true;
	}
	
	public static void replayCD(Context context, JSONArray listSongs) {
		try {
			for (int i = 0; i < listSongs.length(); i++) {
				String songId = listSongs.getJSONObject(i).getString("song_id");
				SupportTools.saveBoolean(context, songId, false);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	
	
}
