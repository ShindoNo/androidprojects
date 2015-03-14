package vn.muachung.cod.dao;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DatabaseHelper extends SQLiteOpenHelper {
	public static final String DB_NAME = "muachung.sqlite";
	public static final int DB_VERSION = 1;
	
	public static final String TB_NOTE = "note";
	public static final String CL_NOTE_ORDER_ID = "order_id";
	public static final String CL_NOTE_CONTENT = "content";
	
	public static final String TB_SORT = "sort";
	public static final String CL_SORT_DATE = "date";
	public static final String CL_SORT_CONTENT = "content";
	
	public static final String TB_SMS = "sms";
	public static final String CL_SMS_ORDER_ID = "order_id";
	public static final String CL_SMS_CONTENT = "content";
	
	public static final String CREATE_TB_NOTE = "CREATE TABLE " + TB_NOTE 
												+ "(" + CL_NOTE_ORDER_ID + " text primary key not null" + ","
												+ CL_NOTE_CONTENT + " text not null)";
	
	public static final String CREATE_TB_SORT = "CREATE TABLE " + TB_SORT 
												+ "(" + CL_SORT_DATE + " text primary key not null" + ","
												+ CL_SORT_CONTENT + " text not null)";
	
	public static final String CREATE_TB_SMS = "CREATE TABLE " + TB_SMS
												+ "(" + CL_SMS_ORDER_ID + " text primary key not null" + ","
												+ CL_SMS_CONTENT + " text not null)";
	
	public DatabaseHelper(Context context) {
		// TODO Auto-generated constructor stub
		super(context, DB_NAME, null, DB_VERSION);
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		// TODO Auto-generated method stub
		db.execSQL(CREATE_TB_NOTE);
		db.execSQL(CREATE_TB_SORT);
		db.execSQL(CREATE_TB_SMS);
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// TODO Auto-generated method stub
	}

}
