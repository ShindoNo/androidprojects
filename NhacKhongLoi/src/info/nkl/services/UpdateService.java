package info.nkl.services;

import org.json.JSONArray;
import org.json.JSONObject;

import android.content.SharedPreferences;

import info.nkl.database.DatabaseQuery;
import info.nkl.services.ServiceHelper.ServiceHelperListener;
import info.nkl.tools.Logger;

public class UpdateService {
	
	public static void updateAlbum(final DatabaseQuery databaseQuery, final String albumId) {
		long lastUpdate = Long.parseLong(databaseQuery.getAlbumLastUpdate(albumId));
		if ((System.currentTimeMillis() - lastUpdate) > NameSpace.DAY_MILI) {
			new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					JSONObject albumDetailData = AlbumDetailService.getAlbumDetail(albumId);
					databaseQuery.updateAlbum(albumId, albumDetailData.toString());
					Logger.e("Updated AlbumId = " + albumId + " successful");
				}
			}).start();
		}
	}
	
	public static void updateTopViewAlbum(final SharedPreferences sharedPreferences) {
		long lastUpdate = sharedPreferences.getLong(NameSpace.SHARE_PREF_TOP_VIEW_LAST_UPDATE, 0);
		if (System.currentTimeMillis() - lastUpdate > NameSpace.DAY_MILI) {
			new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					ServiceHelper.getData(TopAlbumsService.API_TOP_VIEW_ALBUM, new ServiceHelperListener() {
						@Override
						public void onFailed() {}
						
						@Override
						public void onCompleted(JSONObject data) {
							// TODO Auto-generated method stub
							try {
								JSONArray listAlbums = data.getJSONArray(ListAlbumsService.data);
								sharedPreferences.edit().putString(NameSpace.SHARE_PREF_TOP_VIEW, listAlbums.toString()).commit();
								sharedPreferences.edit().putLong(NameSpace.SHARE_PREF_TOP_VIEW_LAST_UPDATE, System.currentTimeMillis()).commit();
								Logger.e("Updated Top View Albums successful");
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						}
					});
				}
			}).start();
		}
	}
	
	public static void updateTopNewAlbum(final SharedPreferences sharedPreferences) {
		long lastUpdate = sharedPreferences.getLong(NameSpace.SHARE_PREF_TOP_NEW_LAST_UPDATE, 0);
		if (System.currentTimeMillis() - lastUpdate > NameSpace.DAY_MILI) {
			new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					ServiceHelper.getData(TopAlbumsService.API_TOP_NEW_ALBUM, new ServiceHelperListener() {
						@Override
						public void onFailed() {}
						
						@Override
						public void onCompleted(JSONObject data) {
							// TODO Auto-generated method stub
							try {
								JSONArray listAlbums = data.getJSONArray(ListAlbumsService.data);
								sharedPreferences.edit().putString(NameSpace.SHARE_PREF_TOP_NEW, listAlbums.toString()).commit();
								sharedPreferences.edit().putLong(NameSpace.SHARE_PREF_TOP_NEW_LAST_UPDATE, System.currentTimeMillis()).commit();
								Logger.e("Updated Top New Albums successful");
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						}
					});
				}
			}).start();
		}
	}	
	
}
