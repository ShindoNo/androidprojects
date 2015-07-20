package co.barclays.demoapp.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import co.barclays.demoapp.utils.MyLog;

/**
 * Created by leanh215 on 7/20/15.
 */
public class ContactDBHelper extends SQLiteOpenHelper {

    public static final int    DATABASE_VERSION = 1;
    public static final String DATABASE_NAME = "contact.sqlite";
    public static final String TABLE_CONTACTS = "contacts";

    public static final String COLUMN_ID = "id";
    public static final String COLUMN_NAME = "name";
    public static final String COLUMN_PHONE = "phone";
    public static final String[] ALL_COLUMNS = new String[] {ContactDBHelper.COLUMN_ID, ContactDBHelper.COLUMN_NAME, ContactDBHelper.COLUMN_PHONE};

    public static final String CREATE_DB = "CREATE TABLE " + TABLE_CONTACTS
                                            + "("
                                            + COLUMN_ID + " integer primary key,"
                                            + COLUMN_NAME + " text, "
                                            + COLUMN_PHONE + " text"
                                            + ")";


    public ContactDBHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(CREATE_DB);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        MyLog.log("Upgrade database from version " + oldVersion + " to version " + newVersion);
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_CONTACTS);
        onCreate(db);
    }
}
