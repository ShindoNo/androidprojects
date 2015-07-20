package co.barclays.demoapp.main;

import android.database.Cursor;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.support.v4.app.FragmentActivity;

import java.util.ArrayList;

import co.barclays.demoapp.R;
import co.barclays.demoapp.database.ContactDAO;
import co.barclays.demoapp.fragment.FragmentScreen1;
import co.barclays.demoapp.object.Contact;


public class MainActivity extends FragmentActivity {

    ContactDAO mContactDAO;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        importContact();
        initFragment();

    }

    public void initFragment() {
        getSupportFragmentManager()
                .beginTransaction()
                .add(R.id.fragment_container, FragmentScreen1.getInstance())
                .commit();
    }



    /**
     * Import contacts from phone to app database
     */
    public void importContact() {
        mContactDAO = new ContactDAO(getApplicationContext());

        new Thread(new Runnable() {
            @Override
            public void run() {

                ArrayList<Contact> contactList = getContacts();
                for (int i = 0; i < contactList.size(); i++) {
                    mContactDAO.insertContact(contactList.get(i));
                }
            }
        }).start();

    }

    public ArrayList<Contact> getContacts() {
        Cursor cursor = null;
        ArrayList<Contact> contactList = new ArrayList<Contact>();
        try {
            String sortOrder = ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME + " ASC";
            cursor = getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, sortOrder);
            int contactIdIdx = cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone._ID);
            int nameIdx = cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME);
            int phoneNumberIdx = cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER);
            cursor.moveToFirst();
            do {
                String id = cursor.getString(contactIdIdx);
                String name = cursor.getString(nameIdx);
                String phone = cursor.getString(phoneNumberIdx);

                Contact contact = new Contact(id, name, phone);
                contactList.add(contact);
            } while (cursor.moveToNext());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            return contactList;
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mContactDAO.close();
    }

}
