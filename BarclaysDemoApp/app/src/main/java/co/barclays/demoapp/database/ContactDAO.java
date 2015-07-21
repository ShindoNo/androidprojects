package co.barclays.demoapp.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;

import co.barclays.demoapp.object.Contact;

/**
 * Created by leanh215 on 7/20/15.
 */
public class ContactDAO {

    SQLiteDatabase mDatabase;
    ContactDBHelper mDbHelper;


    public ContactDAO(Context context) {
        mDbHelper = new ContactDBHelper(context);
        open();
    }

    public void open() {
        mDatabase = mDbHelper.getWritableDatabase();
    }

    public void close() {
        mDbHelper.close();
    }

    /**
     * Return contact matched with given id, or @null if not exist
     * @param contactId id of contact
     * @return
     */
    public Contact getContact(String contactId) {
        Cursor cursor = mDatabase.query(ContactDBHelper.TABLE_CONTACTS, ContactDBHelper.ALL_COLUMNS,
                                        ContactDBHelper.COLUMN_ID + " = " + contactId, null, null, null, null);
        boolean isEmpty = cursor.moveToFirst();
        if (!isEmpty) {
            String id = cursor.getString(cursor.getColumnIndex(ContactDBHelper.COLUMN_ID));
            String name = cursor.getString(cursor.getColumnIndex(ContactDBHelper.COLUMN_NAME));
            String phone = cursor.getString(cursor.getColumnIndex(ContactDBHelper.COLUMN_PHONE));
            Contact contact = new Contact(id, name, phone);
            return contact;
        } else {
            return null;
        }
    }

    public ArrayList<Contact> getContactAll() {
        ArrayList<Contact> contactList = new ArrayList<Contact>();

        Cursor cursor = mDatabase.query(ContactDBHelper.TABLE_CONTACTS, ContactDBHelper.ALL_COLUMNS,
                null, null, null, null, null);
        try {
            boolean moveToFirst = cursor.moveToFirst();
            if (moveToFirst == false) {
                return contactList;
            }

            do {
                String id = cursor.getString(cursor.getColumnIndex(ContactDBHelper.COLUMN_ID));
                String name = cursor.getString(cursor.getColumnIndex(ContactDBHelper.COLUMN_NAME));
                String phone = cursor.getString(cursor.getColumnIndex(ContactDBHelper.COLUMN_PHONE));
                Contact contact = new Contact(id, name, phone);
                contactList.add(contact);
            } while (cursor.moveToNext());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return contactList;
        }
    }

    /**
     * Delete contact with given id
     * @param contactId id of contact
     */
    public void deleteContact(String contactId) {
        mDatabase.delete(ContactDBHelper.TABLE_CONTACTS, ContactDBHelper.COLUMN_ID + " = " + contactId, null);
    }

    public void deleteContactAll() {
        mDatabase.delete(ContactDBHelper.TABLE_CONTACTS, null, null);
    }

    /**
     * Insert @link{Contact} into database, do nothing if contact already existed in database
     * @param contact inserted contact
     * @return
     */
    public void insertContact(Contact contact) {
        if (checkContactExist(contact.getId())) {
            return;
        }

        ContentValues contentValues = new ContentValues();
        contentValues.put(ContactDBHelper.COLUMN_ID, contact.getId());
        contentValues.put(ContactDBHelper.COLUMN_NAME, contact.getName());
        contentValues.put(ContactDBHelper.COLUMN_PHONE, contact.getPhone());
        mDatabase.insert(ContactDBHelper.TABLE_CONTACTS, null, contentValues);
    }

    /**
     * Check account existed in database or not
     * @param contactId id of contact
     * @return true if existed, false otherwise
     */
    public boolean checkContactExist(String contactId) {
        Cursor cursor = mDatabase.query(ContactDBHelper.TABLE_CONTACTS, ContactDBHelper.ALL_COLUMNS,
                                        ContactDBHelper.COLUMN_ID  + " = " + contactId, null, null, null, null);
        boolean isExisted = cursor.moveToFirst();
        cursor.close();
        return isExisted;
    };

    /**
     * Update existed account with new values
     * @param contact contact need to be updated
     */
    public void updateContact(Contact contact) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(ContactDBHelper.COLUMN_ID, contact.getId());
        contentValues.put(ContactDBHelper.COLUMN_NAME, contact.getName());
        contentValues.put(ContactDBHelper.COLUMN_PHONE, contact.getPhone());
        mDatabase.update(ContactDBHelper.TABLE_CONTACTS, contentValues,
                         ContactDBHelper.COLUMN_ID + " = " + contact.getId(), null);
    }
}
