package com.hdviet.mball;

import com.hdviet.mball.fragment.FragmentNewsDetails;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;

public class NewsDetailsActivity extends FragmentActivity {
	
	public static final String INTENT_EXTRA_NEWS_ID = "INTENT_EXTRA_NEWS_ID";
	
	@Override
	protected void onCreate(Bundle bundle) {
		// TODO Auto-generated method stub
		super.onCreate(bundle);
		setContentView(R.layout.activity_news_details);
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
		String newsId = getIntent().getStringExtra(INTENT_EXTRA_NEWS_ID);
		FragmentNewsDetails fragmentNewsDetails = FragmentNewsDetails.getInstance(newsId);
		getSupportFragmentManager().beginTransaction()
									.add(R.id.fragment_container, fragmentNewsDetails)
									.commit();
	}
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		overridePendingTransition(R.anim.slide_left_to_right_in, R.anim.slide_left_to_right_out);
	}
	
	

}
