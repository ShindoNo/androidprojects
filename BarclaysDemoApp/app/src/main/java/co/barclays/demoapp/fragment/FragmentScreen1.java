package co.barclays.demoapp.fragment;

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
import android.widget.Toast;

import co.barclays.demoapp.R;
import co.barclays.demoapp.datacontroller.ErrorCode;
import co.barclays.demoapp.dialog.DialogContactPicker;
import co.barclays.demoapp.object.Contact;
import co.barclays.demoapp.utils.MyLog;
import co.barclays.demoapp.utils.Utils;

/**
 * Created by leanh215 on 7/20/15.
 */
public class FragmentScreen1 extends Fragment {

    EditText etAirTimeAmount;

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
    }

    public void initUI() {
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
                Contact contact = (Contact)msg.obj;
                ((EditText)getView().findViewById(R.id.et_receiver_number)).setText(contact.getPhone());
            }
        }
    };

    View.OnClickListener mOnClickCancel = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Toast.makeText(getActivity(), "Click cancel", Toast.LENGTH_SHORT).show();
        }
    };

    View.OnClickListener mOnClickBuy = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            getFragmentManager().beginTransaction()
                    .setCustomAnimations(R.anim.slide_right_to_left_in, R.anim.slide_right_to_left_out,
                                         R.anim.slide_left_to_right_in, R.anim.slide_left_to_right_out)
                    .replace(R.id.fragment_container, FragmentScreen2.getInstance())
                    .addToBackStack(null)
                    .commit();
        }
    };

}
