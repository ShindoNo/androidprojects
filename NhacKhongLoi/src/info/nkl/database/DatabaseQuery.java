package info.nkl.database;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import info.nkl.object.Album;
import info.nkl.services.ListAlbumsService;

public class DatabaseQuery {
	
	DatabaseHelper mDatabaseHelper;
	SQLiteDatabase mSqLiteDatabase;
	
	public DatabaseQuery(Context context) {
		// TODO Auto-generated constructor stub
		mDatabaseHelper = new DatabaseHelper(context);
		mSqLiteDatabase = mDatabaseHelper.getWritableDatabase();
	}
	
	public void close() {
		mDatabaseHelper.close();
	}
	
	public boolean checkALbumExist(String albumId) {
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_ALBUM, new String[] {DatabaseHelper.CL_ALBUM_ID},
												DatabaseHelper.CL_ALBUM_ID + "='" + albumId + "'",
												null, null, null, null);
		boolean checkResult = (cursor.getCount() == 1);
		cursor.close();
		return checkResult;
	}
	
	public void insertAlbum(String albumId, String data) {
		ContentValues contentValues = new ContentValues();
		contentValues.put(DatabaseHelper.CL_ALBUM_ID, albumId);
		contentValues.put(DatabaseHelper.CL_ALBUM_DATA, data);
		contentValues.put(DatabaseHelper.CL_ALBUM_FAVOURITE, "0");
		contentValues.put(DatabaseHelper.CL_ALBUM_LAST_UPDATE, System.currentTimeMillis() + "");
		
		mSqLiteDatabase.insert(DatabaseHelper.TB_ALBUM, null, contentValues);
	}
	
	public void updateAlbum(String albumId, String data) {
		ContentValues contentValues = new ContentValues();
		contentValues.put(DatabaseHelper.CL_ALBUM_DATA, data);
		contentValues.put(DatabaseHelper.CL_ALBUM_LAST_UPDATE, System.currentTimeMillis() + "");
		
		mSqLiteDatabase.update(DatabaseHelper.TB_ALBUM, contentValues, DatabaseHelper.CL_ALBUM_ID + "='" + albumId + "'", null);
	}
	
	public void deleteAlbum(String albumId) {
		mSqLiteDatabase.delete(DatabaseHelper.TB_ALBUM, DatabaseHelper.CL_ALBUM_ID + "='" + albumId + "'", null);
	}
	
	public void updateFavouriteALbum(String albumId, boolean isFavourite) {
		ContentValues contentValues = new ContentValues();
		if (isFavourite) {
			contentValues.put(DatabaseHelper.CL_ALBUM_FAVOURITE, "1");
		} else {
			contentValues.put(DatabaseHelper.CL_ALBUM_FAVOURITE, "0");
		}
		
		mSqLiteDatabase.update(DatabaseHelper.TB_ALBUM, contentValues, DatabaseHelper.CL_ALBUM_ID + "='" + albumId + "'", null);
	}
	
	public boolean checkAlbumFavourite(String albumId) {
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_ALBUM, new String[] {DatabaseHelper.CL_ALBUM_FAVOURITE},
										      DatabaseHelper.CL_ALBUM_ID + "='" + albumId + "'",
										      null, null, null, null);
		cursor.moveToFirst();
		boolean checkResult = cursor.getString(0).equals("1");
		cursor.close();
		return checkResult;
	}
	
	public ArrayList<Album> getFavouriteAlbums() {
		ArrayList<Album> listAlbums = new ArrayList<Album>();
		
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_ALBUM, new String[] {DatabaseHelper.CL_ALBUM_DATA},
											  DatabaseHelper.CL_ALBUM_FAVOURITE + "='1'" ,
											  null, null, null, null);
		
		if (cursor.getCount() == 0) {
			cursor.close();
			return listAlbums;
		} else {
			try {
				for (int i = 0; i < cursor.getCount(); i++) {
					cursor.moveToPosition(i);
					JSONObject albumDetailDataJSON = new JSONObject(cursor.getString(0));
					Album albumDetail = ListAlbumsService.convertToAlbum(albumDetailDataJSON);
					listAlbums.add(albumDetail);
				}
				cursor.close();
				return listAlbums;
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				cursor.close();
				return listAlbums;
			}
		}
	}
	
	public JSONArray getFavouriteAlbumsJSON() {
		JSONArray listAlbums = new JSONArray();
		
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_ALBUM, new String[] {DatabaseHelper.CL_ALBUM_DATA},
											  DatabaseHelper.CL_ALBUM_FAVOURITE + "='1'" ,
											  null, null, null, null);
		
		if (cursor.getCount() == 0) {
			cursor.close();
			return listAlbums;
		} else {
			try {
				for (int i = 0; i < cursor.getCount(); i++) {
					cursor.moveToPosition(i);
					JSONObject albumDetailDataJSON = new JSONObject(cursor.getString(0));
					listAlbums.put(albumDetailDataJSON);
				}
				cursor.close();
				return listAlbums;
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				cursor.close();
				return listAlbums;
			}
		}		
	}
	
	public JSONObject getAlbum(String albumId) {
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_ALBUM, new String[] {DatabaseHelper.CL_ALBUM_DATA},
				 							  DatabaseHelper.CL_ALBUM_ID + "='" + albumId + "'",
				 							  null, null, null, null);
		try {
			cursor.moveToFirst();
			JSONObject albumDetailData = new JSONObject(cursor.getString(0));
			cursor.close();
			return albumDetailData;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			cursor.close();
			return null;
		}
	}
	
	public String getAlbumLastUpdate(String albumId) {
		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_ALBUM, new String[] {DatabaseHelper.CL_ALBUM_LAST_UPDATE},
											  DatabaseHelper.CL_ALBUM_ID + "='" + albumId + "'",
											  null, null, null, null);
		cursor.moveToFirst();
		String lastUpdate = cursor.getString(0);
		cursor.close();
		return lastUpdate;
	}
	
//	/** ---------- Favourite Albums ---------- */
//	/** ---------- Favourite Albums ---------- */
//	/** ---------- Favourite Albums ---------- */
//	public boolean checkAlbumExist(String albumId) {
//		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_FAVOURITE_ALBUMS, null, DatabaseHelper.CL_FAVOURITE_ALBUM_ID + "='" + albumId + "'",
//											null, null, null, null);
//		boolean exist;
//		if (cursor.getCount() == 1)
//			exist = true;
//		else
//			exist = false;
//		
//		cursor.close();
//		return exist;
//	}
//	
//	public void insertAlbum(String albumId, String albumName) {
//		ContentValues contentValues = new ContentValues();
//		contentValues.put(DatabaseHelper.CL_FAVOURITE_ALBUM_ID, albumId);
//		contentValues.put(DatabaseHelper.CL_FAVOURITE_ALBUM_NAME, albumName);
//		mSqLiteDatabase.insert(DatabaseHelper.TB_FAVOURITE_ALBUMS, null, contentValues);
//	}
//	
//	public void removeAlbum(String albumId) {
//		mSqLiteDatabase.delete(DatabaseHelper.TB_FAVOURITE_ALBUMS, DatabaseHelper.CL_FAVOURITE_ALBUM_ID + "='" + albumId + "'", null);
//	}
//	
//	public String[][] getFavouriteAlbums() {
//		Cursor cursor = mSqLiteDatabase.query(DatabaseHelper.TB_FAVOURITE_ALBUMS, new String[] {DatabaseHelper.CL_FAVOURITE_ALBUM_ID, DatabaseHelper.CL_FAVOURITE_ALBUM_NAME},
//											  null, null, null, null, null);
//		if (cursor.getCount() == 0) {
//			cursor.close();
//			return new String[0][0];
//		} else {
//			String[][] result = new String[cursor.getCount()][2];
//			for (int i = 0; i < cursor.getCount(); i++) {
//				cursor.moveToPosition(i);
//				result[i][0] = cursor.getString(0);
//				result[i][1] = cursor.getString(1);
//			}
//			cursor.close();
//			return result;
//		}
//	}
//	
//	/** ---------- Playlist ---------- */
//	/** ---------- Playlist ---------- */
//	/** ---------- Playlist ---------- */
//	
//	public String[] getPlaylistName() {
//		return null;
//	}
//	
//	public void insertPlayList(String playlistName) {
//		ContentValues contentValues = new ContentValues();
//		contentValues.put(DatabaseHelper.CL_PLAYLIST_NAME, playlistName);
//		mSqLiteDatabase.insert(DatabaseHelper.TB_PLAYLIST, null, contentValues);
//	}
//	
//	public void deletePlaylist(String playListName) {
//		mSqLiteDatabase.delete(DatabaseHelper.TB_PLAYLIST, DatabaseHelper.CL_PLAYLIST_NAME + "='" + playListName + "'", null);
//	}
	
	

}
