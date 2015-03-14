package info.nkl.alpha;

import java.io.InputStream;
import java.util.Random;

import org.json.JSONObject;

import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.analytics.tracking.android.EasyTracker;
import com.slidingmenu.lib.SlidingMenu;

import info.nkl.alpha.R;
import info.nkl.alpha.FragmentAlbumDetails.FragmentAlbumDetailListener;
import info.nkl.alpha.FragmentFavouriteAlbums.FragmentFavouriteAlbumListener;
import info.nkl.alpha.FragmentListAlbums.FragmentListAlbumListener;
import info.nkl.alpha.FragmentMenu.FragmentMenuListener;
import info.nkl.alpha.FragmentPlayAlbum.FragmentPlayAlbumListener;
import info.nkl.alpha.FragmentSearch.FragmentSearchListener;
import info.nkl.alpha.FragmentTopAlbums.FragmentTopAlbumListener;
import info.nkl.database.DatabaseQuery;
import info.nkl.services.DropBoxService;
import info.nkl.services.KeyService;
import info.nkl.services.NameSpace;
import info.nkl.services.ServiceHelper;
import info.nkl.tools.Utils;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.http.AndroidHttpClient;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.Toast;
import android.widget.RelativeLayout.LayoutParams;
import info.nkl.tools.Logger;

public class MainActivity extends FragmentActivity {

	FragmentManager mFragmentManager;
	FragmentTopAlbums mFragmentTopAlbums;
	FragmentMenu mFragmentMenu;
	FragmentListAlbums mFragmentListAlbums;
	FragmentAlbumDetails mFragmentAlbumDetails;
	FragmentPlayAlbum mFragmentPlayAlbum;
	FragmentFavouriteAlbums mFragmentFavouriteAlbums;
	FragmentSearch mFragmentSearch;
	FragmentPlaySong mFragmentPlaySong;

	Fragment mCurrentFragment;

	SlidingMenu mSliding;

	DatabaseQuery mDatabaseDAO;

	boolean initFragment2 = false;
	boolean isShowingSoftKeyboard = false;

	boolean isPlayingSong = false;
	boolean isPlayingAlbum = false;
	
	/* ----------------- network state change -------------- */
	IntentFilter mIntentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");

	BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() {
		@Override
		public void onReceive(Context context, Intent intent) {
			// TODO Auto-generated method stub
			ConnectivityManager connectivityManager = (ConnectivityManager) context
					.getSystemService(Context.CONNECTIVITY_SERVICE);
			NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
			if (activeNetworkInfo == null) {
				findViewById(R.id.layout_disconnected_network).setVisibility(View.VISIBLE);
			} else {
				findViewById(R.id.layout_disconnected_network).setVisibility(View.GONE);
			}
		}
	};	

	@Override
	protected void onStart() {
		// TODO Auto-generated method stub
		super.onStart();
		EasyTracker.getInstance().activityStart(this);
	}

	@Override
	protected void onStop() {
		// TODO Auto-generated method stub
		super.onStop();
		EasyTracker.getInstance().activityStop(this);
	}

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main_2);
		
		InputStream inputStream = null;
		try {
			AndroidHttpClient httpClient = AndroidHttpClient.newInstance("Mozilla/5.0 (Linux; U; Android 4.0.4; en-vn; HTC One X Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30");
			httpClient.close();
		} catch (Exception exception) {
			exception.printStackTrace();
		} finally {
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (Exception closeException) {
					closeException.printStackTrace();
				}
			}
		}
		
		registerReceiver(mBroadcastReceiver, mIntentFilter);

		SharedPreferences sharedPreferences = getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
		KeyService.START_TIME = sharedPreferences.getLong(NameSpace.SHARE_PREFERENCE_START_TIME, 0);
		KeyService.SYSTEM_TIME = sharedPreferences.getLong(NameSpace.SHARE_PREFERENCE_SYSTEM_TIME, 0);
		
		Utils.initEncryptKey();
		initSplash();
		
		mFragmentManager = getSupportFragmentManager();
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				initFragment1();		
			}
		}, 100);
		
		initUI();

		if (System.currentTimeMillis() - KeyService.START_TIME < NameSpace.DAY_MILI) {
			initFragment2 = true;
			initFragment2();
		}

		initSysTime();
		
        new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				readConfig();
			}
		}, 1000);		
	}

	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		
		unregisterReceiver(mBroadcastReceiver);

		SharedPreferences sharedPreferences = getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
		sharedPreferences.edit().putLong(NameSpace.SHARE_PREFERENCE_SYSTEM_TIME, KeyService.SYSTEM_TIME).commit();
		sharedPreferences.edit().putLong(NameSpace.SHARE_PREFERENCE_START_TIME, KeyService.START_TIME).commit();
	}

	@Override
	protected void onSaveInstanceState(Bundle outState) {
		// TODO Auto-generated method stub
		// avoid stupid force close error
		// super.onSaveInstanceState(outState);
	}

	public void initSplash() {
		final Dialog dialog = new Dialog(MainActivity.this, android.R.style.Theme_Black_NoTitleBar);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.getWindow().getAttributes().windowAnimations = R.style.SplashDialogAnimation;
		dialog.setContentView(R.layout.dialog_splash);

		try {
			PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
			String version = packageInfo.versionName;
			((TextView) dialog.findViewById(R.id.tv_version)).setText("Version " + version);
		} catch (NameNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		dialog.show();

		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		}, 1000);
	}

	public void initSysTime() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				final boolean isSuccessful = KeyService.initKey();
				runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						if (isSuccessful) {
							SharedPreferences sharedPreferences = getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
							sharedPreferences.edit().putLong(NameSpace.SHARE_PREFERENCE_SYSTEM_TIME, KeyService.SYSTEM_TIME) .commit();
							sharedPreferences.edit().putLong(NameSpace.SHARE_PREFERENCE_START_TIME, KeyService.START_TIME) .commit();
							if (!initFragment2) {
								initFragment2();
							}							
						} else {
							Utils.checkInternetAndToast(MainActivity.this);
							findViewById(R.id.btn_search).setOnClickListener(null);
							findViewById(R.id.btn_menu).setOnClickListener(null);
							
							new Handler().postDelayed(new Runnable() {
								@Override
								public void run() {
									// TODO Auto-generated method stub
									mFragmentManager.beginTransaction().hide(mFragmentMenu).commit();
									Toast.makeText(MainActivity.this, getString(R.string.exit_app_then_return), Toast.LENGTH_LONG).show();
								}
							}, 1000);
						}
					}
				});
			}
		}).start();
	}

	public void initUI() {
		OnClickListener onClickTopButtonListener = new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				switch (v.getId()) {
				case R.id.btn_back:
					mFragmentManager.popBackStack();
					break;
				case R.id.btn_menu:
					mSliding.showBehind();
					break;
				case R.id.btn_now_playing:
					if (isPlayingSong) {
						moveFragment(mCurrentFragment, mFragmentPlaySong, true);
					} else if (mFragmentAlbumDetails.isVisible()) {
						moveFragment(mFragmentAlbumDetails, mFragmentPlayAlbum, true);
					} else {
						moveFragment(mCurrentFragment, mFragmentAlbumDetails, true);
					}
					break;
				case R.id.btn_search:
					if (findViewById(R.id.et_search).getVisibility() == View.VISIBLE) {
						startSearch();
					} else {
						initSearch();
					}
					break;
				default:
					break;
				}
			}
		};

		findViewById(R.id.btn_back).setOnClickListener(onClickTopButtonListener);
		findViewById(R.id.btn_menu).setOnClickListener(onClickTopButtonListener);
		findViewById(R.id.btn_now_playing).setOnClickListener(onClickTopButtonListener);
		findViewById(R.id.btn_search).setOnClickListener(onClickTopButtonListener);
		
		EditText etSearch = (EditText) findViewById(R.id.et_search);
		etSearch.setOnEditorActionListener(new OnEditorActionListener() {
			@Override
			public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
				// TODO Auto-generated method stub
				if (actionId == EditorInfo.IME_ACTION_SEARCH) {
					startSearch();
					return true;
				}
				return false;
			}
		});

		final View rootView = findViewById(R.id.rootView);
		if (rootView.getViewTreeObserver().isAlive()) {
			rootView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
				@Override
				public void onGlobalLayout() {
					// TODO Auto-generated method stub
					Rect visibleView = new Rect();
					rootView.getWindowVisibleDisplayFrame(visibleView);
					int heightDiff = rootView.getHeight() - visibleView.height();

					if (heightDiff != 0) {
						rootView.getLayoutParams().height = visibleView.height();
						rootView.requestLayout();

						if (heightDiff > 0) {
							isShowingSoftKeyboard = true;
						} else {
							isShowingSoftKeyboard = false;
							EditText etSearch = (EditText) findViewById(R.id.et_search);
							etSearch.setVisibility(View.GONE);
							etSearch.setText("");

							Animation slideTopToBottom = AnimationUtils.loadAnimation(MainActivity.this,
									R.anim.slide_top_to_bottom);
							etSearch.startAnimation(slideTopToBottom);
						}
					}
				}
			});
		}
	}

	public void initSearch() {
		if (!isShowingSoftKeyboard) {
			InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
			imm.toggleSoftInput(0, 0);
		}

		EditText etSearch = (EditText) findViewById(R.id.et_search);
		etSearch.setVisibility(View.VISIBLE);
		etSearch.requestFocus();

		Animation slideBottomToTop = AnimationUtils.loadAnimation(this, R.anim.slide_bottom_to_up);
		etSearch.startAnimation(slideBottomToTop);
	}

	public void startSearch() {
		EditText etSearch = (EditText) findViewById(R.id.et_search);
		if (etSearch.getText().toString().trim().equals("")) {
			etSearch.setText("");
			Toast.makeText(this, getString(R.string.enter_at_least), Toast.LENGTH_SHORT).show();
			return;
		} else {
			if (isShowingSoftKeyboard) {
				InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
				imm.toggleSoftInput(0, 0);
			}

			if (mFragmentPlayAlbum.isVisible()) {
				mFragmentManager.popBackStackImmediate();
				mFragmentManager.popBackStackImmediate();
			} else if (mFragmentListAlbums.isVisible()) {
				mFragmentManager.popBackStackImmediate();
			}

			moveFragment(mCurrentFragment, mFragmentSearch, false);
			mFragmentSearch.startSearch(etSearch.getText().toString().trim());
		}
	}

	public void initFragment1() {
		mSliding = (SlidingMenu) findViewById(R.id.sliding);
		mFragmentManager.addOnBackStackChangedListener(mOnBackStackChangedListener);

		mFragmentMenu = FragmentMenu.getInstance(mFragmentMenuListener);
		mFragmentManager.beginTransaction().add(R.id.sliding_menu_container, mFragmentMenu).commit();

		mFragmentListAlbums = FragmentListAlbums.getNewInstance(mFragmentListAlbumListener);
		mFragmentManager.beginTransaction().add(R.id.sliding_content_container, mFragmentListAlbums)
				.hide(mFragmentListAlbums).commit();

		mFragmentAlbumDetails = FragmentAlbumDetails.getInstance(mFragmentAlbumDetailListener);
		mFragmentManager.beginTransaction().add(R.id.sliding_content_container, mFragmentAlbumDetails)
				.hide(mFragmentAlbumDetails).commit();

		mFragmentPlayAlbum = FragmentPlayAlbum.getInstance(mFragmentPlayAlbumListener);
		mFragmentManager.beginTransaction().add(R.id.sliding_content_container, mFragmentPlayAlbum)
				.hide(mFragmentPlayAlbum).commit();

		mFragmentFavouriteAlbums = FragmentFavouriteAlbums.getInstance(mFragmentFavouriteAlbumListener);
		mFragmentManager.beginTransaction().add(R.id.sliding_content_container, mFragmentFavouriteAlbums)
				.hide(mFragmentFavouriteAlbums).commit();

		mFragmentSearch = FragmentSearch.getInstance(mFragmentSearchListener);
		mFragmentManager.beginTransaction().add(R.id.sliding_content_container, mFragmentSearch).hide(mFragmentSearch)
				.commit();

		mFragmentPlaySong = FragmentPlaySong.getInstance();
		mFragmentManager.beginTransaction().add(R.id.sliding_content_container, mFragmentPlaySong)
				.hide(mFragmentPlaySong).commit();
	}

	public void initFragment2() {
		mFragmentTopAlbums = FragmentTopAlbums.getIntance(mFragmentTopAlbumListener);
		mFragmentManager.beginTransaction().add(R.id.sliding_content_container, mFragmentTopAlbums).commit();
		mCurrentFragment = mFragmentTopAlbums;
	}

	public void moveFragment(Fragment fromFragment, Fragment toFragment, boolean addToBackStack) {
		if (toFragment == mFragmentPlayAlbum) {
			if (isPlayingSong) {
				mFragmentPlaySong.mMediaController.pause();
			}
			isPlayingSong = false;
			isPlayingAlbum = true;
		} else if (toFragment == mFragmentPlaySong) {
			if (isPlayingAlbum) {
				mFragmentPlayAlbum.mMediaController.pause();
			}
			isPlayingAlbum = false;
			isPlayingSong = true;
		}

		mCurrentFragment = toFragment;

		if (addToBackStack) {
			mFragmentManager
					.beginTransaction()
					.setCustomAnimations(R.anim.right_to_left_in, R.anim.right_to_left_out, R.anim.left_to_right_in,
							R.anim.left_to_right_out).hide(fromFragment).show(toFragment).addToBackStack(null).commit();
		} else {
			mFragmentManager.beginTransaction().hide(fromFragment).show(toFragment).commit();
		}
	}

	/** ----------------- notify --------------------- */
	/** ----------------- notify --------------------- */
	/** ----------------- notify --------------------- */
	private void readConfig() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
//				final JSONObject notifyData = (JSONObject) ServiceHelper.getData(DropBoxService.API_DROPBOX, true);
				final JSONObject notifyData = (JSONObject) ServiceHelper.getData(DropBoxService.API_DROPBOX);
				if (notifyData != null) {
					runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							try {
								JSONObject notify = notifyData.getJSONObject(DropBoxService.data).getJSONObject(
										DropBoxService.notify);
								String notifyId = notify.getString(DropBoxService.id);
								String notifyMsg = notify.getString(DropBoxService.msg);
								String duraion = notify.getString(DropBoxService.duration);

								if (mustShowNotify(notifyId, duraion)) {
									showNotifyDialog(notifyMsg);
								}

								String admobId = notifyData.getJSONObject(DropBoxService.data).getString(
										DropBoxService.admob_id);
								initAdView(admobId);
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						}
					});
				}
			}
		}).start();
	}

	private boolean mustShowNotify(String notifyId, String duration) {
		long durationNum = Long.parseLong(duration);

		SharedPreferences sharedPreferences = getSharedPreferences(NameSpace.SHARE_PREFRENCE_NOTIFY, MODE_PRIVATE);
		boolean checkResult = sharedPreferences.contains(notifyId);

		if (!checkResult) {
			sharedPreferences.edit().putLong(notifyId, System.currentTimeMillis()).commit();
		} else {
			long durationOnMobile = System.currentTimeMillis()
					- sharedPreferences.getLong(notifyId, System.currentTimeMillis());
			if (durationOnMobile > durationNum) {
				checkResult = false;
				sharedPreferences.edit().putLong(notifyId, System.currentTimeMillis()).commit();
				;
			}
		}
		return !checkResult;
	}

	private void showNotifyDialog(String notifyMsg) {
		final Dialog dialog = new Dialog(this);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.getWindow().getAttributes().windowAnimations = R.style.NotificationDialogAnimation;
		dialog.setContentView(R.layout.dialog_notify);

		((TextView) dialog.findViewById(R.id.tv_notify_content)).setText(notifyMsg);
		dialog.findViewById(R.id.btn_notify_rate_update).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=info.nkl"));
				startActivity(intent);
				dialog.dismiss();
			}
		});

		dialog.findViewById(R.id.btn_notify_ok).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		});

		dialog.show();
	}

	/** ----------------- adView --------------------- */
	/** ----------------- adView --------------------- */
	/** ----------------- adView --------------------- */
	public void initAdView(final String admobId) {
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				// create adview
				AdView adView = new AdView(MainActivity.this, AdSize.SMART_BANNER, admobId);
				adView.loadAd(new AdRequest());
				adView.setId(R.id.adView);
				LayoutParams lpAdView = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
				lpAdView.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
				lpAdView.addRule(RelativeLayout.CENTER_HORIZONTAL);
				adView.setLayoutParams(lpAdView);

				LayoutParams lpSlidingMenu = (LayoutParams) mSliding.getLayoutParams();
				lpSlidingMenu.addRule(RelativeLayout.ABOVE, R.id.adView);
				mSliding.setLayoutParams(lpSlidingMenu);

				RelativeLayout rootView = (RelativeLayout) findViewById(R.id.rootView);
				rootView.addView(adView);

				ImageView imgClose = new ImageView(MainActivity.this);
				imgClose.setId(R.id.img_close);
				imgClose.setImageResource(R.drawable.ic_close);
				LayoutParams lpImgClose = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
				lpImgClose.addRule(RelativeLayout.ABOVE, R.id.adView);
				lpImgClose.addRule(RelativeLayout.ALIGN_RIGHT, R.id.adView);
				imgClose.setLayoutParams(lpImgClose);

				rootView.addView(imgClose);

				imgClose.setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						hideAdView();
						new Handler().postDelayed(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								showAdView();
							}
						}, 3 * 60 * 1000 + new Random().nextInt(2 * 60 * 1000));
					}
				});
			}
		}, 5000);
	}

	private void hideAdView() {
		findViewById(R.id.img_close).setVisibility(View.GONE);
		findViewById(R.id.adView).setVisibility(View.GONE);
	}

	private void showAdView() {
		findViewById(R.id.adView).setVisibility(View.VISIBLE);
		findViewById(R.id.img_close).setVisibility(View.VISIBLE);
		changeImageClosePosition();
	}
	
	private void changeImageClosePosition() {
		RelativeLayout.LayoutParams lpClose = new RelativeLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
		lpClose.addRule(RelativeLayout.ABOVE, R.id.adView);
		
		Random random = new Random();
		int position = random.nextInt(3);
		if (position == 0) {
			lpClose.addRule(RelativeLayout.ALIGN_LEFT, R.id.adView);	
		} else if (position == 1) {
			lpClose.addRule(RelativeLayout.CENTER_HORIZONTAL);
		} else if (position == 2) {
			lpClose.addRule(RelativeLayout.ALIGN_RIGHT, R.id.adView);
		}
		
		findViewById(R.id.img_close).setLayoutParams(lpClose);
	}   	
	
	/** ----------------- exit --------------------- */
	/** ----------------- exit --------------------- */
	/** ----------------- exit --------------------- */
	
	@Override
	public boolean onKeyUp(int keyCode, KeyEvent event) {
		// TODO Auto-generated method stub
		if (keyCode == KeyEvent.KEYCODE_BACK) {
			if (mSliding.isBehindShowing()) {
				mSliding.showAbove();
				return true;
			} else if (!mFragmentPlaySong.isVisible() && !mFragmentPlayAlbum.isVisible() && !mFragmentAlbumDetails.isVisible()) {
				final Dialog dialogExit = new Dialog(this);
				dialogExit.requestWindowFeature(Window.FEATURE_NO_TITLE);
				dialogExit.setContentView(R.layout.dialog_exit);
				dialogExit.getWindow().getAttributes().windowAnimations = R.style.ExitDialogAnimation;
				
				dialogExit.findViewById(R.id.btn_exit_ok).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						dialogExit.dismiss();
						finish();
					}
				});
				
				dialogExit.findViewById(R.id.btn_exit_cancel).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						dialogExit.dismiss();
					}
				});
				
				dialogExit.show();
				return true;				
			} else {
				mFragmentManager.popBackStack();
			}
		}
		
		return super.onKeyDown(keyCode, event);
	}
	
	

	/** ----------------- listener --------------------- */
	/** ----------------- listener --------------------- */
	/** ----------------- listener --------------------- */

	/*------------- For this MainActivity -----------------*/
	OnBackStackChangedListener mOnBackStackChangedListener = new OnBackStackChangedListener() {
		@Override
		public void onBackStackChanged() {
			// TODO Auto-generated method stub
			if (mFragmentPlayAlbum.isVisible() || mFragmentPlaySong.isVisible()) {
				findViewById(R.id.btn_now_playing).setVisibility(View.GONE);
				findViewById(R.id.btn_menu).setVisibility(View.INVISIBLE);
				findViewById(R.id.btn_back).setVisibility(View.VISIBLE);
				mSliding.setTouchModeAbove(SlidingMenu.TOUCHMODE_MARGIN);
			} else if (mFragmentAlbumDetails.isVisible()) {
				findViewById(R.id.btn_now_playing).setVisibility(View.VISIBLE);
				findViewById(R.id.btn_menu).setVisibility(View.INVISIBLE);
				findViewById(R.id.btn_back).setVisibility(View.VISIBLE);
				mSliding.setTouchModeAbove(SlidingMenu.TOUCHMODE_MARGIN);
			} else {
				findViewById(R.id.btn_now_playing).setVisibility(View.VISIBLE);
				findViewById(R.id.btn_menu).setVisibility(View.VISIBLE);
				findViewById(R.id.btn_back).setVisibility(View.INVISIBLE);
				mSliding.setTouchModeAbove(SlidingMenu.TOUCHMODE_FULLSCREEN);
			}

			if (mFragmentPlayAlbum.isVisible()) {
				mCurrentFragment = mFragmentPlayAlbum;
			} else if (mFragmentAlbumDetails.isVisible()) {
				mCurrentFragment = mFragmentAlbumDetails;
			} else if (mFragmentTopAlbums.isVisible()) {
				mCurrentFragment = mFragmentTopAlbums;
			} else if (mFragmentListAlbums.isVisible()) {
				mCurrentFragment = mFragmentListAlbums;
			} else if (mFragmentFavouriteAlbums.isVisible()) {
				mCurrentFragment = mFragmentFavouriteAlbums;
			} else if (mFragmentSearch.isVisible()) {
				mCurrentFragment = mFragmentSearch;
			} else if (mFragmentPlaySong.isVisible()) {
				mCurrentFragment = mFragmentPlaySong;
			}
		}
	};

	/*------------- From FragmentTopAlbum to FragmentPlayAlbum -----------------*/
	FragmentTopAlbumListener mFragmentTopAlbumListener = new FragmentTopAlbumListener() {
		@Override
		public void onSelectAlbum(String albumId) {
			// TODO Auto-generated method stub
			moveFragment(mFragmentTopAlbums, mFragmentAlbumDetails, true);
			mFragmentAlbumDetails.displayAlbum(albumId);
		}
	};

	/*------------- From FragmentAlbumDetail to FragmentPlayAlbum -----------------*/
	/**
	 * Note : Call to setCoverBackground for both of two functions 1.
	 * onBitmapBlurCreated : when user go to FragmentAlbumDetail, then quickly
	 * go to FragmentPlayAlbum while bitmap blur not created yet 2. playSong :
	 * when user select a new album with other bitmap blur, and then listen to
	 * this album, so need to change current bitmap blur of FragmentPlayAlbum
	 */
	FragmentAlbumDetailListener mFragmentAlbumDetailListener = new FragmentAlbumDetailListener() {
		@Override
		public void playSong(String albumId, JSONObject albumDetailData, int position) {
			// TODO Auto-generated method stub
			moveFragment(mFragmentAlbumDetails, mFragmentPlayAlbum, true);
			mFragmentPlayAlbum.playAlbum(albumId, albumDetailData, position);
		}

		@Override
		public void onCreateUI(String albumId) {
			if (albumId.equals(mFragmentPlayAlbum.mAlbumId)) {
				mFragmentAlbumDetails.mAlbumDetailAdapter
						.setSelectedPosition(mFragmentPlayAlbum.mMediaController.mPosition);
			} else {
				mFragmentAlbumDetails.mAlbumDetailAdapter.setSelectedPosition(-1);
			}
		};
	};

	/*------------- From fragment containing list albums To FragmentAlbumDetail -----------------*/
	FragmentListAlbumListener mFragmentListAlbumListener = new FragmentListAlbumListener() {
		@Override
		public void onSelectAlbum(String albumId) {
			// TODO Auto-generated method stub
			moveFragment(mFragmentListAlbums, mFragmentAlbumDetails, true);
			mFragmentAlbumDetails.displayAlbum(albumId);
		}
	};

	FragmentFavouriteAlbumListener mFragmentFavouriteAlbumListener = new FragmentFavouriteAlbumListener() {
		@Override
		public void onSelectAlbums(String albumId) {
			// TODO Auto-generated method stub
			moveFragment(mFragmentFavouriteAlbums, mFragmentAlbumDetails, true);
			mFragmentAlbumDetails.displayAlbum(albumId);
		}
	};

	/*------------- From FragmentMenu To Main -----------------*/
	FragmentMenuListener mFragmentMenuListener = new FragmentMenuListener() {
		@Override
		public void onSelectInstrumentOrCategory(String type, String id) {
			// TODO Auto-generated method stub
			mSliding.showAbove();

			if (mFragmentPlayAlbum.isVisible()) {
				mFragmentManager.popBackStackImmediate();
				mFragmentManager.popBackStackImmediate();
			} else if (mFragmentListAlbums.isVisible()) {
				mFragmentManager.popBackStackImmediate();
			}

			if (mCurrentFragment != mFragmentListAlbums) {
				moveFragment(mCurrentFragment, mFragmentListAlbums, false);
			}
			mFragmentListAlbums.displayAlbums(type, id);
		}

		@Override
		public void onClickTopAlbum() {
			// TODO Auto-generated method stub
			mSliding.showAbove();

			if (mFragmentPlayAlbum.isVisible()) {
				mFragmentManager.popBackStackImmediate();
				mFragmentManager.popBackStackImmediate();
			} else if (mFragmentListAlbums.isVisible()) {
				mFragmentManager.popBackStackImmediate();
			}

			if (mCurrentFragment != mFragmentTopAlbums) {
				moveFragment(mCurrentFragment, mFragmentTopAlbums, false);
			}
		}

		@Override
		public void onClickFavouriteAlbums() {
			// TODO Auto-generated method stub
			mSliding.showAbove();

			if (mFragmentPlayAlbum.isVisible()) {
				mFragmentManager.popBackStackImmediate();
				mFragmentManager.popBackStackImmediate();
			} else if (mFragmentListAlbums.isVisible()) {
				mFragmentManager.popBackStackImmediate();
			}

			if (mCurrentFragment != mFragmentFavouriteAlbums) {
				moveFragment(mCurrentFragment, mFragmentFavouriteAlbums, false);
			}
		}
	};

	/*------------- From FragmentPlay To Main -----------------*/
	FragmentPlayAlbumListener mFragmentPlayAlbumListener = new FragmentPlayAlbumListener() {
		@Override
		public void playing(String albumId, int position) {
			// TODO Auto-generated method stub
			if (mFragmentAlbumDetails.mAlbumId == albumId) {
				mFragmentAlbumDetails.mAlbumDetailAdapter.setSelectedPosition(position);
			}
		}

		@Override
		public void changedFavouriteState() {
			// TODO Auto-generated method stub
			mFragmentFavouriteAlbums.refreshListView();
		}
	};

	/*------------- From FragmentSearch To Main -----------------*/
	FragmentSearchListener mFragmentSearchListener = new FragmentSearchListener() {
		@Override
		public void onSelectSong(String songId) {
			// TODO Auto-generated method stub
			moveFragment(mFragmentSearch, mFragmentPlaySong, true);
			mFragmentPlaySong.displaySong(songId);
		}

		@Override
		public void onSelectAlbum(String albumId) {
			// TODO Auto-generated method stub
			moveFragment(mFragmentSearch, mFragmentAlbumDetails, true);
			mFragmentAlbumDetails.displayAlbum(albumId);
		}
	};

}
