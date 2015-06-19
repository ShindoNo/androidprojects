package com.hdviet.mball.datacontrollers;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.hdviet.mball.entity.Config;
import com.hdviet.mball.entity.FooterBar;
import com.hdviet.mball.entity.MenuCategory;
import com.hdviet.mball.entity.MenuItem;
import com.hdviet.mball.entity.TopBar;
import com.hdviet.mball.network.RequestHelper;
import com.hdviet.mball.util.NameSpace;

import android.os.Handler;
import android.os.Message;

public class ConfigController {
	
	public static void getConfig(final Handler handler) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = NameSpace.API_CONFIG;
				String response = RequestHelper.get(apiUrl);
				if (Utils.checkResponse(handler, response)) {
					try {
						JSONObject data = new JSONObject(response).getJSONObject("data");
						Config config = parseConfig(data);
						Message msg = new Message();
						msg.what = ErrorCode.SUCCESS;
						msg.obj = config;
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
	
	public static Config parseConfig(JSONObject data) throws JSONException {
		Config config = new Config();
		config.setMenuleft(parseListMenuCategory(data.getJSONArray("menuleft")));
		config.setFooterBar(parseFooterBar(data.getJSONObject("footer")));
		config.setTopBar(parseTopBar(data.getJSONObject("topbar")));
		return config;
	}
	
	public static ArrayList<MenuCategory> parseListMenuCategory(JSONArray data) throws JSONException {
		ArrayList<MenuCategory> listMenuCategory = new ArrayList<MenuCategory>();
		for (int i = 0; i < data.length(); i++) {
			listMenuCategory.add(parseMenuCategory(data.getJSONObject(i)));
		}
		return listMenuCategory;
	}
	
	public static MenuCategory parseMenuCategory(JSONObject data) throws JSONException {
		MenuCategory menuCategory = new MenuCategory();
		menuCategory.setTitle(data.getString("title"));
		menuCategory.setListMenuItem(parseListMenuItem(data.getJSONArray("list")));
		return menuCategory;
	}
	
	public static ArrayList<MenuItem> parseListMenuItem(JSONArray data) throws JSONException {
		ArrayList<MenuItem> listMenuItem = new ArrayList<MenuItem>();
		for (int i = 0; i < data.length(); i++) {
			listMenuItem.add(parseMenuItem(data.getJSONObject(i)));
		}
		return listMenuItem;
	}
	
	public static MenuItem parseMenuItem(JSONObject data) throws JSONException {
		MenuItem menuItem = new MenuItem();
		menuItem.setName(data.getString("name"));
		menuItem.setLogo(data.getString("logo"));
		menuItem.setUrl(data.getString("url"));
		return menuItem;
	}
	
	public static FooterBar parseFooterBar(JSONObject data) throws JSONException {
		FooterBar footerBar = new FooterBar();
		footerBar.setHome(data.getString("home"));
		footerBar.setLive(data.getString("live"));
		footerBar.setBetting(data.getString("betting"));
		footerBar.setSocial(data.getString("social"));
		footerBar.setProfile(data.getString("profile"));
		return footerBar;
	}
	
	public static TopBar parseTopBar(JSONObject data) throws JSONException {
		TopBar topBar = new TopBar();
		topBar.setLogo(data.getString("logo"));
		topBar.setUrl(data.getString("url"));
		return topBar;
	}

}
