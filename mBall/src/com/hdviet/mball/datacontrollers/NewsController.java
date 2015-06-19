package com.hdviet.mball.datacontrollers;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.os.Handler;
import android.os.Message;

import com.hdviet.mball.entity.News;
import com.hdviet.mball.entity.NewsDetails;
import com.hdviet.mball.entity.Video;
import com.hdviet.mball.network.RequestHelper;
import com.hdviet.mball.util.NameSpace;

public class NewsController {
	
	public static void getNews(final Handler handler, final int page) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = NameSpace.API_NEWS + "page=" + page;
				String response = RequestHelper.get(apiUrl);
				if (Utils.checkResponse(handler, response)) {
					try {
						Message msg = new Message();
						msg.what = ErrorCode.SUCCESS;
						msg.obj = parseListNews(new JSONObject(response).getJSONArray("data"));
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
	
	public static void getNewsRelated(final Handler handler, final int page, final String newsId) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = NameSpace.API_NEWS + "page=" + page + "&id=" + newsId;
				String response = RequestHelper.get(apiUrl);
				if (Utils.checkResponse(handler, response)) {
					try {
						Message msg = new Message();
						msg.what = ErrorCode.SUCCESS;
						msg.obj = parseListNews(new JSONObject(response).getJSONArray("data"));
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
	
	public static ArrayList<News> parseListNews(JSONArray data) throws JSONException {
		ArrayList<News> listNews = new ArrayList<News>();
		for (int i = 0; i < data.length(); i++) {
			listNews.add(parseNews(data.getJSONObject(i)));
		}
		return listNews;
	}
	
	public static News parseNews(JSONObject data) throws JSONException {
		News news = new News();
		news.setId(data.getString("id"));
		news.setTitle(data.getString("title"));
		news.setImg(data.getString("img"));
		news.setUrl(data.getString("url"));
		news.setTourname(data.getString("tourname"));
		news.setDateTime(data.getString("date_time"));
		return news;
	}	
	
	public static void getNewsDetails(final Handler handler, final String newsId) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = NameSpace.API_NEWS_DETAILS + "id=" + newsId;
				String response = RequestHelper.get(apiUrl);
				if (Utils.checkResponse(handler, response)) {
					try {
						JSONObject data = new JSONObject(response).getJSONObject("data");
						NewsDetails newsDetails = new NewsDetails();
						newsDetails.setTitle(data.getJSONObject("detail").getString("title"));
						newsDetails.setContent(data.getJSONObject("detail").getString("content"));
						newsDetails.setImg(data.getJSONObject("detail").getString("img"));
						newsDetails.setTourname(data.getJSONObject("detail").getString("tourname"));
						newsDetails.setDatetime(data.getJSONObject("detail").getString("date_time"));
						newsDetails.setOtherNews(parseListNews(data.getJSONArray("others")));
						
						Message msg = new Message();
						msg.what = ErrorCode.SUCCESS;
						msg.obj = newsDetails;
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
