package com.hdviet.mball.entity;

public class Match {
	
	String id;
	String teamHomeName;
	String logoHome;
	String goalHome;
	String teamAwayName;
	String logoAway;
	String goalAway;
	String kickOff;
	String currentMinute;
	String status;
	String url;
	String urlClip;
	String idVideo;
	
	
	public Match() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIdVideo() {
		return idVideo;
	}

	public void setIdVideo(String idVideo) {
		this.idVideo = idVideo;
	}

	public String getLogoHome() {
		return logoHome;
	}

	public void setLogoHome(String logoHome) {
		this.logoHome = logoHome;
	}

	public String getLogoAway() {
		return logoAway;
	}

	public void setLogoAway(String logoAway) {
		this.logoAway = logoAway;
	}

	public String getTeamHomeName() {
		return teamHomeName;
	}

	public void setTeamHomeName(String teamHomeName) {
		this.teamHomeName = teamHomeName;
	}

	public String getGoalHome() {
		return goalHome;
	}

	public void setGoalHome(String goalHome) {
		this.goalHome = goalHome;
	}

	public String getTeamAwayName() {
		return teamAwayName;
	}

	public void setTeamAwayName(String teamAwayName) {
		this.teamAwayName = teamAwayName;
	}

	public String getGoalAway() {
		return goalAway;
	}

	public void setGoalAway(String goalAway) {
		this.goalAway = goalAway;
	}

	public String getKickOff() {
		return kickOff;
	}

	public void setKickOff(String kickOff) {
		this.kickOff = kickOff;
	}

	public String getCurrentMinute() {
		return currentMinute;
	}

	public void setCurrentMinute(String currentMinute) {
		this.currentMinute = currentMinute;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUrlClip() {
		return urlClip;
	}

	public void setUrlClip(String urlClip) {
		this.urlClip = urlClip;
	}

}
