package linetv.vietnam.database;

import linetv.vietnam.database.DatabaseHelper;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.google.analytics.tracking.android.Log;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class DatabaseDAO {
	
	DatabaseHelper mDatabaseHelper;
	SQLiteDatabase mSqLiteDatabase;
	
	public DatabaseDAO(Context context) {
		// TODO Auto-generated constructor stub
		mDatabaseHelper = new DatabaseHelper(context);
		mSqLiteDatabase = mDatabaseHelper.getWritableDatabase();
	}
	
	public void close() {
		mDatabaseHelper.close();
	}
	
	/** ---------- Favourite Channels ---------- */
	/** ---------- Favourite Channels ---------- */
	/** ---------- Favourite Channels ---------- */
	
	public boolean checkFavouriteChannelExist(String channelId) {
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_FAVOURITE_CHANNEL, null,
											  DatabaseHelper.CL_FAVOURITE_CHANNEL_ID + "='" + channelId + "'",
											  null, null, null, null);
		boolean result = (cursor.getCount() == 1);
		cursor.close();
		return result;
	}
	
	public void insertFavouriteChannel(String channelId, String version, String data) {
		ContentValues contentValues = new ContentValues();
		contentValues.put(DatabaseHelper.CL_FAVOURITE_CHANNEL_ID, channelId);
		contentValues.put(DatabaseHelper.CL_FAVOURITE_CHANNEL_VERSION, version);
		contentValues.put(DatabaseHelper.CL_FAVOURITE_CHANNEL_DATA, data);
		mSqLiteDatabase.insert(DatabaseHelper.TB_FAVOURITE_CHANNEL, null, contentValues);
	}
	
	public void deleteFavouriteChannel(String channelId) {
		mSqLiteDatabase.delete(DatabaseHelper.TB_FAVOURITE_CHANNEL, DatabaseHelper.CL_FAVOURITE_CHANNEL_ID + "='" + channelId + "'", null);
	}
	
	public void updateFavouriteChannel(String channelId, String version, String data) {
		ContentValues contentValues = new ContentValues();
		contentValues.put(DatabaseHelper.CL_FAVOURITE_CHANNEL_ID, channelId);
		contentValues.put(DatabaseHelper.CL_FAVOURITE_CHANNEL_VERSION, version);
		contentValues.put(DatabaseHelper.CL_FAVOURITE_CHANNEL_DATA, data);
		mSqLiteDatabase.update(DatabaseHelper.TB_FAVOURITE_CHANNEL, contentValues, DatabaseHelper.CL_FAVOURITE_CHANNEL_ID + "='" + channelId + "'", null);
	}
	
	public JSONArray getFavouriteChannel() {
		JSONArray favouriteChannelData = new JSONArray();
		
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_FAVOURITE_CHANNEL, new String[] {DatabaseHelper.CL_FAVOURITE_CHANNEL_DATA}, null, null, null, null, null);
		
		try {
			for (int i = 0; i < cursor.getCount(); i++) {
				cursor.moveToPosition(i);
				JSONObject channel = new JSONObject(cursor.getString(0));
				favouriteChannelData.put(channel);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		cursor.close();
		
		return favouriteChannelData;
	}
	
	public String getFavouriteChannelVersion(String channelId) {
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_FAVOURITE_CHANNEL, new String [] {DatabaseHelper.CL_FAVOURITE_CHANNEL_VERSION},
											  DatabaseHelper.CL_CATEGORY_CHANNEL_ID + "='" + channelId, null, null, null, null);
		
		cursor.moveToPosition(0);
		String version = cursor.getString(0);
		cursor.close();
		return version;
	}

	/** ---------- Category Channels ---------- */
	/** ---------- Category Channels ---------- */
	/** ---------- Category Channels ---------- */
	
	public boolean checkCategoryChannelExist(String catId) {
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_CATEGORY_CHANNEL, null, DatabaseHelper.CL_CATEGORY_CHANNEL_ID + "='" + catId + "'", null, null, null, null);
		boolean result = (cursor.getCount() == 1);
		cursor.close();
		return result;
	}
	
	public void insertCategoryChannel(String catId, String version, String data) {
		ContentValues contentValues = new ContentValues();
		contentValues.put(DatabaseHelper.CL_CATEGORY_CHANNEL_ID, catId);
		contentValues.put(DatabaseHelper.CL_CATEGORY_CHANNEL_VERSION, version);
		contentValues.put(DatabaseHelper.CL_CATEGORY_CHANNEL_DATA, data);
		mSqLiteDatabase.insert(DatabaseHelper.TB_CATEGORY_CHANNEL, null, contentValues);
	}
	
	public void deleteCategoryChannel(String catId) {
		mSqLiteDatabase.delete(DatabaseHelper.TB_CATEGORY_CHANNEL, DatabaseHelper.CL_CATEGORY_CHANNEL_ID + "='" + catId + "'", null);
	}
	
	public void updateCategoryChannel(String catId, String version, String data) {
		ContentValues contentValues = new ContentValues();
		contentValues.put(DatabaseHelper.CL_CATEGORY_CHANNEL_ID, catId);
		contentValues.put(DatabaseHelper.CL_CATEGORY_CHANNEL_VERSION, version);
		contentValues.put(DatabaseHelper.CL_CATEGORY_CHANNEL_DATA, data);
		mSqLiteDatabase.update(DatabaseHelper.TB_CATEGORY_CHANNEL, contentValues, DatabaseHelper.CL_CATEGORY_CHANNEL_ID + "='" + catId + "'", null);
	}
	
	public void pushCategoryChannel(String catId, String version, String data) {
		if (checkCategoryChannelExist(catId)) {
			updateCategoryChannel(catId, version, data);
		} else {
			insertCategoryChannel(catId, version, data);
		}
	}
	
	public JSONArray getCategoryData(String catId) {
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_CATEGORY_CHANNEL, new String[] {DatabaseHelper.CL_CATEGORY_CHANNEL_DATA},
										DatabaseHelper.CL_CATEGORY_CHANNEL_ID + "='" + catId + "'", null, null, null, null);
		if (cursor.getCount() != 1) {
			cursor.close();
			return new JSONArray();
		} else {
			cursor.moveToFirst();
			try {
				return new JSONArray(cursor.getString(0));
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return new JSONArray();
			}
		}
	}
	
	public String getCategoryChannelVersion(String catId) {
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_CATEGORY_CHANNEL, new String[] {DatabaseHelper.CL_CATEGORY_CHANNEL_VERSION},
											  DatabaseHelper.CL_CATEGORY_CHANNEL_ID + "='" + catId + "'", null, null, null, null);
		if (cursor.getCount() != 1) {
			cursor.close();
			return "";
		} else {
			cursor.moveToFirst();
			String version = cursor.getString(0);
			cursor.close();
			return version;
		}
	}
}
