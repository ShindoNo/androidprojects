package co.barclays.demoapp.fragment;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.util.HashMap;

import co.barclays.demoapp.R;
import co.barclays.demoapp.datacontroller.ErrorCode;
import co.barclays.demoapp.datacontroller.PaymentController;
import co.barclays.demoapp.datacontroller.UserController;
import co.barclays.demoapp.dialog.DialogContactPicker;
import co.barclays.demoapp.object.Account;
import co.barclays.demoapp.object.Contact;
import co.barclays.demoapp.object.Limit;
import co.barclays.demoapp.object.Payment;
import co.barclays.demoapp.utils.MyLog;
import co.barclays.demoapp.utils.Utils;

/**
 * Created by leanh215 on 7/20/15.
 */
public class FragmentScreen1 extends Fragment {

    ProgressDialog mProgressDialog;
    EditText etAirTimeAmount;

    Account mAccount;
    Limit mLimit;

    Contact pickedContact;

    boolean isDownloading;

    Payment mPayment;

    public static FragmentScreen1 getInstance() {
        FragmentScreen1 fragmentScreen1 = new FragmentScreen1();
        fragmentScreen1.init();
        return fragmentScreen1;
    }

    public void init() {

    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_screen_1, container, false);
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        initUI();
        downloadData();
        MyLog.log("onViewCreated()");
    }

    public void initUI() {
        mProgressDialog = new ProgressDialog(getActivity());
        mProgressDialog.setCancelable(false);
        mProgressDialog.setMessage(getString(R.string.loading));

        etAirTimeAmount = (EditText) getView().findViewById(R.id.et_air_time_amount);
        etAirTimeAmount.addTextChangedListener(mAirTimeAmountWatcher);

        getView().findViewById(R.id.et_receiver_number).setOnTouchListener(mOnTouchReciverNumber);
        getView().findViewById(R.id.btn_cancel).setOnClickListener(mOnClickCancel);
        getView().findViewById(R.id.btn_buy).setOnClickListener(mOnClickBuy);
    }

    TextWatcher mAirTimeAmountWatcher = new TextWatcher() {
        @Override
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

        @Override
        public void onTextChanged(CharSequence s, int start, int before, int count) {}

        @Override
        public void afterTextChanged(Editable s) {
            MyLog.log("afterTextChanged s=" + s.toString());
            if (s.toString().trim().equals("")) {
                return;
            }
            String input = s.toString().replaceAll(",", "");

            etAirTimeAmount.removeTextChangedListener(mAirTimeAmountWatcher);

            if (input.length() > 9) {
                etAirTimeAmount.setText(Utils.formatNumber(Integer.parseInt(input.subSequence(0, 9).toString())));
                etAirTimeAmount.setSelection(etAirTimeAmount.getText().length());

            } else {
                String formatedInput = Utils.formatNumber(Integer.parseInt(input));
                etAirTimeAmount.setText(formatedInput);
                etAirTimeAmount.setSelection(etAirTimeAmount.getText().length());
            }

            etAirTimeAmount.addTextChangedListener(mAirTimeAmountWatcher);
        }
    };

    View.OnTouchListener mOnTouchReciverNumber = new View.OnTouchListener() {
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            if (event.getAction() == MotionEvent.ACTION_UP) {
                new DialogContactPicker(getActivity(), mContactPickerCallback);
                return true;
            }
            return false;
        }
    };

    Handler mContactPickerCallback = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == ErrorCode.SUCCESSFUL) {
                pickedContact = (Contact)msg.obj;
                ((EditText)getView().findViewById(R.id.et_receiver_number)).setText(pickedContact.getPhone());
            }
        }
    };

    View.OnClickListener mOnClickCancel = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Utils.showExitDialog(getActivity());
        }
    };

    View.OnClickListener mOnClickBuy = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            initPayment();
        }
    };

    public void downloadData() {
        // check if data is downloading
        if (isDownloading) {
            return;
        }

        // check if data is downloaded
        if (mAccount != null) {
            displayData();
            return;
        }

        Handler handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                mProgressDialog.dismiss();
                isDownloading = false;

                if (msg.what == ErrorCode.FAILED) {
                    String errorMsg = (String)msg.obj;
                    showError(errorMsg);
                } else if (msg.what == ErrorCode.SUCCESSFUL) {
                    HashMap<String, Object> hashMap = (HashMap<String, Object>) msg.obj;
                    mAccount = (Account)hashMap.get("account");
                    mLimit = (Limit)hashMap.get("limit");
                    displayData();
                }
            }
        };

        mProgressDialog.show();
        isDownloading = true;
        UserController.getAccountInfo(handler);
    }

    public void showError(String message) {
        String positive = getString(R.string.try_again);
        String negative = getString(R.string.cancel);

        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                if (which == -1) {
                    downloadData();
                }
            }
        };

        Utils.showMessageDialog(getActivity(), message, positive, negative, onClickListener);
    }

    public void displayData() {
        ((TextView)getView().findViewById(R.id.tv_balance)).setText(Utils.formatNumber(mAccount.getAvailableBalance()));
        ((TextView)getView().findViewById(R.id.tv_daily_limit)).setText(Utils.formatNumber(mLimit.getDailyLimit()));
        ((TextView)getView().findViewById(R.id.tv_monthly_limit)).setText(Utils.formatNumber(mLimit.getMonthlyLimit()));
    }

    public void initPayment() {
        // check input validation
        final String airTimeAmount = ((EditText)getView().findViewById(R.id.et_air_time_amount)).getText().toString().trim();
        String receiverNumber = ((EditText)getView().findViewById(R.id.et_receiver_number)).getText().toString().trim();
        final String accountNumber = ((EditText)getView().findViewById(R.id.et_account_number)).getText().toString().trim();

        if (airTimeAmount.equals("")) {
            ((EditText)getView().findViewById(R.id.et_air_time_amount)).requestFocus();
            Toast.makeText(getActivity(), R.string.please_enter_air_time_amount, Toast.LENGTH_SHORT).show();
            return;
        }

        if (receiverNumber.equals("")) {
            ((EditText)getView().findViewById(R.id.et_receiver_number)).requestFocus();
            Toast.makeText(getActivity(), R.string.please_enter_receiver_number, Toast.LENGTH_SHORT).show();
            return;
        }

        if (accountNumber.equals("")) {
            ((EditText)getView().findViewById(R.id.et_account_number)).requestFocus();
            Toast.makeText(getActivity(), R.string.please_enter_account_number, Toast.LENGTH_SHORT).show();
            return;
        }

        Handler handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                mProgressDialog.dismiss();

                if (msg.what == ErrorCode.FAILED) {
                    String message = (String)msg.obj;
                    Utils.showMessageDialog(getActivity(), message);
                } else if (msg.what == ErrorCode.SUCCESSFUL) {
                    mPayment = (Payment)msg.obj;
                    displayPayment(airTimeAmount, accountNumber);
                }
            }
        };

        // create destination account
        Account destinationAccount = new Account();
        destinationAccount.setType("Phone Number");
        destinationAccount.setName(pickedContact.getName());
        destinationAccount.setNumber(accountNumber);


        // convert air time amount from string to integer
        int amount = Integer.parseInt(airTimeAmount.replaceAll(",", ""));

        mProgressDialog.show();
        PaymentController.initPayment(handler, destinationAccount, amount);
    }

    public void displayPayment(String airTimeAmount, String accountNumber) {
        int amount = Integer.parseInt(airTimeAmount.replaceAll(",", ""));

        getFragmentManager().beginTransaction()
                .setCustomAnimations(R.anim.slide_right_to_left_in, R.anim.slide_right_to_left_out,
                        R.anim.slide_left_to_right_in, R.anim.slide_left_to_right_out)
                .replace(R.id.fragment_container, FragmentScreen2.getInstance(mPayment.getDestinationAccount(), amount, accountNumber))
                .addToBackStack(null)
                .commit();
    }


}
