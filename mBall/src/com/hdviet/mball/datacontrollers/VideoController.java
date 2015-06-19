package com.hdviet.mball.datacontrollers;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.hdviet.mball.entity.Video;
import com.hdviet.mball.entity.VideoDetails;
import com.hdviet.mball.network.RequestHelper;
import com.hdviet.mball.util.NameSpace;

import android.os.Handler;
import android.os.Message;

public class VideoController {
	
	public static void getVideos(final Handler handler, final int page) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = NameSpace.API_VIDEO + "page=" + page;
				String response = RequestHelper.get(apiUrl);
				if (Utils.checkResponse(handler, response)) {
					try {
						Message msg = new Message();
						msg.what = ErrorCode.SUCCESS;
						msg.obj = parseListVideo(new JSONObject(response).getJSONArray("data"));
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
	
	public static void getVideosRelated(final Handler handler, final int page, final String videoId) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = NameSpace.API_VIDEO + "page=" + page + "&vid=" + videoId;
				String response = RequestHelper.get(apiUrl);
				if (Utils.checkResponse(handler, response)) {
					try {
						Message msg = new Message();
						msg.what = ErrorCode.SUCCESS;
						msg.obj = parseListVideo(new JSONObject(response).getJSONArray("data"));
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
	
	public static ArrayList<Video> parseListVideo(JSONArray data) throws JSONException {
		ArrayList<Video> listVideo = new ArrayList<Video>();
		for (int i = 0; i < data.length(); i++) {
			listVideo.add(parseVideo(data.getJSONObject(i)));
		}
		return listVideo;
	}
	
	public static Video parseVideo(JSONObject data) throws JSONException {
		Video video = new Video();
		video.setId(data.getString("id"));
		video.setTitle(data.getString("title"));
		video.setImg(data.getString("img"));
		video.setUrl(data.getString("url"));
		
		if (data.has("tourname")) {
			video.setTourname(data.getString("tourname"));	
		} else if (data.has("tour_name")) {
			video.setTourname(data.getString("tour_name"));	
		}
		
		if (data.has("date_time")) {
			video.setDateTime(data.getString("date_time"));	
		} else if (data.has("date")) {
			video.setDateTime(data.getString("date"));	
		}
		return video;
	}
	
	public static void getVideoDetails(final Handler handler, final String videoId) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = NameSpace.API_VIDEO_DETAILS + "vid=" + videoId;
				String response = RequestHelper.get(apiUrl);
				if (Utils.checkResponse(handler, response)) {
					try {
						JSONObject data = new JSONObject(response).getJSONObject("data");
						VideoDetails videoDetails = new VideoDetails();
						videoDetails.setTitle(data.getJSONObject("detail").getString("title"));
						videoDetails.setImage(data.getJSONObject("detail").getString("img"));
						videoDetails.setUrlMp4(data.getJSONObject("detail").getString("mp4urlvideo"));
						videoDetails.setOtherVideos(parseListVideo(data.getJSONArray("others")));
						
						Message msg = new Message();
						msg.what = ErrorCode.SUCCESS;
						msg.obj = videoDetails;
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

}
