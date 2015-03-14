package com.shindo.francetv;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

import com.idroid.lib.support.ReadConfig;

public class UpdateService {
	public static void updateData(final Context context, final int dataVersion) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String data = ChannelService.getData();
				if (data != null) {
					Utils.setData(context, data);
					Utils.setDataVersion(context, dataVersion);
					Log.e("stk", "Updated data to version = " + dataVersion);
					
					Intent intent = new Intent(ReadConfig.ACTION_UPDATED_DATA);
					((Activity) context).sendBroadcast(intent);
				}
			}
		}).start();
	}
	

}
