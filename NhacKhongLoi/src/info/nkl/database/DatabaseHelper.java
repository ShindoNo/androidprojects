package info.nkl.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DatabaseHelper extends SQLiteOpenHelper{
	private static final String DB_NAME = "nkl.sqlite.new";
	private static final int DB_VERSION = 1;
	
//	public static String TB_FAVOURITE_ALBUMS = "favourite_album";
//	public static String CL_FAVOURITE_ALBUM_ID = "album_id";
//	public static String CL_FAVOURITE_ALBUM_NAME = "album_name";
//	private String CREATE_TB_FAVOURITE_ALBUMS = "CREATE TABLE favourite_album (album_id text primary key not null, album_name text not null)";
//	
//	public static String TB_PLAYLIST = "playlist";
//	public static String CL_PLAYLIST_NAME = "name";
//	private String CREATE_TB_PLAYLIST = "CREATE TABLE playlist (name text primary key not null)";
//	
//	public static String TB_SONG = "song";
//	public static String CL_SONG_ID = "id";
//	public static String CL_SONG_NAME = "name";
//	public static String CL_SONG_MP3 = "mp3";
//	public static String CL_SONG_PLAYLIST_NAME = "playlist_name";
//	private String CREATE_TB_SONG = "CREATE TABLE song (id text primary key not null, name text, mp3 text, playlist_name text)";
	
	public static final String TB_ALBUM = "album";
	public static final String CL_ALBUM_ID = "id";
	public static final String CL_ALBUM_DATA = "data";
	public static final String CL_ALBUM_FAVOURITE = "favourite";
	public static final String CL_ALBUM_LAST_UPDATE = "last_update";
	public static final String CREATE_TB_ALBUM = "CREATE TABLE album (id text primary key not null, data text not null, favourite text not null, last_update text not null)";
	
	public DatabaseHelper(Context context) {
		// TODO Auto-generated constructor stub
		super(context, DB_NAME, null, DB_VERSION);
	}
	
	@Override
	public void onCreate(SQLiteDatabase db) {
		// TODO Auto-generated method stub
//		db.execSQL(CREATE_TB_FAVOURITE_ALBUMS);
//		db.execSQL(CREATE_TB_PLAYLIST);
//		db.execSQL(CREATE_TB_SONG);
		
		db.execSQL(CREATE_TB_ALBUM);
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// TODO Auto-generated method stub
	}
}
