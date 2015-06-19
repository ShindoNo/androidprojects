package com.hdviet.mball.fragment;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.pm.ActivityInfo;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.hdviet.mball.R;
import com.hdviet.mball.datacontrollers.ConfigController;
import com.hdviet.mball.datacontrollers.ErrorCode;
import com.hdviet.mball.datacontrollers.UserController;
import com.hdviet.mball.entity.Config;
import com.hdviet.mball.entity.FooterBar;
import com.hdviet.mball.entity.MenuCategory;
import com.hdviet.mball.entity.MenuItem;
import com.hdviet.mball.entity.TopBar;
import com.hdviet.mball.entity.User;
import com.hdviet.mball.network.RequestHelper;
import com.hdviet.mball.util.MyLog;
import com.hdviet.mball.util.NameSpace;
import com.hdviet.mball.util.Utils;
import com.hdviet.mball.widget.DialogLogin;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.nostra13.universalimageloader.core.ImageLoader;

public class FragmentMain extends Fragment {

	int[] mTabIds = new int[] { R.id.tab_home, R.id.tab_livescore, R.id.tab_dudoan, R.id.tab_congdong, R.id.tab_canhan };

	int[] mTabTextIds = new int[] { R.string.tab_home, R.string.tab_livescore, R.string.tab_dudoan,
			R.string.tab_congdong, R.string.tab_canhan };

	int[] mTabIcons = new int[] { R.drawable.ic_tab_home, R.drawable.ic_tab_livescore, R.drawable.ic_tab_dudoan,
			R.drawable.ic_tab_congdong, R.drawable.ic_tab_canhan };

	int mCurrentTabPosition;
	SlidingMenu mSlidingMenu;

	// others
	ProgressDialog mProgressDialog;

	// for test
	FragmentWebView mFragmentWebView;
	FragmentHome mFragmentHome;
	FragmentLiveScore mFragmentLiveScore;
//	FragmentVideoDetails mFragmentVideoDetails;
//	FragmentNewsDetails mFragmentNewsDetails;

	Fragment mCurrentShowingFragment;

	// login/logout
	DialogLogin mDialogLogin;

	public static FragmentMain getInstance() {
		FragmentMain fragmentMain = new FragmentMain();
		fragmentMain.init();
		return fragmentMain;
	}

	public void init() {

	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		MyLog.log("FragmentMain onCreate()");
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		return inflater.inflate(R.layout.fragment_main, container, false);
	}

	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
		initFragment();
		downloadConfig();		
	}

	@SuppressLint("SetJavaScriptEnabled")
	public void initUI() {
		mProgressDialog = new ProgressDialog(getActivity());
		mProgressDialog.setMessage("Loading...");

		// init sliding menu
		mSlidingMenu = (SlidingMenu) getView().findViewById(R.id.slidingmenu);

		// init tabs
		for (int i = 0; i < mTabIds.length; i++) {
			((ImageView) getView().findViewById(mTabIds[i]).findViewById(R.id.img_tab)).setImageResource(mTabIcons[i]);
			((TextView) getView().findViewById(mTabIds[i]).findViewById(R.id.tv_tab)).setText(getString(mTabTextIds[i]));
			getView().findViewById(mTabIds[i]).setOnClickListener(mOnClickTabListener);
		}

		// init menu left
		getView().findViewById(R.id.img_menu).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mSlidingMenu.showMenu();
			}
		});

		// init login/logout
		if (User.getInstance() != null) {
			getView().findViewById(R.id.tv_login).setVisibility(View.GONE);
			getView().findViewById(R.id.tv_logout).setVisibility(View.VISIBLE);
		} else {
			getView().findViewById(R.id.tv_login).setVisibility(View.VISIBLE);
			getView().findViewById(R.id.tv_logout).setVisibility(View.GONE);
		}

		getView().findViewById(R.id.tv_login).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mDialogLogin = new DialogLogin(getActivity(), mLoginHandler);
				mDialogLogin.show();
			}
		});

		getView().findViewById(R.id.tv_logout).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Handler handler = new Handler() {
					@Override
					public void handleMessage(Message msg) {
						// TODO Auto-generated method stub
						super.handleMessage(msg);
						mProgressDialog.dismiss();
						if (msg.what == ErrorCode.FAIL) {
							Toast.makeText(getActivity(), (String) msg.obj, Toast.LENGTH_SHORT).show();
						} else if (msg.what == ErrorCode.SUCCESS) {
							Toast.makeText(getActivity(), getString(R.string.logout_successful), Toast.LENGTH_SHORT)
									.show();
						}
					}
				};
				mProgressDialog.show();
				UserController.logout(handler);
				mFragmentWebView.loadUrl("javascript:logout(1)");
				User.setInstance(null);
				getView().findViewById(R.id.tv_login).setVisibility(View.VISIBLE);
				getView().findViewById(R.id.tv_logout).setVisibility(View.GONE);
			}
		});


	}

	public void initFragment() {
		// add fragment webview
		mFragmentWebView = FragmentWebView.getInstance();
		getFragmentManager().beginTransaction()
				.add(R.id.fragment_content_container, mFragmentWebView)
				.hide(mFragmentWebView)
				.commit();

		mFragmentHome = FragmentHome.getInstance(mFragmentHomeCallback);
		getFragmentManager().beginTransaction()
							.add(R.id.fragment_content_container, mFragmentHome)
							.commit();
		mCurrentShowingFragment = mFragmentHome;

//		mFragmentVideoDetails = FragmentVideoDetails.getInstance();
//		getFragmentManager().beginTransaction()
//				.add(R.id.fragment_content_container, mFragmentVideoDetails)
//				.hide(mFragmentVideoDetails)
//				.commit();

//		mFragmentNewsDetails = FragmentNewsDetails.getInstance();
//		getFragmentManager().beginTransaction()
//				.add(R.id.fragment_content_container, mFragmentNewsDetails)
//				.hide(mFragmentNewsDetails)
//				.commit();
		
		mFragmentLiveScore = FragmentLiveScore.getIntance();
		getFragmentManager().beginTransaction()
							.add(R.id.fragment_content_container, mFragmentLiveScore)
							.hide(mFragmentLiveScore)
							.commit();
		

		getFragmentManager().addOnBackStackChangedListener(mOnBackStackChangedListener);
	}

	public void downloadConfig() {
		Handler handler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				// TODO Auto-generated method stub
				super.handleMessage(msg);
				mProgressDialog.dismiss();

				if (msg.what == ErrorCode.FAIL) {
					Toast.makeText(getActivity(), (String) msg.obj, Toast.LENGTH_SHORT).show();

					AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
					builder.setMessage("Can not download config data");
					builder.setPositiveButton("Try Again", new DialogInterface.OnClickListener() {
						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							dialog.dismiss();
							downloadConfig();
						}
					});
					builder.setNegativeButton("Exit", new DialogInterface.OnClickListener() {
						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							dialog.dismiss();
							getActivity().finish();
						}
					});
					builder.setCancelable(false);
					builder.show();

				} else if (msg.what == ErrorCode.SUCCESS) {
					initMenuAndTab((Config) msg.obj);
				}
			}
		};

		mProgressDialog.show();
		mProgressDialog.setCancelable(false);
		ConfigController.getConfig(handler);
	}

	public void initMenuAndTab(Config config) {
		LayoutInflater inflater = LayoutInflater.from(getActivity());
		LinearLayout menuContainer = (LinearLayout) getView().findViewById(R.id.ll_menu_container);

		// setup MenuLeft UI
		ArrayList<MenuCategory> menuLeft = config.getMenuleft();
		for (int i = 0; i < menuLeft.size(); i++) {
			MenuCategory menuCategory = menuLeft.get(i);
			View rowTitle = inflater.inflate(R.layout.row_menuleft_title, null);
			((TextView) rowTitle.findViewById(R.id.tv_title)).setText(menuCategory.getTitle());
			menuContainer.addView(rowTitle);

			for (int k = 0; k < menuCategory.getListMenuItem().size(); k++) {
				MenuItem menuItem = menuCategory.getListMenuItem().get(k);
				View rowItem = inflater.inflate(R.layout.row_menuleft_list, null);
				((TextView) rowItem.findViewById(R.id.tv_menuleft)).setText(menuItem.getName());
				ImageLoader.getInstance().displayImage(menuItem.getLogo(),
						(ImageView) rowItem.findViewById(R.id.img_menuleft));
				rowItem.setTag(R.id.tag_url, menuItem.getUrl());
				rowItem.setOnClickListener(mOnClickMenuLeftListener);

				menuContainer.addView(rowItem);
			}
		}

		// setup FooterBar UI
		FooterBar footerBar = config.getFooterBar();

		getView().findViewById(R.id.tab_home).setTag(R.id.tag_url, footerBar.getHome());
		getView().findViewById(R.id.tab_livescore).setTag(R.id.tag_url, footerBar.getLive());
		getView().findViewById(R.id.tab_dudoan).setTag(R.id.tag_url, footerBar.getBetting());
		getView().findViewById(R.id.tab_congdong).setTag(R.id.tag_url, footerBar.getSocial());
		getView().findViewById(R.id.tab_canhan).setTag(R.id.tag_url, footerBar.getProfile());

		// setup TopBar UI
		TopBar topBar = config.getTopBar();
		ImageLoader.getInstance().displayImage(topBar.getLogo(), (ImageView) getView().findViewById(R.id.img_logo_top));
		getView().findViewById(R.id.img_logo_top).setTag(R.id.tag_url, topBar.getUrl());
		getView().findViewById(R.id.img_logo_top).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				String url = v.getTag(R.id.tag_url).toString();
				mFragmentWebView.loadUrl(Utils.addSession(url));
				getFragmentManager().beginTransaction().show(mFragmentHome).hide(mFragmentWebView).commit();
			}
		});

		mCurrentTabPosition = 0;
		onSelectTab(0);

	}

	public void onSelectTab(int tabPosition) {		
		if (tabPosition == -1) {
			getView().findViewById(mTabIds[mCurrentTabPosition]).setSelected(false);
			getView().findViewById(mTabIds[mCurrentTabPosition]).setBackgroundColor(
					getResources().getColor(R.color.bg_tab_normal));
			return;
		}
		
		getView().findViewById(mTabIds[mCurrentTabPosition]).setSelected(false);
		getView().findViewById(mTabIds[mCurrentTabPosition]).setBackgroundColor(
				getResources().getColor(R.color.bg_tab_normal));

		mCurrentTabPosition = tabPosition;

		getView().findViewById(mTabIds[mCurrentTabPosition]).setSelected(true);
		getView().findViewById(mTabIds[mCurrentTabPosition]).setBackgroundColor(
				getResources().getColor(R.color.bg_tab_active));

		if (tabPosition == 0) {
			getFragmentManager().beginTransaction().hide(mCurrentShowingFragment).show(mFragmentHome).commit();
			mCurrentShowingFragment = mFragmentHome;
			mFragmentHome.checkInitData();
		} else if (tabPosition == 1) {
			getFragmentManager().beginTransaction().hide(mCurrentShowingFragment).show(mFragmentLiveScore).commit();
			mCurrentShowingFragment = mFragmentLiveScore;
			mFragmentLiveScore.checkInitData();			
		} else {
			getFragmentManager().beginTransaction().hide(mCurrentShowingFragment).show(mFragmentWebView).commit();
			mCurrentShowingFragment = mFragmentWebView;
			String url = getView().findViewById(mTabIds[mCurrentTabPosition]).getTag(R.id.tag_url).toString();
			mFragmentWebView.loadUrl(Utils.addSession(url));
		}

	}

	OnClickListener mOnClickTabListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			for (int i = 0; i < mTabIds.length; i++) {
				if (mTabIds[i] == v.getId()) {
//					if (mCurrentTabPosition != i) {
						onSelectTab(i);
//					}
					break;
				}
			}
		}
	};

	OnClickListener mOnClickMenuLeftListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			mSlidingMenu.showContent();
			String url = v.getTag(R.id.tag_url).toString();
			mFragmentWebView.loadUrl(Utils.addSession(url));
			getFragmentManager().beginTransaction().hide(mCurrentShowingFragment).show(mFragmentWebView).commit();
			mCurrentShowingFragment = mFragmentWebView;
			onSelectTab(-1);
		}
	};

	Handler mLoginHandler = new Handler() {
		public void handleMessage(Message msg) {
			if (msg.what == ErrorCode.SUCCESS) {
				mDialogLogin.dismiss();
				User.setInstance((User) msg.obj);
				getView().findViewById(R.id.tv_login).setVisibility(View.GONE);
				getView().findViewById(R.id.tv_logout).setVisibility(View.VISIBLE);

				if (mFragmentWebView.getCurrenturl() != null) {
					mFragmentWebView.loadUrl(Utils.addSession(mFragmentWebView.getCurrenturl()));
				}

			} else if (msg.what == ErrorCode.FAIL) {
				Toast.makeText(getActivity(), (String) msg.obj, Toast.LENGTH_SHORT).show();
			}
		};
	};

	Handler mFragmentHomeCallback = new Handler() {
		public void handleMessage(Message msg) {

//			if (msg.what == FragmentHome.ACTION_VIDEO_DETAILS) {
//				String videoId = (String) msg.obj;
//				mFragmentVideoDetails.loadData(videoId);
//				getFragmentManager().beginTransaction()
//						.setCustomAnimations(R.anim.slide_right_to_left_in, R.anim.slide_right_to_left_out,
//						R.anim.slide_left_to_right_in, R.anim.slide_left_to_right_out)
//						.show(mFragmentVideoDetails)
//						.hide(mCurrentShowingFragment)
//						.addToBackStack(null)
//						.commit();
//				mCurrentShowingFragment = mFragmentVideoDetails;
//
//			}
			
//			else if (msg.what == FragmentHome.ACTION_NEWS_DETAILS) {
//				String newsId = (String) msg.obj;
//				mFragmentNewsDetails.loadNews(newsId);
//				getFragmentManager().beginTransaction()
//						.setCustomAnimations(R.anim.slide_right_to_left_in, R.anim.slide_right_to_left_out,
//						 R.anim.slide_left_to_right_in, R.anim.slide_left_to_right_out)
//						.show(mFragmentNewsDetails)
//						.hide(mCurrentShowingFragment)
//						.addToBackStack(null)
//						.commit();
//				mCurrentShowingFragment = mFragmentNewsDetails;
//
//			}

		};
	};

	OnBackStackChangedListener mOnBackStackChangedListener = new OnBackStackChangedListener() {
		@Override
		public void onBackStackChanged() {
			// TODO Auto-generated method stub
			if (mFragmentHome.isVisible()) {
				mCurrentShowingFragment = mFragmentHome;
			} else if (mFragmentWebView.isVisible()) {
				mCurrentShowingFragment = mFragmentWebView;
			}
			
//			} else if (mFragmentVideoDetails.isVisible()) {
//			mCurrentShowingFragment = mFragmentVideoDetails;			
//			else if (mFragmentNewsDetails.isVisible()) {
//				mCurrentShowingFragment = mFragmentNewsDetails;
//			}
		}
	};

	public boolean canGoBack() {
		
//		if (mFragmentWebView.isVisible()) {
//			if (mFragmentWebView.getCurrenturl().equals(urlFragmentHomeCallback)) {
//				getFragmentManager().beginTransaction().show(mFragmentHome).hide(mFragmentWebView).commit();
//				return true;
//			} else if (mFragmentWebView.canGoBack()) {
//				mFragmentWebView.goBack();
//				return true;
//			} else {
//				return false;
//			}
//		}

		return false;
	}

}
