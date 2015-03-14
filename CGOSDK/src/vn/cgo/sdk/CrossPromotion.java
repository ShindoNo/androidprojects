package vn.cgo.sdk;

import java.text.SimpleDateFormat;
import java.util.Date;

import vn.cgo.sdk.utils.Tools;
import android.app.Activity;


public class CrossPromotion {
	
	public static final int BANNER_WIDTH = 320;
	public static final int BANNER_HEIGHT = 50;
	
	
	public long TIME_DISPLAY_AFTER_OPEN = 5000; // display cross after x seconds
	public long TIME_DISPLAY = 5000; // time to display cross
	public long TIME_BETWEEN_DISPLAY = 10000; // time between 2 display
	
	int NUMBER_OF_DISPLAY = 5; // how many times cross displayed
	
	
	
	public Activity mActivity;
	
	public CrossPromotion(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		
		
		
	}
	
	public void start() {
		// check number of display time
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String date = sdf.format(new Date());
		
		if (Tools.getInt(mActivity, date) > NUMBER_OF_DISPLAY) {
			return;
		}
		
		
		
	}
	
	public void stop() {
		
	}
	
}
