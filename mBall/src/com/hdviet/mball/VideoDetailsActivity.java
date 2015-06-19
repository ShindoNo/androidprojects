package com.hdviet.mball;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;

import com.hdviet.mball.fragment.FragmentVideoDetails;

public class VideoDetailsActivity extends FragmentActivity{
	
	public static final String INTENT_EXTRA_ID = "INTENT_EXTRA_ID";
	
	@Override
	protected void onCreate(Bundle bundle) {
		// TODO Auto-generated method stub
		super.onCreate(bundle);
		setContentView(R.layout.activity_video_details);
		initUI();
	}
	
	public void initUI() {
		findViewById(R.id.img_back).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				finish();
			}
		});
		
		initFragment();
	}
	
	public void initFragment() {
		String videoId = getIntent().getStringExtra(INTENT_EXTRA_ID);
		getSupportFragmentManager().beginTransaction()	
									.add(R.id.fragment_container, FragmentVideoDetails.getInstance(videoId))
									.commit();
		
	}
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		overridePendingTransition(R.anim.slide_left_to_right_in, R.anim.slide_left_to_right_out);
	}
	
	
	
	
	

}
