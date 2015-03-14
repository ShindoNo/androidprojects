package info.nkl.ui1;
import info.nkl.alpha.R;
import java.io.InputStream;
import java.util.Random;

import org.json.JSONObject;
import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
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
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.RelativeLayout.LayoutParams;

import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.analytics.tracking.android.EasyTracker;
import com.slidingmenu.lib.SlidingMenu;

import info.nkl.services.DropBoxService;
import info.nkl.services.NameSpace;
import info.nkl.services.ServiceHelper;
import info.nkl.tools.Utils;
import info.nkl.ui1.FragmentListAlbums.OnAlbumSelectedListener;
import info.nkl.ui1.FragmentMenu.OnMenuSelectedListener;

public class MainActivity extends FragmentActivity {
	FragmentManager mFragmentManager;
	FragmentMenu mFragmentMenu;
	FragmentListAlbums mFragmentListAlbums;
	FragmentPlayAlbum mFragmentPlayAlbum;
	Fragment currentFragment;
	
	SlidingMenu mSlidingMenu;
	View menuLayout;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
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
		
        Utils.initEncryptKey();
//        Utils.decryptApiLink();
        initSplash();
        
        new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
		        initGUI();
		        initFragment();				
			}
		}, 200);
        
        new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				readConfig();
			}
		}, 1000);
    }
    
    @Override
    protected void onSaveInstanceState(Bundle outState) {
    	// TODO Auto-generated method stub
//    	super.onSaveInstanceState(outState);
    }
    
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
    
    public void initSplash() {
    	final Dialog dialog = new Dialog(MainActivity.this, android.R.style.Theme_Black_NoTitleBar);
    	dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
    	dialog.getWindow().getAttributes().windowAnimations = R.style.SplashDialogAnimation;
    	dialog.setContentView(R.layout.dialog_splash);
    	
		try {
			PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
			String version = packageInfo.versionName;
			((TextView)dialog.findViewById(R.id.tv_version)).setText("Version " + version);
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
				if (mFragmentListAlbums != null) {
					mFragmentListAlbums.isShowingSplash = false;
				}
			}
		}, 1000);
    }
    
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
				
				LayoutParams lpSlidingMenu = (LayoutParams) mSlidingMenu.getLayoutParams();
				lpSlidingMenu.addRule(RelativeLayout.ABOVE, R.id.adView);
				mSlidingMenu.setLayoutParams(lpSlidingMenu);
				
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
    
    public void initGUI() {
    	// disable search function
    	findViewById(R.id.img_search).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Toast.makeText(MainActivity.this, "Search đang hoàn thiện", Toast.LENGTH_SHORT).show();
			}
		});
		
    	mSlidingMenu = (SlidingMenu) findViewById(R.id.sliding_menu);
    	
    	findViewById(R.id.img_logo).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (mFragmentPlayAlbum.isVisible()) {
					mFragmentManager.popBackStack();
				} else {
					mSlidingMenu.showBehind();
				}
			}
		});
    	
    	findViewById(R.id.img_now_playing).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				findViewById(R.id.img_now_playing).setVisibility(View.GONE);
				findViewById(R.id.img_sharing).setVisibility(View.VISIBLE);
				
		    	mFragmentManager.beginTransaction()
				.setCustomAnimations(R.anim.right_to_left_in, R.anim.right_to_left_out,R.anim.left_to_right_in, R.anim.left_to_right_out)
				.hide(mFragmentListAlbums)
	  			.show(mFragmentPlayAlbum)
	  			.addToBackStack(null)
	  			.commit();				
			}
		});
    	
    	findViewById(R.id.img_sharing).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mFragmentPlayAlbum.startSharing();
			}
		});
    }

    public void initFragment() {
    	mFragmentManager = getSupportFragmentManager();
    	
    	// get fragment list albums & play album
    	mFragmentListAlbums = FragmentListAlbums.getNewInstance(mOnAlbumSelectedListener);
    	mFragmentPlayAlbum = FragmentPlayAlbum.getNewInstance(mOnMenuSelectedListener);
    	mFragmentManager.beginTransaction().add(R.id.main_container, mFragmentPlayAlbum).commit();
    	mFragmentManager.beginTransaction().add(R.id.main_container, mFragmentListAlbums).commit();
    	mFragmentManager.beginTransaction().show(mFragmentListAlbums).hide(mFragmentPlayAlbum).commit();
    	
    	mFragmentMenu = FragmentMenu.getNewInstance(mOnMenuSelectedListener);
    	mFragmentManager.beginTransaction().add(R.id.menu_container, mFragmentMenu).commit();
    	
    	mFragmentManager.addOnBackStackChangedListener(mOnBackStackChangedListener);
    }
    
    private void readConfig() {
//    	new Thread(new Runnable() {
//			@Override
//			public void run() {
//				// TODO Auto-generated method stub
//				final JSONObject notifyData = (JSONObject) ServiceHelper.getData(DropBoxService.API_DROPBOX, true);
//				if (notifyData != null) {
//					runOnUiThread(new Runnable() {
//						@Override
//						public void run() {
//							// TODO Auto-generated method stub
//							try {
//								JSONObject notify = notifyData.getJSONObject(DropBoxService.data).getJSONObject(DropBoxService.notify);
//								String notifyId = notify.getString(DropBoxService.id);
//								String notifyMsg = notify.getString(DropBoxService.msg);
//								String duraion = notify.getString(DropBoxService.duration);
//								
//								if (mustShowNotify(notifyId, duraion)) {
//									showNotifyDialog(notifyMsg);
//								}
//								
//								String admobId = notifyData.getJSONObject(DropBoxService.data).getString(DropBoxService.admob_id);
//								initAdView(admobId);
//							} catch (Exception e) {
//								// TODO: handle exception
//								e.printStackTrace();
//							}
//						}
//					});
//				}
//			}
//		}).start();
    }
    
    private boolean mustShowNotify(String notifyId, String duration) {
    	long durationNum = Long.parseLong(duration);
    	
    	SharedPreferences sharedPreferences =  getSharedPreferences(NameSpace.SHARE_PREFRENCE_NOTIFY, MODE_PRIVATE);
    	boolean checkResult = sharedPreferences.contains(notifyId);
    	
    	if (!checkResult) {
    		sharedPreferences.edit().putLong(notifyId, System.currentTimeMillis()).commit();
    	} else {
    		long durationOnMobile = System.currentTimeMillis() - sharedPreferences.getLong(notifyId, System.currentTimeMillis());
    		if (durationOnMobile > durationNum) {
    			checkResult = false;
    			sharedPreferences.edit().putLong(notifyId, System.currentTimeMillis()).commit();;
    		}
    	}
    	return !checkResult;
    }
    
    private void showNotifyDialog(String notifyMsg) {
    	final Dialog dialog = new Dialog(this);
    	dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
    	dialog.getWindow().getAttributes().windowAnimations = R.style.NotificationDialogAnimation;
    	dialog.setContentView(R.layout.dialog_notify);
    	
    	((TextView)dialog.findViewById(R.id.tv_notify_content)).setText(notifyMsg);
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
	
	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		// TODO Auto-generated method stub
		if (keyCode == KeyEvent.KEYCODE_BACK && event.getAction() == KeyEvent.ACTION_DOWN) {
			if (mSlidingMenu.isBehindShowing()) {
				mSlidingMenu.showAbove();
				return true;
			} else if (mFragmentPlayAlbum.isVisible()) {
				mFragmentManager.popBackStack();
				return true;
			}
			
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
		}
		
		return super.onKeyDown(keyCode, event);
	}
	
	
	OnMenuSelectedListener mOnMenuSelectedListener = new OnMenuSelectedListener() {
		@Override
		public void onGroupSelected(String groupType, String groupId) {
			// TODO Auto-generated method stub
			mSlidingMenu.showAbove();
			
			if (!mFragmentListAlbums.isVisible()) {
				if (mFragmentPlayAlbum.isVisible()) {
			    	mFragmentManager.beginTransaction()
					.setCustomAnimations(R.anim.right_to_left_in, R.anim.right_to_left_out,R.anim.left_to_right_in, R.anim.left_to_right_out)
					.hide(mFragmentPlayAlbum)
		  			.show(mFragmentListAlbums)
		  			.addToBackStack(null)
		  			.commit();				
				}
			}
			
			mFragmentListAlbums.displayAlbums(groupType, groupId);	
		}
		
		@Override
		public void onFavouriteAlbumSelected(String albumId) {
			// TODO Auto-generated method stub
			mSlidingMenu.showAbove();
			mFragmentPlayAlbum.playAlbum(albumId);
	    	mFragmentManager.beginTransaction()
	    						.setCustomAnimations(R.anim.right_to_left_in, R.anim.right_to_left_out,R.anim.left_to_right_in, R.anim.left_to_right_out)
	    						.hide(mFragmentListAlbums)
					  			.show(mFragmentPlayAlbum)
					  			.addToBackStack(null)
					  			.commit();			
		}

		@Override
		public void onFavouriteAlbumsChanged() {
			// TODO Auto-generated method stub
			mFragmentMenu.resetFavouriteAlbumsLayout();
		}
	};
	
	OnBackStackChangedListener mOnBackStackChangedListener = new OnBackStackChangedListener() {
		@Override
		public void onBackStackChanged() {
			// TODO Auto-generated method stub
			if (mFragmentListAlbums.isVisible()) {
				findViewById(R.id.img_now_playing).setVisibility(View.VISIBLE);
				findViewById(R.id.img_sharing).setVisibility(View.GONE);
				mSlidingMenu.setTouchModeAbove(SlidingMenu.TOUCHMODE_FULLSCREEN);
			} else if (mFragmentPlayAlbum.isVisible()) { 
				findViewById(R.id.img_now_playing).setVisibility(View.GONE);
				findViewById(R.id.img_sharing).setVisibility(View.VISIBLE);
				mSlidingMenu.setTouchModeAbove(SlidingMenu.TOUCHMODE_MARGIN);
			}			
		}
	};
	
	OnAlbumSelectedListener mOnAlbumSelectedListener = new OnAlbumSelectedListener() {
		@Override
		public void onAlbumSelected(String albumId) {
			// TODO Auto-generated method stub
			mFragmentPlayAlbum.playAlbum(albumId);
	    	mFragmentManager.beginTransaction()
	    						.setCustomAnimations(R.anim.right_to_left_in, R.anim.right_to_left_out,R.anim.left_to_right_in, R.anim.left_to_right_out)
	    						.hide(mFragmentListAlbums)
					  			.show(mFragmentPlayAlbum)
					  			.addToBackStack(null)
					  			.commit();				
		}
	};

	
    public interface OnPlayAlbumListener {
    	void play(String albumId);
    }
    
}
