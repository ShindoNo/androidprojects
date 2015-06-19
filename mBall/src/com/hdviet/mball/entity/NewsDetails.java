package com.hdviet.mball.entity;

import java.util.ArrayList;

public class NewsDetails {
	
	String title;
	String content;
	String img;
	String tourname;
	String datetime;
	
	ArrayList<News> otherNews;
	
	public NewsDetails() {
		// TODO Auto-generated constructor stub
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getTourname() {
		return tourname;
	}

	public void setTourname(String tourname) {
		this.tourname = tourname;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

	public ArrayList<News> getOtherNews() {
		return otherNews;
	}

	public void setOtherNews(ArrayList<News> otherNews) {
		this.otherNews = otherNews;
	}

}
