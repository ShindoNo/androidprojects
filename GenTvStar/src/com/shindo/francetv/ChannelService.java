package com.shindo.francetv;

import com.idroid.lib.support.ServiceHelper;

public class ChannelService {
	public static final String cat_id = "cat_id";
	public static final String cat_name = "cat_name";
	public static final String data = "data";
	
	public static final String channel_id = "channel_id";
	public static final String channel_name = "channel_name";
	public static final String stream = "stream";
	
	public static String getData() {
		try {
			return ServiceHelper.get(NameSpace.DROPBOX_DATA);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
}
