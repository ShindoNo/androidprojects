package com.hdviet.mball.fragment;

import com.hdviet.mball.R;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class FragmentMatchDetails extends Fragment{
	
	public static FragmentMatchDetails getInstance() {
		FragmentMatchDetails fragmentMatchDetails = new FragmentMatchDetails();
		return fragmentMatchDetails;
	}
	
	public void init() {
		
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		return inflater.inflate(R.layout.fragment_match_details, container, false);
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	public void initUI() {
		getView().findViewById(R.id.tv_match_rate).setSelected(true);
	}
	

}
