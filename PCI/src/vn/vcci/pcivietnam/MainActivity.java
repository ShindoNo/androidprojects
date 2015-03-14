package vn.vcci.pcivietnam;

import java.util.Locale;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;

import com.google.analytics.tracking.android.Fields;
import com.google.analytics.tracking.android.GoogleAnalytics;
import com.google.analytics.tracking.android.MapBuilder;
import com.google.analytics.tracking.android.Tracker;
import com.slidingmenu.lib.SlidingMenu;

public class MainActivity extends FragmentActivity {
	
	public static final String ACTION_CHANGE_TITLE = "action.change.title";
	public static final String EXTRA_TITLE = "extra.title";
	public static final String ACTION_CHANGE_MENU_OR_BACK = "action.change.menu.or.back";
	public static final String EXTRA_SHOW_MENU_OR_BACK = "extra.show.menu.or.back";
	public static final String SHOW_MENU = "show_menu";
	public static final String SHOW_BACK = "show_back";
	public static final String ACTION_SHOW_SORT = "action.show.sort";
	public static final String ACTION_HIDE_SORT = "action.hide.sort";
	
	public static final String ACTION_SHOW_YEAR = "action.show.year";
	public static final String ACTION_HIDE_YEAR = "action.hide.year";

	ProgressDialog mProgressDialog;
	FragmentManager mFragmentManager;
	SlidingMenu mSlidingMenu;
	
	BroadcastReceiver mBroadcastReceiver;
	
	FragmentReport mFragmentReport;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		NameSpace.changeHost();
		
		mFragmentManager = getSupportFragmentManager();
		mSlidingMenu = (SlidingMenu) findViewById(R.id.sliding_menu);
		
		showWelcomeDialog();
		initUI();
		registerReceiver();
		
		// stop auto popup keyboard
		this.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN);
		
		initGoogleAnalytics();
	}
	
	public void showWelcomeDialog() {
		final Dialog dialog = new Dialog(this, android.R.style.Theme_Black_NoTitleBar);
		dialog.getWindow().requestFeature(Window.FEATURE_NO_TITLE);
		dialog.setContentView(R.layout.dialog_welcome_2);
		dialog.getWindow().getAttributes().windowAnimations = R.style.DialogAnimation;
		dialog.show();
		
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		}, 3000);
	}
	
	public void initGoogleAnalytics() {
		String gaAll = "UA-48871081-3";
		Tracker trackerAll = GoogleAnalytics.getInstance(this).getTracker(gaAll);
		trackerAll.send(MapBuilder.createAppView().set(Fields.SCREEN_NAME, getPackageName()).build());
		
		String gaApp = "UA-48871081-2";
		Tracker trackerApp = GoogleAnalytics.getInstance(this).getTracker(gaApp);
		trackerApp.send(MapBuilder.createAppView().set(Fields.SCREEN_NAME, getPackageName()).build());
	}
	
	public void registerReceiver() {
		mBroadcastReceiver = new BroadcastReceiver() {
			@Override
			public void onReceive(Context context, Intent intent) {
				// TODO Auto-generated method stub
				if (intent.getAction().equals(ACTION_CHANGE_TITLE)) {
					String title = intent.getStringExtra(EXTRA_TITLE);
					if (title == null) {
						title = "";
					}
					((TextView)findViewById(R.id.tv_title)).setText(title);
				} else if (intent.getAction().equals(ACTION_CHANGE_MENU_OR_BACK)) {
					if (intent.getStringExtra(EXTRA_SHOW_MENU_OR_BACK).equals(SHOW_MENU)) {
						findViewById(R.id.img_menu).setVisibility(View.VISIBLE);
						findViewById(R.id.img_back).setVisibility(View.GONE);
					} else if (intent.getStringExtra(EXTRA_SHOW_MENU_OR_BACK).equals(SHOW_BACK)){
						findViewById(R.id.img_menu).setVisibility(View.GONE);
						findViewById(R.id.img_back).setVisibility(View.VISIBLE);
					}
				} else if (intent.getAction().equals(ACTION_SHOW_SORT)) {
					findViewById(R.id.tv_sort).setVisibility(View.VISIBLE);
				} else if (intent.getAction().equals(ACTION_HIDE_SORT)) {
					findViewById(R.id.tv_sort).setVisibility(View.GONE);
				} else if (intent.getAction().equals(ACTION_SHOW_YEAR)) {
					findViewById(R.id.tv_select_year).setVisibility(View.VISIBLE);
				} else if (intent.getAction().equals(ACTION_HIDE_YEAR)) {
					findViewById(R.id.tv_select_year).setVisibility(View.GONE);
				}
			}
		};
		
		IntentFilter filter = new IntentFilter(ACTION_CHANGE_TITLE);
		filter.addAction(ACTION_CHANGE_MENU_OR_BACK);
		filter.addAction(ACTION_SHOW_SORT);
		filter.addAction(ACTION_HIDE_SORT);
		filter.addAction(ACTION_SHOW_YEAR);
		filter.addAction(ACTION_HIDE_YEAR);
		registerReceiver(mBroadcastReceiver, filter);
	}
	
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		unregisterReceiver(mBroadcastReceiver);
	}
	
	public void initUI() {
		mProgressDialog = new ProgressDialog(this);
		mProgressDialog.setMessage("Loading...");
		
		FragmentMenu fragmentMenu = FragmentMenu.getInstance(MainActivity.this, mOnClickMenuListener);
		mFragmentManager.beginTransaction().add(R.id.menu_container, fragmentMenu).commit();
		
		findViewById(R.id.img_menu).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mSlidingMenu.showBehind();
			}
		});
		
		findViewById(R.id.img_back).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mFragmentManager.popBackStack();
			}
		});
		
		findViewById(R.id.tv_sort).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				final Dialog dialog = new Dialog(MainActivity.this);
				dialog.getWindow().requestFeature(Window.FEATURE_NO_TITLE);
				dialog.setContentView(R.layout.dialog_sort);
				dialog.findViewById(R.id.tv_sort_by_rank).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						JSONArray newOrderCity = FragmentPCIResult.sortByRank(MainActivity.this);
						FragmentPCIResult.getCurrent().mAdapter.setData(newOrderCity);
						FragmentPCIResult.getCurrent().mAdapter.notifyDataSetChanged();
					}
				});
				dialog.findViewById(R.id.tv_sort_by_name).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						JSONArray newOrderCity = FragmentPCIResult.sortByName(MainActivity.this);
						FragmentPCIResult.getCurrent().mAdapter.setData(newOrderCity);
						FragmentPCIResult.getCurrent().mAdapter.notifyDataSetChanged();						
					}
				});
				dialog.show();
			}
		});
		
		findViewById(R.id.tv_select_year).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				final Dialog dialog = new Dialog(MainActivity.this);
				dialog.getWindow().requestFeature(Window.FEATURE_NO_TITLE);
				dialog.setContentView(R.layout.dialog_select_year);
				dialog.findViewById(R.id.tv_year_2011).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						FragmentPCIRank.getCurrent().loadData("2011");
					}
				});
				dialog.findViewById(R.id.tv_year_2012).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						FragmentPCIRank.getCurrent().loadData("2012");
					}
				});
				dialog.findViewById(R.id.tv_year_2013).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						FragmentPCIRank.getCurrent().loadData("2013");
					}
				});				
				dialog.show();
			}
		});
		
		if (Utils.getPCIData(this) != null) {
			showFragmentPCI();
		} else {
			mProgressDialog.show();
			new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					final String pciData = ServiceHelper.get(NameSpace.API_PCI, Utils.getDefaultParams(MainActivity.this));
					
					runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							if (pciData != null) {
								Utils.savePCIData(MainActivity.this, pciData);
								FragmentPCIResult.sortByRank(MainActivity.this);
								showFragmentPCI();
							} else {
								Toast.makeText(MainActivity.this, "Download data error", Toast.LENGTH_SHORT).show();
							}
						}
					});
				}
			}).start();
		}
	}
	
	public void showFragmentPCI() {
		getYearPosition();
		FragmentPCIResult fragmentPCIResult = FragmentPCIResult.getInstance(MainActivity.this);
		mFragmentManager.beginTransaction().replace(R.id.main_container, fragmentPCIResult).commit();
	}
	
	public void getYearPosition() {
		// for example  : pci 2011 pos=0, pci 2012 post=1, pci 2013 post=2...
		try {
			// get data json from string
			JSONObject pciDataJSON = new JSONObject(Utils.getPCIData(this));
			
			// get first district
			JSONObject firstDistrictJSON = pciDataJSON.getJSONArray("data").getJSONObject(0);
			
			// get array of pci by year, put year and position to shared preference
			JSONArray pciArray = firstDistrictJSON.getJSONArray("nam");
			for (int i = 0; i < pciArray.length(); i++) {
				String year = pciArray.getJSONObject(i).getString("nam");
				Utils.saveYearPosition(this, year, i);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	OnClickListener mOnClickMenuListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			mSlidingMenu.showAbove();
			String title = ((TextView) v).getText().toString();
			((TextView)findViewById(R.id.tv_title)).setText(title);
			
			switch (v.getId()) {
			case R.id.tv_summary:
				FragmentHighlight fragmentHilight = FragmentHighlight.getInstance(MainActivity.this);
				mFragmentManager.beginTransaction().replace(R.id.main_container, fragmentHilight).commit();
				break;
				
			case R.id.tv_pci_result:
				if (Utils.getPCIData(MainActivity.this) != null) {
					FragmentPCIResult fragmentPCIResult = FragmentPCIResult.getInstance(MainActivity.this);
					mFragmentManager.beginTransaction().replace(R.id.main_container, fragmentPCIResult).commit();					
				} else {
					initUI();
				}
				break;
				
			case R.id.tv_pci_ranking:
				FragmentPCIRank fragmentPCIRank = FragmentPCIRank.getInstance(MainActivity.this);
				mFragmentManager.beginTransaction().replace(R.id.main_container, fragmentPCIRank).commit();
				break;
			case R.id.tv_config:
				FragmentConfig fragmentConfig = FragmentConfig.getInstance(MainActivity.this);
				mFragmentManager.beginTransaction().replace(R.id.main_container, fragmentConfig).commit();
				break;
			case R.id.tv_news:
				FragmentNews fragmentNews = FragmentNews.getInstance(MainActivity.this);
				mFragmentManager.beginTransaction().replace(R.id.main_container, fragmentNews).commit();
				break;
			case R.id.tv_report:
				if (mFragmentReport == null) {
					mFragmentReport = FragmentReport.getInstance(MainActivity.this);	
				}
				
				mFragmentManager.beginTransaction().replace(R.id.main_container, mFragmentReport).commit();
				break;				
			default:
				break;
			}
			
		}
	};

}
