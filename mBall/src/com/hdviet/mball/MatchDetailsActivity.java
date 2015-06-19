package com.hdviet.mball;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

import com.hdviet.mball.fragment.FragmentMatchDetails;

public class MatchDetailsActivity extends FragmentActivity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_match_details);
		initUI();
		initFragment();
	}
	
	public void initUI() {
		
	}
	
	public void initFragment() {
		getSupportFragmentManager().beginTransaction()
							.add(R.id.fragment_container, FragmentMatchDetails.getInstance())
							.commit();
		
	}
	
	
	
	

}
