package co.barclays.demoapp.main;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

import java.util.ArrayList;

import co.barclays.demoapp.R;
import co.barclays.demoapp.database.ContactDAO;
import co.barclays.demoapp.fragment.FragmentScreen1;
import co.barclays.demoapp.object.Contact;
import co.barclays.demoapp.utils.Utils;


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
     * Import contacts from phone to app database <br>
     * Because this task takes long time to finish, it needs to run in a background thread
     */
    public void importContact() {
        mContactDAO = new ContactDAO(getApplicationContext());

        new Thread(new Runnable() {
            @Override
            public void run() {
                ArrayList<Contact> contactList = Utils.getContacts(getApplicationContext());
                for (int i = 0; i < contactList.size(); i++) {
                    mContactDAO.insertContact(contactList.get(i));
                }
            }
        }).start();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mContactDAO.close();
    }

    @Override
    public void onBackPressed() {
        if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
            super.onBackPressed();
        } else {
            Utils.showExitDialog(this);
        }
    }
}
