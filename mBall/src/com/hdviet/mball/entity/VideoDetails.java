package com.hdviet.mball.entity;

import java.util.ArrayList;

public class VideoDetails {
	
	String title;
	String image;
	String urlMp4;
	ArrayList<Video> otherVideos;
	
	public VideoDetails() {
		// TODO Auto-generated constructor stub
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getUrlMp4() {
		return urlMp4;
	}

	public void setUrlMp4(String urlMp4) {
		this.urlMp4 = urlMp4;
	}

	public ArrayList<Video> getOtherVideos() {
		return otherVideos;
	}

	public void setOtherVideos(ArrayList<Video> otherVideos) {
		this.otherVideos = otherVideos;
	}
	
	

}
