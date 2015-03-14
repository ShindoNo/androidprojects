package linetv.vietnam.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DatabaseHelper extends SQLiteOpenHelper{
	private static final String DB_NAME = "gentv.sqlite";
	private static final int DB_VERSION = 1;
	
	public static String TB_FAVOURITE_CHANNEL = "favourite_channel";
	public static String CL_FAVOURITE_CHANNEL_ID = "channel_id";
	public static String CL_FAVOURITE_CHANNEL_VERSION = "version";
	public static String CL_FAVOURITE_CHANNEL_DATA = "data";
	private String CREATE_TB_FAVOURITE_CHANNEL = "CREATE TABLE favourite_channel (channel_id text primary key not null, version text not null, data text not null)";
	
	public static String TB_CATEGORY_CHANNEL = "cagetory_channel";
	public static String CL_CATEGORY_CHANNEL_ID = "cat_id";
	public static String CL_CATEGORY_CHANNEL_VERSION = "version";
	public static String CL_CATEGORY_CHANNEL_DATA = "data";
	private String CREATE_TB_CATEGORY_CHANNEL = "CREATE TABLE cagetory_channel (cat_id text primary key not null, version text not null, data text not null)";
	
	public DatabaseHelper(Context context) {
		// TODO Auto-generated constructor stub
		super(context, DB_NAME, null, DB_VERSION);
	}
	
	@Override
	public void onCreate(SQLiteDatabase db) {
		// TODO Auto-generated method stub
		db.execSQL(CREATE_TB_FAVOURITE_CHANNEL);
		db.execSQL(CREATE_TB_CATEGORY_CHANNEL);
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// TODO Auto-generated method stub
	}
}