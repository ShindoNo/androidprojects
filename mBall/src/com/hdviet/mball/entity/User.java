package com.hdviet.mball.entity;

import com.hdviet.mball.util.NameSpace;
import com.hdviet.mball.util.Utils;

import android.content.Context;
import android.preference.PreferenceManager;

public class User {
	
	static User sUser;
	
	String session;
	String username;
	String userId;
	
	public static User getInstance() {
		return sUser;
	}
	
	public static void setInstance(User user) {
		sUser = user;
	}
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public void setSession(String session) {
		this.session = session;
	}
	
	public String getSession() {
		return session;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getUsername() {
		return username;
	}
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

}
