package linetv.vietnam.dataservices;

import linetv.vietnam.database.DatabaseDAO;
import linetv.vietnam.utils.Logger;
import linetv.vietnam.utils.NameSpace;

import org.json.JSONArray;
import org.json.JSONObject;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

public class UpdateDataService {
	public static void updateData(final Context context, final String version) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					SharedPreferences sharedPreferences = context.getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
					String currentVersion = sharedPreferences.getString(NameSpace.SHARED_PREF_VERSION, "");
					
					if (currentVersion.equals(version)) { // current version is up to date
						Logger.e("Current data version = " + version + " is UP TO DATE");
						return;
					}
					
					DatabaseDAO databaseDAO = new DatabaseDAO(context);
					
					if (!updateCategory(sharedPreferences, databaseDAO, version)) {
						databaseDAO.close();
						return;
					}
	
					databaseDAO.close();
					sharedPreferences.edit().putString(NameSpace.SHARED_PREF_VERSION, version).commit();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}).start();
	}
	
	public static boolean updateCategory(SharedPreferences sharedPreferences, DatabaseDAO databaseDAO, String version) {
		try {
			// get from shared preference or download category data
			JSONArray categoryData = null;
			
			String currentCategoryDataVersion = sharedPreferences.getString(NameSpace.SHARED_PREF_CATEGORY_DATA_VERSION, "");
			if (currentCategoryDataVersion.equals(version)) {
				categoryData = new JSONArray(sharedPreferences.getString(NameSpace.SHARED_PREF_CATEGORY_DATA, null));
			} else {
				categoryData = (JSONArray) ServiceHelper.getData(NameSpace.API_CATEGORY, false);
			}
			
			if (categoryData == null) {
				return false;
			}
			
			// save categories data
			sharedPreferences.edit().putString(NameSpace.SHARED_PREF_CATEGORY_DATA, categoryData.toString()).commit();
			sharedPreferences.edit().putString(NameSpace.SHARED_PREF_CATEGORY_DATA_VERSION, version).commit();
			
			Logger.e("Updated menu category data to version " + version);
			
			// update list channels by each cat id
			for (int i = 0; i < categoryData.length(); i++) {
				String catId = categoryData.getJSONObject(i).getString(CategoriesChannelService.catid);
				String catIdVersion = databaseDAO.getCategoryChannelVersion(catId);
				if (!catIdVersion.equals(version)) { // update if version of list channels of a catid is out of date
					if (!updateListChannels(databaseDAO, catId, version)) { // if update list channels failed
						return false;
					}					
				}
			}
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	public static boolean updateListChannels(DatabaseDAO databaseDAO, String catId, String version) {
		JSONArray listChannels = (JSONArray) ServiceHelper.getData(String.format(NameSpace.API_LIST_CHANNELS, catId), false);
		if (listChannels == null) {
			return false;
		} else {
			databaseDAO.pushCategoryChannel(catId, version, listChannels.toString());
			
			updateFavouriteChannel(databaseDAO, listChannels, version);
			
			Logger.e("Updated catId =" + catId + " to version " + version);
			return true;
		}
	}
	
	public static void updateFavouriteChannel(DatabaseDAO databaseDAO, JSONArray listChannels, String version) {
		try {
			for (int i = 0; i < listChannels.length(); i++) {
				JSONObject channelObject = listChannels.getJSONObject(i);
				String channelId = channelObject.getString(ListChannelsServices.id);
				if (databaseDAO.checkFavouriteChannelExist(channelId)) {
					databaseDAO.updateFavouriteChannel(channelId, "", channelObject.toString());
					Logger.e("updated favourite id=" + channelId + "; data=" + channelObject.toString());
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
}
