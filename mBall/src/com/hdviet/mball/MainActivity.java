package com.hdviet.mball;

import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends FragmentActivity {
	
	 int[] mTabIds = new int[] {R.id.tab_home, R.id.tab_livescore, R.id.tab_dudoan, R.id.tab_congdong, R.id.tab_canhan};
	 int[] mTabTextIds = new int[] {R.string.tab_home, R.string.tab_livescore, R.string.tab_dudoan, R.string.tab_congdong, R.string.tab_canhan};
	 int[] mTabImageActiveId = new int[] {R.drawable.ic_tab_home_active, R.drawable.ic_tab_livescore_active, R.drawable.ic_tab_dudoan_active, R.drawable.ic_tab_congdong_active, R.drawable.ic_tab_canhan_active};
	 int[] mTabImageNormalId = new int[] {R.drawable.ic_tab_home_normal, R.drawable.ic_tab_livescore_normal, R.drawable.ic_tab_dudoan_normal, R.drawable.ic_tab_congdong_normal, R.drawable.ic_tab_canhan_normal};
	 
	 
	 int mCurrentTabPosition;
	 
	 SlidingMenu mSlidingMenu;
	 
	 
	 
	 // for test
	 String[] tabLinks = new String[]{"http://baomoi.com", "http://dantri.com", "http://vnexpress.net", "http://kenh14.vn", "http://tinhte.vn"};
	 WebView mWebView;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		
		setContentView(R.layout.activity_main);
		
		initUI();
		
		
	}
	
	public void initUI() {
		// init sliding menu
		mSlidingMenu = (SlidingMenu) findViewById(R.id.slidingmenu);
		
		
		// initWebview
		mWebView = (WebView) findViewById(R.id.webview);
		mWebView.setWebViewClient(new WebViewClient() {
			@Override
			public void onPageStarted(WebView view, String url, Bitmap favicon) {
				// TODO Auto-generated method stub
				super.onPageStarted(view, url, favicon);
				findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
			}
			@Override
			public void onPageFinished(WebView view, String url) {
				// TODO Auto-generated method stub
				super.onPageFinished(view, url);
				findViewById(R.id.pb_loading).setVisibility(View.GONE);
			}
		});
		// init tab
				
		for (int i = 0; i < mTabIds.length; i++) {
			((ImageView)findViewById(mTabIds[i]).findViewById(R.id.img_tab)).setImageResource(mTabImageNormalId[i]);
			((TextView)findViewById(mTabIds[i]).findViewById(R.id.tv_tab)).setText(getString(mTabTextIds[i]));
			findViewById(mTabIds[i]).setOnClickListener(mOnClickTabListener);
			
			findViewById(mTabIds[i]).setTag(R.id.tag_url, tabLinks[i]);
		}
		
		mCurrentTabPosition = 0;
		onSelectTab(0);
		
		
		
		
		// init menu left
		findViewById(R.id.img_menu).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mSlidingMenu.showMenu();
			}
		});
		
		initLeftMenu();
		
	}
	
	public void initLeftMenu() {
		
		
		
	}

	public void onSelectTab(int tabPosition) {
		findViewById(mTabIds[mCurrentTabPosition]).setBackgroundColor(getResources().getColor(R.color.bg_tab_normal));
		((ImageView)findViewById(mTabIds[mCurrentTabPosition]).findViewById(R.id.img_tab)).setImageResource(mTabImageNormalId[mCurrentTabPosition]);
		((TextView)findViewById(mTabIds[mCurrentTabPosition]).findViewById(R.id.tv_tab)).setTextColor(getResources().getColor(R.color.text_tab_normal));
		
		mCurrentTabPosition = tabPosition;
		findViewById(mTabIds[mCurrentTabPosition]).setBackgroundColor(getResources().getColor(R.color.bg_tab_active));
		((ImageView)findViewById(mTabIds[mCurrentTabPosition]).findViewById(R.id.img_tab)).setImageResource(mTabImageActiveId[mCurrentTabPosition]);
		((TextView)findViewById(mTabIds[mCurrentTabPosition]).findViewById(R.id.tv_tab)).setTextColor(getResources().getColor(R.color.text_tab_active));		
		 
		mWebView.loadUrl(tabLinks[tabPosition]);
		
		
		
		
	}
	
	OnClickListener mOnClickTabListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			for (int i = 0; i < mTabIds.length; i++) {
				if (mTabIds[i] == v.getId()) {
					if (mCurrentTabPosition != i) {
						onSelectTab(i);
					}
					break;
				}
			}
			
		}
	};
	

}
