package com.hdviet.mball.datacontrollers;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.hdviet.mball.entity.Match;
import com.hdviet.mball.entity.MatchList;
import com.hdviet.mball.network.RequestHelper;
import com.hdviet.mball.util.NameSpace;

import android.os.Handler;
import android.os.Message;

public class LiveScoreController {
	
	public static void getMatchList(final Handler handler) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = NameSpace.API_LIVESCORE;
				String response = RequestHelper.get(apiUrl);
				if (Utils.checkResponse(handler, response)) {
					try {
						ArrayList<MatchList> list = new ArrayList<MatchList>();
						JSONArray data = new JSONObject(response).getJSONArray("data");
						for (int i = 0; i < data.length(); i++) {
							list.add(parseMatchList(data.getJSONObject(i)));
						}
						
						Message msg = new Message();
						msg.what = ErrorCode.SUCCESS;
						msg.obj = list;
						handler.sendMessage(msg);
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
						Message msg = new Message();
						msg.what = ErrorCode.FAIL;
						msg.obj = ErrorCode.MSG_JSON_ERROR;
						handler.sendMessage(msg);
					}
				}
			}
		}).start();
	}
	
	public static MatchList parseMatchList(JSONObject data) throws JSONException {
		MatchList matchList = new MatchList();
		matchList.setTitle(data.getString("title"));
		
		JSONArray listJSON = data.getJSONArray("list");
		ArrayList<Match> list = new ArrayList<Match>();
		for (int i = 0; i < listJSON.length(); i++) {
			list.add(parseMatch(listJSON.getJSONObject(i)));
		}
		
		matchList.setList(list);
		return matchList;
	}
	
	public static Match parseMatch(JSONObject data) throws JSONException {
		Match match = new Match();
		match.setId(data.getString("id"));
		match.setTeamHomeName(data.getString("team_home_name"));
		match.setLogoHome(data.getString("logo_home"));
		match.setGoalHome(data.getString("goal_home"));
		
		match.setTeamAwayName(data.getString("team_away_name"));
		match.setLogoAway(data.getString("logo_away"));
		match.setGoalAway(data.getString("goal_away"));
		match.setKickOff(data.getString("kickoff"));
		match.setCurrentMinute(data.getString("current_minute"));
		match.setStatus(data.getString("status"));
		match.setUrl(data.getString("url"));
		match.setUrlClip(data.getString("url_clip"));
		match.setIdVideo(data.getString("id_video"));
		
		return match;
	}

}
