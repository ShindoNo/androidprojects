package co.barclays.demoapp.fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import co.barclays.demoapp.R;

/**
 * Created by leanh215 on 7/20/15.
 */
public class FragmentScreen2 extends Fragment{

    public static FragmentScreen2 getInstance() {
        FragmentScreen2 fragmentScreen2 = new FragmentScreen2();
        fragmentScreen2.init();
        return fragmentScreen2;
    }

    public void init() {

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

    }


}
