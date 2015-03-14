package vn.muachung.cod.dao;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class NoteSortSmsDAO {
	
	DatabaseHelper dbHelper;
	SQLiteDatabase sqliteDb;
	
	public NoteSortSmsDAO(Context context) {
		// TODO Auto-generated constructor stub
		dbHelper = new DatabaseHelper(context);
	}
	
	public void open() {
		sqliteDb = dbHelper.getWritableDatabase();
	}
	
	public void close() {
		dbHelper.close();
	}
	
	/** ------------- note -------------- */
	/** ------------- note -------------- */
	/** ------------- note -------------- */
	public boolean checkNoteExist(String orderId) {
		try {
			Cursor cursor = sqliteDb.query(DatabaseHelper.TB_NOTE,
										   null, DatabaseHelper.CL_NOTE_ORDER_ID + "='" + orderId + "'",
										   null, null, null, null);
			boolean checkResult = (cursor.getCount() == 1);
			cursor.close();
			return checkResult;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	public void insertNote(String orderId, String content) {
		ContentValues values = new ContentValues();
		values.put(DatabaseHelper.CL_NOTE_ORDER_ID, orderId);
		values.put(DatabaseHelper.CL_NOTE_CONTENT, content);
		try {
			sqliteDb.insert(DatabaseHelper.TB_NOTE, null, values);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public String getNote(String orderId) {
		try {
			Cursor cursor = sqliteDb.query(DatabaseHelper.TB_NOTE, new String[] {DatabaseHelper.CL_NOTE_CONTENT},
										   DatabaseHelper.CL_NOTE_ORDER_ID + "='" + orderId + "'",
										   null, null, null, null);
			cursor.moveToFirst();
			String note = cursor.getString(0);
			cursor.close();
			return note;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "";
		}
	}
	
	public void updateNote(String orderId, String content) {
		ContentValues values = new ContentValues();
		values.put(DatabaseHelper.CL_NOTE_CONTENT, content);
		try {
			sqliteDb.update(DatabaseHelper.TB_NOTE, values, DatabaseHelper.CL_NOTE_ORDER_ID + "='" + orderId + "'", null);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void deleteNote(String orderId) {
		try {
			sqliteDb.delete(DatabaseHelper.TB_NOTE, DatabaseHelper.CL_NOTE_ORDER_ID + "='" + orderId + "'", null);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/** ------------- sort -------------- */
	/** ------------- sort -------------- */
	/** ------------- sort -------------- */
	public boolean checkSortExist(String date) {
		try {
			Cursor cursor = sqliteDb.query(DatabaseHelper.TB_SORT, null, 
							DatabaseHelper.CL_SORT_DATE + "='" + date + "'",
							null, null, null, null);
			boolean checkResult = (cursor.getCount() == 1);
			cursor.close();
			return checkResult;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	public void insertSort(String date, String content) {
		ContentValues values = new ContentValues();
		values.put(DatabaseHelper.CL_SORT_DATE, date);
		values.put(DatabaseHelper.CL_SORT_CONTENT, content);
		try {
			sqliteDb.insert(DatabaseHelper.TB_SORT, null, values);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public String getSort(String date) {
		try {
			Cursor cursor = sqliteDb.query(DatabaseHelper.TB_SORT, new String[] {DatabaseHelper.CL_SORT_CONTENT},
											DatabaseHelper.CL_SORT_DATE + "='" + date + "'",
											null, null, null, null);
			if (cursor.getCount() == 0) return "";
			cursor.moveToFirst();
			String sort = cursor.getString(0);
			cursor.close();
			return sort;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "";
		}
	}
	
	public void updateSort(String date, String content) {
		ContentValues values = new ContentValues();
		values.put(DatabaseHelper.CL_SORT_CONTENT, content);
		try {
			sqliteDb.update(DatabaseHelper.TB_SORT, values, DatabaseHelper.CL_SORT_DATE + "='" + date + "'", null);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void deleteSort(String date) {
		try {
			sqliteDb.delete(DatabaseHelper.TB_SORT, DatabaseHelper.CL_SORT_DATE + "='" + date + "'", null);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/** ------------- sms -------------- */
	/** ------------- sms -------------- */
	/** ------------- sms -------------- */
	public boolean checkSmsExist(String orderId) {
		try {
			Cursor cursor = sqliteDb.query(DatabaseHelper.TB_SMS, null,
											DatabaseHelper.CL_SMS_ORDER_ID + "='" + orderId + "'",
											null, null, null, null);
			boolean checkResult = (cursor.getCount() == 1);
			cursor.close();
			return checkResult;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	public void insertSms(String orderId, String content) {
		ContentValues values = new ContentValues();
		values.put(DatabaseHelper.CL_SMS_ORDER_ID, orderId);
		values.put(DatabaseHelper.CL_SMS_CONTENT, content);
		try {
			sqliteDb.insert(DatabaseHelper.TB_SMS, null, values);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public String getSms(String orderId) {
		try {
			Cursor cursor = sqliteDb.query(DatabaseHelper.TB_SMS, new String[] {DatabaseHelper.CL_SMS_CONTENT},
											DatabaseHelper.CL_SMS_ORDER_ID + "='" + orderId + "'",
											null, null, null, null);
			cursor.moveToFirst();
			String content = cursor.getString(0);
			cursor.close();
			return content;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "";
		}
	}
	
}
