package com.hdviet.mball.entity;

import java.util.ArrayList;

public class Config {
	
	ArrayList<MenuCategory> menuleft;
	FooterBar footerBar;
	TopBar topBar;
	
	public Config() {
		// TODO Auto-generated constructor stub
	}

	public ArrayList<MenuCategory> getMenuleft() {
		return menuleft;
	}

	public void setMenuleft(ArrayList<MenuCategory> menuleft) {
		this.menuleft = menuleft;
	}

	public FooterBar getFooterBar() {
		return footerBar;
	}

	public void setFooterBar(FooterBar footerBar) {
		this.footerBar = footerBar;
	}

	public TopBar getTopBar() {
		return topBar;
	}

	public void setTopBar(TopBar topBar) {
		this.topBar = topBar;
	}
	
	

}
