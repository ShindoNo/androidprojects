package com.hdviet.mball.entity;

public class MatchStatus {
	
	
	
	
	public static String getStatus(String statusId) {
		if (statusId.equals("0")) {
			return "Chưa kickoff";
		} else if (statusId.equals("1")) {
			return "Kick off";
		} else if (statusId.equals("2")) {
			return "Hết hiệp 1";
		} else if (statusId.equals("3")) {
			return "Hiệp 2";
		} else if (statusId.equals("4")) {
			return "Hiệp phụ 1";
		} else if (statusId.equals("5")) {
			return "Hiệp phụ 2";
		} else if (statusId.equals("6")) {
			return "Đang đá penalty";
		} else if (statusId.equals("7")) {
			return "<b>FT</b>";
		} else {
			return "";
		}
	}

}
