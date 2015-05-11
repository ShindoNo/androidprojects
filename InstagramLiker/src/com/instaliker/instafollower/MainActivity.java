package com.instaliker.instafollower;

import org.json.JSONObject;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.idroid.lib.support.ReadConfig;
import com.idroid.lib.support.SupportTools;
import com.instaliker.instafollower.DialogLogin.OnLoginListener;
import com.instaliker.instafollower.FragmentGetCoins.OnReachAPILimitListener;
import com.instaliker.instafollower.FragmentMore.OnLogoutListener;

public class MainActivity extends FragmentActivity {
	FragmentManager mFragmentManager;
	FragmentGetCoins mFragmentGetCoins;
	FragmentMyPhoto mFragmentGetLikes;
	FragmentBuyLikes mFragmentBuyLikes;
	FragmentBuyFollowers mFragmentBuyFollowers;
	FragmentMore mFragmentMore;
	Fragment mCurrentFragmentTab;

	BroadcastReceiver mCoinsReceiver;

	int[] icTabNormal = new int[] { R.drawable.ic_get_coins_normal, R.drawable.ic_get_likes_normal,
			R.drawable.ic_get_followers_normal, R.drawable.ic_more_normal };
	int[] icTabSelected = new int[] { R.drawable.ic_get_coins_pressed, R.drawable.ic_get_likes_pressed,
			R.drawable.ic_get_followers_pressed, R.drawable.ic_more_pressed };
	int[] tvTabId = new int[] { R.id.tv_tab_get_coins, R.id.tv_tab_get_likes, R.id.tv_tab_follow, R.id.tv_tab_more };
	int mCurrentTabPosition = 0;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		 SupportTools.checkPackageName(this, "041f6e784e80f5869c571e815d55697a643d88ed8cf75a38818732265c7d5517");	
		
//		try {
//			MCrypt mCrypt = new MCrypt("Ljava/lang/Runna", "Ljava/lang/Runna");
//			Log.e("stk", mCrypt.encryptToHexString("com.instaliker.instafollower"));
//		} catch (Exception e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}

		initFragment();
		initUI();
		registerCoinsReceiver();
		new ReadConfig(MainActivity.this, "http://blackmaze.net/info/insta_liker_2/config6.0.txt", true);
		createAds();

		// very important
		new DialogLogin(this, new OnLoginListener() {
			@Override
			public void onLoginSuccessful(String userInfo) {
				// TODO Auto-generated method stub
				try {
					JSONObject userInfoJSON = new JSONObject(userInfo);
					String coins = userInfoJSON.getJSONObject("data").getString("coins");
					mOnUpdateCoinListener.update(Integer.parseInt(coins));
					mFragmentGetCoins.loadNext();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		});
	}

	public void registerCoinsReceiver() {
		IntentFilter filter = new IntentFilter();
		filter.addAction(NameSpace.ACTION_BROADCAST_COIN);

		mCoinsReceiver = new BroadcastReceiver() {
			@Override
			public void onReceive(Context context, Intent intent) {
				// TODO Auto-generated method stub
				if (intent.getAction().equals(NameSpace.ACTION_BROADCAST_COIN)) {
					int coins = intent.getIntExtra(NameSpace.EXTRA_COINS, 0);
					mOnUpdateCoinListener.update(coins);
				}
			}
		};

		registerReceiver(mCoinsReceiver, filter);
	}

	public void createAds() {
		AdView adView = new AdView(this);
		adView.setAdSize(AdSize.BANNER);
		adView.setAdUnitId(SupportTools.getAdmobId(this));
		AdRequest adRequest = new AdRequest.Builder().build();
		adView.loadAd(adRequest);

		RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.MATCH_PARENT,
				RelativeLayout.LayoutParams.WRAP_CONTENT);
		adView.setLayoutParams(lp);

		RelativeLayout rootView = (RelativeLayout) findViewById(R.id.rootview);
		rootView.addView(adView);
	}

	@Override
	public boolean onKeyUp(int keyCode, KeyEvent event) {
		// TODO Auto-generated method stub
		if (keyCode == KeyEvent.KEYCODE_BACK) {
			if (mFragmentBuyLikes != null && mFragmentBuyLikes.isVisible()) {
				mFragmentManager.popBackStack();
			} else {
				ReadConfig.showExit(MainActivity.this);
			}
			return true;
		}
		return super.onKeyUp(keyCode, event);
	}

	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		unregisterReceiver(mCoinsReceiver);
	}

	public void initFragment() {
		mFragmentManager = getSupportFragmentManager();
		mFragmentManager.addOnBackStackChangedListener(mOnBackStackChangedListener);

		mFragmentGetCoins = FragmentGetCoins.getNewInstance(MainActivity.this, mOnReachAPILimitListener);
		mCurrentFragmentTab = mFragmentGetCoins;
		mFragmentManager.beginTransaction().add(R.id.layout_container, mFragmentGetCoins).commit();

		((TextView) findViewById(R.id.tv_top_center)).setText("Get Coins");
		findViewById(R.id.tv_top_left).setVisibility(View.GONE);

	}

	public void initUI() {
		findViewById(R.id.tv_tab_get_coins).setOnClickListener(mOnClickTabListener);
		findViewById(R.id.tv_tab_get_likes).setOnClickListener(mOnClickTabListener);
		findViewById(R.id.tv_tab_follow).setOnClickListener(mOnClickTabListener);
		findViewById(R.id.tv_tab_more).setOnClickListener(mOnClickTabListener);
	}

	OnClickListener mOnClickTabListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			// if clicked tab already selected, no action
			if (v.getId() == tvTabId[mCurrentTabPosition]) {
				return;
			}

			// change current tab color
			TextView tvCurrentTab = (TextView) findViewById(tvTabId[mCurrentTabPosition]);
			tvCurrentTab.setBackgroundColor(0);
			tvCurrentTab.setTextColor(Color.parseColor("#919294"));
			tvCurrentTab.setCompoundDrawablesWithIntrinsicBounds(0, icTabNormal[mCurrentTabPosition], 0, 0);

			// get new tab
			for (int i = 0; i < tvTabId.length; i++) {
				if (v.getId() == tvTabId[i]) {
					mCurrentTabPosition = i;
					break;
				}
			}

			// change new tab color
			tvCurrentTab = (TextView) findViewById(tvTabId[mCurrentTabPosition]);
			tvCurrentTab.setBackgroundColor(Color.parseColor("#0f1114"));
			tvCurrentTab.setTextColor(Color.parseColor("#ffffff"));
			tvCurrentTab.setCompoundDrawablesWithIntrinsicBounds(0, icTabSelected[mCurrentTabPosition], 0, 0);

			// replace with new fragment
			if (v.getId() == R.id.tv_tab_get_coins) {
				mFragmentManager.beginTransaction().hide(mCurrentFragmentTab).show(mFragmentGetCoins).commit();
				mCurrentFragmentTab = mFragmentGetCoins;
				setTitle("Get Coins");
			} else if (v.getId() == R.id.tv_tab_get_likes) {
				if (mFragmentGetLikes == null) {
					mFragmentGetLikes = FragmentMyPhoto.getNewInstance(MainActivity.this, mOnSpendCoinListener);
					mFragmentManager.beginTransaction().add(R.id.layout_container, mFragmentGetLikes).commit();
				}

				mFragmentManager.beginTransaction().hide(mCurrentFragmentTab).show(mFragmentGetLikes).commit();
				mCurrentFragmentTab = mFragmentGetLikes;
				setTitle("Buy Likes");
			} else if (v.getId() == R.id.tv_tab_follow) {
				if (mFragmentBuyFollowers == null) {
					mFragmentBuyFollowers = FragmentBuyFollowers.getNewInstance(MainActivity.this);
					mFragmentManager.beginTransaction().add(R.id.layout_container, mFragmentBuyFollowers).commit();
				}

				mFragmentManager.beginTransaction().hide(mCurrentFragmentTab).show(mFragmentBuyFollowers).commit();
				mCurrentFragmentTab = mFragmentBuyFollowers;
				setTitle("Buy Followers");
			} else if (v.getId() == R.id.tv_tab_more) {
				if (mFragmentMore == null) {
					mFragmentMore = FragmentMore.getNewInstance(MainActivity.this, mOnLogoutListener);
					mFragmentManager.beginTransaction().add(R.id.layout_container, mFragmentMore).commit();
				}

				mFragmentManager.beginTransaction().hide(mCurrentFragmentTab).show(mFragmentMore).commit();
				mCurrentFragmentTab = mFragmentMore;
				setTitle("More");
			}
		}
	};

	public void setTitle(String title) {
		((TextView) findViewById(R.id.tv_top_center)).setText(title);
	}

	/** ------------------- INTERFACE ------------------- */
	/** ------------------- INTERFACE ------------------- */
	/** ------------------- INTERFACE ------------------- */

	OnBackStackChangedListener mOnBackStackChangedListener = new OnBackStackChangedListener() {
		@Override
		public void onBackStackChanged() {
			// TODO Auto-generated method stub
			if (mFragmentGetLikes.isVisible()) {
				mCurrentFragmentTab = mFragmentGetLikes;
			}
		}
	};

	OnUpdateCoinListener mOnUpdateCoinListener = new OnUpdateCoinListener() {
		@Override
		public void update(int coin) {
			// TODO Auto-generated method stub
			Util.saveCoins(MainActivity.this, coin);

			if (coin > 10000) {
				((TextView) findViewById(R.id.tv_top_right)).setText((coin / 1000) + "K ");
			} else {
				((TextView) findViewById(R.id.tv_top_right)).setText(coin + " ");
			}

			if (mFragmentBuyLikes != null) {
				mFragmentBuyLikes.initUIWithCoins();
			}

			if (mFragmentBuyFollowers != null) {
				mFragmentBuyFollowers.initUIWithCoin();
			}
		}
	};

	OnSpendCoinListener mOnSpendCoinListener = new OnSpendCoinListener() {
		@Override
		public void spend(JSONObject imgData) {
			// TODO Auto-generated method stub
			if (mFragmentBuyLikes == null) {
				mFragmentBuyLikes = FragmentBuyLikes.getNewInstance(MainActivity.this);
				mFragmentManager.beginTransaction().add(R.id.layout_container, mFragmentBuyLikes).commit();
			}

			mFragmentManager.beginTransaction()
					.hide(mCurrentFragmentTab)
					.show(mFragmentBuyLikes)
					.addToBackStack(null)
					.commit();
			mCurrentFragmentTab = mFragmentBuyLikes;
			mFragmentBuyLikes.setDataImage(imgData);
		}
	};

	OnLogoutListener mOnLogoutListener = new OnLogoutListener() {
		@Override
		public void logoutSuccessful() {
			// TODO Auto-generated method stub
			mFragmentManager.beginTransaction().hide(mCurrentFragmentTab).show(mFragmentGetCoins).commit();
			mCurrentFragmentTab = mFragmentGetCoins;

			new DialogLogin(MainActivity.this, new OnLoginListener() {
				@Override
				public void onLoginSuccessful(String userInfo) {
					// TODO Auto-generated method stub
					try {
						JSONObject userInfoJSON = new JSONObject(userInfo);
						String coins = userInfoJSON.getJSONObject("data").getString("coins");
						mOnUpdateCoinListener.update(Integer.parseInt(coins));
						mFragmentGetCoins.loadNext();
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			});

			// change current tab color
			TextView tvCurrentTab = (TextView) findViewById(tvTabId[mCurrentTabPosition]);
			tvCurrentTab.setBackgroundColor(0);
			tvCurrentTab.setTextColor(Color.parseColor("#919294"));
			tvCurrentTab.setCompoundDrawablesWithIntrinsicBounds(0, icTabNormal[mCurrentTabPosition], 0, 0);

			mCurrentTabPosition = 0;

			// change new tab color
			tvCurrentTab = (TextView) findViewById(tvTabId[mCurrentTabPosition]);
			tvCurrentTab.setBackgroundColor(Color.parseColor("#0f1114"));
			tvCurrentTab.setTextColor(Color.parseColor("#ffffff"));
			tvCurrentTab.setCompoundDrawablesWithIntrinsicBounds(0, icTabSelected[mCurrentTabPosition], 0, 0);
		}
	};

	OnReachAPILimitListener mOnReachAPILimitListener = new OnReachAPILimitListener() {
		@Override
		public void onReached() {
			// TODO Auto-generated method stub
			FragmentMore.logout(MainActivity.this, mOnLogoutListener);
			Toast.makeText(
					MainActivity.this,
					"Your session is has expired or You have reached Like&Follow limit. Please re-loggin or try again later",
					Toast.LENGTH_LONG)
					.show();
		}
	};

	public interface OnUpdateCoinListener {
		public void update(int coin);
	}

	public interface OnSpendCoinListener {
		public void spend(JSONObject imgData);
	}

}
