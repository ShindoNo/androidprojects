package co.barclays.demoapp.fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import co.barclays.demoapp.R;
import co.barclays.demoapp.object.Account;
import co.barclays.demoapp.utils.Utils;

/**
 * Created by leanh215 on 7/20/15.
 */
public class FragmentScreen2 extends Fragment{

    Account mDestinationAccount;
    int mAirTimeAmount;
    String mNumberToppedUp;

    public static FragmentScreen2 getInstance(Account destinationAccount, int airTimeAmount, String numberToppedUp) {
        FragmentScreen2 fragmentScreen2 = new FragmentScreen2();
        fragmentScreen2.init(destinationAccount, airTimeAmount, numberToppedUp);
        return fragmentScreen2;
    }

    public void init(Account destinationAccount, int airTimeAmount, String numberToppedUp) {
        mDestinationAccount = destinationAccount;
        mAirTimeAmount = airTimeAmount;
        mNumberToppedUp = numberToppedUp;
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_screen_2, container, false);
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        initUI();
    }

    public void initUI() {
        ((TextView)getView().findViewById(R.id.tv_destination_account_name)).setText(mDestinationAccount.getName());
        ((TextView)getView().findViewById(R.id.tv_air_time_amount)).setText(Utils.formatNumber(mAirTimeAmount));
        ((TextView)getView().findViewById(R.id.tv_number_topped_up)).setText(mNumberToppedUp);

        getView().findViewById(R.id.btn_cancel).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getActivity(), "No Action", Toast.LENGTH_SHORT).show();
            }
        });

        getView().findViewById(R.id.btn_confirm).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getActivity(), "No Action", Toast.LENGTH_SHORT).show();
            }
        });
    }




}
