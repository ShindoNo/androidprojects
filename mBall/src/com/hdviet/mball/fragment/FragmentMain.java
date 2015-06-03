package com.hdviet.mball.fragment;

import org.json.JSONArray;
import org.json.JSONObject;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
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
import com.hdviet.mball.datacontrollers.ErrorCode;
import com.hdviet.mball.entity.User;
import com.hdviet.mball.network.RequestHelper;
import com.hdviet.mball.util.MyLog;
import com.hdviet.mball.util.NameSpace;
import com.hdviet.mball.util.Utils;
import com.hdviet.mball.widget.DialogLogin;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.nostra13.universalimageloader.core.ImageLoader;

public class FragmentMain extends Fragment {

	Activity mActivity;

	int[] mTabIds = new int[] { R.id.tab_home, R.id.tab_livescore, 
								R.id.tab_dudoan, R.id.tab_congdong, R.id.tab_canhan };
	
	int[] mTabTextIds = new int[] { R.string.tab_home, R.string.tab_livescore, R.string.tab_dudoan,
									R.string.tab_congdong, R.string.tab_canhan };
	
	int[] mTabIcons = new int[] {R.drawable.ic_tab_home, R.drawable.ic_tab_livescore, R.drawable.ic_tab_dudoan, 
							     R.drawable.ic_tab_congdong, R.drawable.ic_tab_canhan};

	int mCurrentTabPosition;
	SlidingMenu mSlidingMenu;

	// others
	ProgressDialog mProgressDialog;

	// for test
	WebView mWebView;
	
	// login/logout
	DialogLogin mDialogLogin;

	public static FragmentMain getInstance(Activity activity) {
		FragmentMain fragmentMain = new FragmentMain();
		fragmentMain.init(activity);
		return fragmentMain;
	}

	public void init(Activity activity) {
		mActivity = activity;
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
	}

	@SuppressLint("SetJavaScriptEnabled")
	public void initUI() {
		mProgressDialog = new ProgressDialog(mActivity);
		mProgressDialog.setMessage("Loading...");

		// init sliding menu
		mSlidingMenu = (SlidingMenu) getView().findViewById(R.id.slidingmenu);

		// initWebview
		mWebView = (WebView) getView().findViewById(R.id.webview);
		mWebView.getSettings().setJavaScriptEnabled(true);
		mWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
		mWebView.setWebViewClient(new WebViewClient() {			
			@Override
			public void onPageStarted(WebView view, String url, Bitmap favicon) {
				// TODO Auto-generated method stub
				super.onPageStarted(view, url, favicon);
				MyLog.log("onPageStarted url=" + url);
				getView().findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
			}
			
			@Override
			public boolean shouldOverrideUrlLoading(WebView view, String url) {
				// TODO Auto-generated method stub
				if (url.contains("session_id"))
					return super.shouldOverrideUrlLoading(view, url);
				else {
					view.loadUrl(Utils.addSession(mActivity, url));
					return true;
				}
			}

			@Override
			public void onPageFinished(WebView view, String url) {
				// TODO Auto-generated method stub
				super.onPageFinished(view, url);
				MyLog.log("onPageFinished url=" + url);
				getView().findViewById(R.id.pb_loading).setVisibility(View.GONE);
			}
		});

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

		
		downloadConfig(true);
		
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
				mDialogLogin = new DialogLogin(mActivity, mLoginHandler);
				mDialogLogin.show();
			}
		});
		
		getView().findViewById(R.id.tv_logout).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				User.setInstance(null);
				getView().findViewById(R.id.tv_login).setVisibility(View.VISIBLE);
				getView().findViewById(R.id.tv_logout).setVisibility(View.GONE);
				mWebView.loadUrl("javascript:logout(1)");
			}
		});

	}

	public void initMenuAndTab() {
		// init UI here
		try {
			LayoutInflater inflater = LayoutInflater.from(mActivity);
			LinearLayout menuContainer = (LinearLayout) getView().findViewById(R.id.ll_menu_container);

			JSONObject configJSON = new JSONObject(Utils.getString(mActivity, NameSpace.SHARED_PREF_CONFIG));
			JSONArray menuLeftJSON = configJSON.getJSONArray("data");
			for (int i = 0; i < menuLeftJSON.length(); i++) {
				JSONObject groupJSON = menuLeftJSON.getJSONObject(i);
				String groupTitle = groupJSON.getString("title");
				View rowTitle = inflater.inflate(R.layout.row_menuleft_title, null);
				((TextView) rowTitle.findViewById(R.id.tv_title)).setText(groupTitle);
				menuContainer.addView(rowTitle);

				JSONArray groupList = groupJSON.getJSONArray("list");
				for (int k = 0; k < groupList.length(); k++) {
					JSONObject item = groupList.getJSONObject(k);
					View rowItem = inflater.inflate(R.layout.row_menuleft_list, null);
					((TextView) rowItem.findViewById(R.id.tv_menuleft)).setText(item.getString("name"));
					ImageLoader.getInstance().displayImage(item.getString("logo"),
							(ImageView) rowItem.findViewById(R.id.img_menuleft));
					menuContainer.addView(rowItem);
					rowItem.setTag(R.id.tag_url, item.getString("url"));
					rowItem.setOnClickListener(mOnClickMenuLeftListener);
				}
			}

			getView().findViewById(R.id.tab_home).setTag(R.id.tag_url,
					configJSON.getJSONObject("footer").getString("home"));
			getView().findViewById(R.id.tab_livescore).setTag(R.id.tag_url,
					configJSON.getJSONObject("footer").getString("live"));
			getView().findViewById(R.id.tab_dudoan).setTag(R.id.tag_url,
					configJSON.getJSONObject("footer").getString("betting"));
			getView().findViewById(R.id.tab_congdong).setTag(R.id.tag_url,
					configJSON.getJSONObject("footer").getString("social"));
			getView().findViewById(R.id.tab_canhan).setTag(R.id.tag_url,
					configJSON.getJSONObject("footer").getString("profile"));
			
			ImageLoader.getInstance().displayImage(configJSON.getJSONObject("topbar").getString("logo"), (ImageView)getView().findViewById(R.id.img_logo_top));
			getView().findViewById(R.id.img_logo_top).setTag(R.id.tag_url, configJSON.getJSONObject("topbar").getString("url"));
			getView().findViewById(R.id.img_logo_top).setOnClickListener(new OnClickListener() {
				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					String url = v.getTag(R.id.tag_url).toString();
					mWebView.loadUrl(Utils.addSession(mActivity, url));
//					mWebView.loadUrl(url);
				}
			});
			
			mCurrentTabPosition = 0;
			onSelectTab(0);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

	public void downloadConfig(final boolean pendingConfig) {
		if (pendingConfig) {
			mProgressDialog.show();
			mProgressDialog.setCancelable(false);
		}

		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				final String response = RequestHelper.get(NameSpace.API_CONFIG);
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						if (response == null) {
							if (pendingConfig == false) {
								return;
							}

							AlertDialog.Builder builder = new AlertDialog.Builder(mActivity);
							builder.setMessage("Can not download config data");
							builder.setPositiveButton("Try Again", new DialogInterface.OnClickListener() {
								@Override
								public void onClick(DialogInterface dialog, int which) {
									// TODO Auto-generated method stub
									dialog.dismiss();
									downloadConfig(pendingConfig);
								}
							});
							builder.setNegativeButton("Exit", new DialogInterface.OnClickListener() {
								@Override
								public void onClick(DialogInterface dialog, int which) {
									// TODO Auto-generated method stub
									dialog.dismiss();
									mActivity.finish();
								}
							});
							builder.setCancelable(false);
							builder.show();
						} else {
							Utils.saveString(mActivity, NameSpace.SHARED_PREF_CONFIG, response);
							if (pendingConfig) {
								initMenuAndTab();
							}
						}
					}
				});
			}
		}).start();
	}

	public void onSelectTab(int tabPosition) {		
		getView().findViewById(mTabIds[mCurrentTabPosition]).setSelected(false);
		getView().findViewById(mTabIds[mCurrentTabPosition]).setBackgroundColor(getResources().getColor(R.color.bg_tab_normal));

		mCurrentTabPosition = tabPosition;
		
		getView().findViewById(mTabIds[mCurrentTabPosition]).setSelected(true);
		getView().findViewById(mTabIds[mCurrentTabPosition]).setBackgroundColor(getResources().getColor(R.color.bg_tab_active));

		
		String url = getView().findViewById(mTabIds[mCurrentTabPosition]).getTag(R.id.tag_url).toString();

		mWebView.loadUrl(Utils.addSession(mActivity, url));

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

	OnClickListener mOnClickMenuLeftListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			mSlidingMenu.showContent();
			String url = v.getTag(R.id.tag_url).toString();
			mWebView.loadUrl(Utils.addSession(mActivity, url));
		}
	};

	Handler mLoginHandler = new Handler() {
		public void handleMessage(Message msg) {
			if (msg.what == ErrorCode.SUCCESS) {
				mDialogLogin.dismiss();
				User.setInstance((User)msg.obj);
				getView().findViewById(R.id.tv_login).setVisibility(View.GONE);
				getView().findViewById(R.id.tv_logout).setVisibility(View.VISIBLE);
				mWebView.loadUrl(Utils.addSession(mActivity, mWebView.getUrl()));				
			} else if (msg.what == ErrorCode.FAIL) {
				Toast.makeText(getActivity(), (String)msg.obj, Toast.LENGTH_SHORT).show();
			}			
		};
	};
	
	public boolean canGoBack() {
		if (mWebView.canGoBack()) {
			mWebView.goBack();
			return true;
		} else {
			return false;
		}
	}
	

}
