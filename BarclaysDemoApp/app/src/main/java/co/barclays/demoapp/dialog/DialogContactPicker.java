package co.barclays.demoapp.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Message;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ListView;

import java.util.ArrayList;

import co.barclays.demoapp.R;
import co.barclays.demoapp.apdapter.ContactAdapter;
import co.barclays.demoapp.database.ContactDAO;
import co.barclays.demoapp.datacontroller.ErrorCode;
import co.barclays.demoapp.object.Contact;

/**
 * Created by leanh215 on 7/20/15.
 */
public class DialogContactPicker {

    Context mContext;
    android.os.Handler mCallbackHandler;

    Dialog mDialog;
    ListView mListView;
    ContactAdapter mAdapter;

    ContactDAO mContactDAO;

    /**
     * Open dialog which show contact list
     * @param context activity context
     * @param callbackHandler return picked {@link Contact} in message
     */
    public DialogContactPicker(Context context, android.os.Handler callbackHandler) {
        mContext = context;
        mCallbackHandler = callbackHandler;
        initUI();
    }

    public void initUI() {
        mContactDAO = new ContactDAO(mContext);

        mDialog = new Dialog(mContext, R.style.AppTheme);
        mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        mDialog.setContentView(R.layout.dialog_contact_picker);

        mListView = (ListView)mDialog.findViewById(R.id.lv_contact_picker);
        mListView.setOnItemClickListener(mOnItemClickListener);
        mAdapter = new ContactAdapter(mContext);
        mListView.setAdapter(mAdapter);

        // get list contacts from db and set for adapter
        ArrayList<Contact> contactList = mContactDAO.getContactAll();
        mAdapter.setContactList(contactList);

        if (contactList.size() == 0) {
            mDialog.findViewById(R.id.tv_pick_contact).setVisibility(View.GONE);
            mDialog.findViewById(R.id.tv_no_contact_found).setVisibility(View.VISIBLE);
        }

        mDialog.show();
        mDialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface dialog) {
                mContactDAO.close();
            }
        });
    }

    AdapterView.OnItemClickListener mOnItemClickListener = new AdapterView.OnItemClickListener() {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
            // send picked contact to callback handler
            Message msg = new Message();
            msg.what = ErrorCode.SUCCESSFUL;
            msg.obj = mAdapter.getItem(position);
            mCallbackHandler.sendMessage(msg);
            mDialog.dismiss();
        }
    };


}
