package zing.video.downloader;

import java.io.File;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

import org.json.JSONArray;
import org.json.JSONObject;

import zing.video.downloader.ZingTools.OnGetLyricListener;
import zing.video.downloadmanager.DownloadTask;
import zing.video.downloadmanager.DownloadTaskListener;
import zing.video.downloadmanager.NetworkUtils;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.text.Html;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.Toast;

import com.google.ads.AdRequest;
import com.google.ads.AdView;
import com.google.analytics.tracking.android.EasyTracker;
import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

public class MainActivity extends Activity {

	String configString;
	JSONObject dataConfig;
	boolean isLoadingConfig;
	ProgressDialog progressLoading;
	boolean isPendingOpenPopupCategory;
	DisplayImageOptions mDisplayImageOptions;
	String PATH = Environment.getExternalStorageDirectory().toString() + "/VideoDownloader/";
	View currentTabView;
	boolean isDestroyed;
	
	// auto rotate screen
	int defaultAutoRotate = 1;
	
	// expand/collapse video view state
	boolean isExpandingVideoView = true;
	
	BroadcastReceiver mReceiver;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
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
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				ZingTools.deleteAllSongOrVideoNotHaveFileFromPlaylist(getApplicationContext());
			}
		}).start();
		
		initImageLoader();
		initUI();
		initSearch();
		initVideoPlayer();
		initPopup();
		initReceiver();
		
		new ReadConfig(MainActivity.this, "http://dl.sohagame.vn/android/config/videodownloader/config%204.0.txt");
		
		// get default rotation of system
		try {
			defaultAutoRotate = Settings.System.getInt(getContentResolver(), Settings.System.ACCELEROMETER_ROTATION);
			Log.e("stk", "defaultRotation=" + defaultAutoRotate);
		} catch (SettingNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void initReceiver() {
		IntentFilter filter = new IntentFilter();
		filter.addAction(ReadConfig.ACTION_ADMOB_ID);
		filter.addAction(ReadConfig.ACTION_CATEGORY);
		
		mReceiver = new BroadcastReceiver() {
			@Override
			public void onReceive(Context context, Intent intent) {
				// TODO Auto-generated method stub
				String action = intent.getAction();
				if (action.equals(ReadConfig.ACTION_ADMOB_ID)) {
					String admobId = intent.getStringExtra(ReadConfig.EXTRA_ADMOB_ID);
					initAds(admobId);
				} else if (action.equals(ReadConfig.ACTION_CATEGORY)) {
					try {
						String category = intent.getStringExtra(ReadConfig.EXTRA_CATEGORY);
						JSONArray categoryJSON = new JSONArray(category);
						initCategoryPopup(categoryJSON);
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
				}
			}
		};
		
		registerReceiver(mReceiver, filter);
	}
	
	public void initAds(String admobId) {
		
	}	
	
	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		// set auto rotation when in app
		Settings.System.putInt(getContentResolver(), Settings.System.ACCELEROMETER_ROTATION, 1);
		Log.e("stk", "onResume, set rotaion=1");
	}
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		// set default auto rotation when out app
		Settings.System.putInt(getContentResolver(), Settings.System.ACCELEROMETER_ROTATION, defaultAutoRotate);
		Log.e("stk", "onPause, set rotation=default=" + defaultAutoRotate);
	}
	
	public void initAds() {
		// adview
		final AdView adView = (AdView) findViewById(R.id.adView);
		adView.loadAd(new AdRequest());
		
		findViewById(R.id.img_close).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				adView.setVisibility(View.GONE);
				new Handler().postDelayed(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						adView.setVisibility(View.VISIBLE);
					}
				}, 5 * 60 * 1000);
			}
		});
	}
	
	public void initImageLoader() {
		if (!new File(PATH).exists()) {
			new File(PATH).mkdirs();
		}
		
		ImageLoaderConfiguration config = new ImageLoaderConfiguration.Builder(getApplicationContext())
		.threadPoolSize(3)
		.threadPriority(Thread.NORM_PRIORITY - 2)
		.memoryCacheSize(2 * 1024 * 1024)
		.memoryCache(new WeakMemoryCache())
		.denyCacheImageMultipleSizesInMemory()
		.discCacheFileNameGenerator(new Md5FileNameGenerator())
		.tasksProcessingOrder(QueueProcessingType.FIFO)
		.build();
		
		ImageLoader.getInstance().init(config);		
		
		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.showStubImage(R.drawable.img_cover_test)
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();			
	}

	public void initUI() {
		findViewById(R.id.tv_category).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
//				if (dataConfig == null) {
//					isPendingOpenPopupCategory = true;
//					if (isLoadingConfig) {
//						if (progressLoading == null) {
//							progressLoading = ProgressDialog.show(MainActivity.this, "", "Loading...");
//							progressLoading.setCancelable(true);
//						}
//					} else {
//						progressLoading = ProgressDialog.show(MainActivity.this, "", "Loading...");
//						progressLoading.setCancelable(true);						
////						initConfig();
//					}
//				} else {
//					if (popupCategory != null) {
//						popupCategory.showAsDropDown(v);
//					}
//				}
				
				if (popupCategory != null) {
					popupCategory.showAsDropDown(v);
				}				
				
			}
		});
		
		findViewById(R.id.tv_sort).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (popupSort != null) {
					popupSort.showAsDropDown(v);
				}
			}
		});
		
		// set btn bottom action
		currentTabView = findViewById(R.id.tv_downloaded_songs);
		currentTabView.setSelected(true);
		
		// show downloaded
		currentPlaylist = "";
		onShowListDownload.onClick(null);
		findViewById(R.id.tv_downloaded_songs).setOnClickListener(onShowListDownload);
		
		findViewById(R.id.tv_loadmore).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (findViewById(R.id.scroll_view_downloaded).getVisibility() == View.VISIBLE) {
					findViewById(R.id.scroll_view_downloaded).setVisibility(View.GONE);
					findViewById(R.id.scroll_view_search).setVisibility(View.VISIBLE);
				} else {
					downloadVideoData();
				}
				
				if (currentTabView != null) {
					currentTabView.setSelected(false);
					currentTabView = v;
					currentTabView.setSelected(true);
				}				
			}
		});
		
		findViewById(R.id.tv_playlist).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				currentPlaylistAction = PLAYLIST_ACTION_OPEN_LIST;
				showPlaylist(getString(R.string.select_playlist));
			}
		});
		
		findViewById(R.id.img_btn_clock).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (popupTime != null) {
					popupTime.showAsDropDown(v);
				}
			}
		});
		
		findViewById(R.id.tv_time_left).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (popupTime != null) {
					popupTime.showAsDropDown(v);
				}
			}
		});
		
		findViewById(R.id.img_expand_collapse_video).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (isExpandingVideoView) {
					isExpandingVideoView = false;
					((ImageView) findViewById(R.id.img_expand_collapse_video)).setImageResource(R.drawable.ic_expand_video);
					RelativeLayout rlVideoPlayer = (RelativeLayout) findViewById(R.id.rl_video_player);
					RelativeLayout.LayoutParams lp = (android.widget.RelativeLayout.LayoutParams) rlVideoPlayer.getLayoutParams();
					lp.width = RelativeLayout.LayoutParams.MATCH_PARENT;
					lp.height = (int) (100 * getResources().getDisplayMetrics().density);
					rlVideoPlayer.setLayoutParams(lp);					
				} else {
					isExpandingVideoView = true;
					((ImageView) findViewById(R.id.img_expand_collapse_video)).setImageResource(R.drawable.ic_collapse_video);
					RelativeLayout rlVideoPlayer = (RelativeLayout) findViewById(R.id.rl_video_player);
					RelativeLayout.LayoutParams lp = (android.widget.RelativeLayout.LayoutParams) rlVideoPlayer.getLayoutParams();
					lp.width = RelativeLayout.LayoutParams.MATCH_PARENT;
					lp.height = (int) (200 * getResources().getDisplayMetrics().density);
					rlVideoPlayer.setLayoutParams(lp);					
				}
			}
		});
		
	}
	
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
	/** ------------- Init VideoPlayer -------------- */
	/** ------------- Init VideoPlayer -------------- */
	/** ------------- Init VideoPlayer -------------- */
	
	public static final String REPEAT_NO = "repeat_no";
	public static final String REPEAT_ONE = "repeat_one";
	public static final String REPEAT_ALL = "repeat_all";

	String currentPlayingId;
	CustomVideoView mVideoView;
	String currentRepeatState = REPEAT_NO;
	
	public void initVideoPlayer() {
		mVideoView = (CustomVideoView) findViewById(R.id.video_view);
		
		mVideoView.setOnCompletionListener(new OnCompletionListener() {
			@Override
			public void onCompletion(MediaPlayer mp) {
				// TODO Auto-generated method stub
				Log.e("stk", "onCompletion...");
				
				if (findViewById(R.id.scroll_view_downloaded).getVisibility() == View.GONE) {
					return;
				}
				
				if (currentRepeatState.equals(REPEAT_ONE)) {
					mVideoView.start();
				} else {
					String [] listCurrentPlaySong = ZingTools.getIdsFromPlaylist(getApplicationContext(), currentPlaylist);
					
					if (listCurrentPlaySong.length == 0) { // if current list is empty
						return;
					}
					
					int currentPosition = -1;
					for (int i = 0; i < listCurrentPlaySong.length; i++) {
						if (currentPlayingId.equals(listCurrentPlaySong[i])) {
							currentPosition = i;
							break;
						}
					}
					
					if (currentPosition == -1) {
						return;
					}
					
					if (currentPosition == (listCurrentPlaySong.length-1)) {	// if reached end of list
						currentPosition = 0;
						if (!currentRepeatState.equals(REPEAT_ALL)) {
							return;
						}
					} else {
						currentPosition += 1;
					}
					
					String videoId = listCurrentPlaySong[currentPosition];
					if (ZingTools.checkSongOrVideoFileExist(videoId) != null) {
						ZingVideoInfo zingVideoInfo = ZingVideoTools.getZingVideoInfoFromId(getApplicationContext(), videoId);
						
						if (zingVideoInfo != null) {
							currentPlayingId = videoId;
							ScrollView scrollViewDownloaded = (ScrollView) findViewById(R.id.scroll_view_downloaded);
							onClickRowVideo.onClick(scrollViewDownloaded.findViewWithTag(videoId));
						}
					}
				}				
			}
		});
		
		mVideoView.setCustomOnPreparedListener(new OnPreparedListener() {
			@Override
			public void onPrepared(MediaPlayer mp) {
				// TODO Auto-generated method stub
				findViewById(R.id.pb_loading).setVisibility(View.GONE);
				findViewById(R.id.tv_can_not_play).setVisibility(View.GONE);
				findViewById(R.id.img_btn_now_playing).setVisibility(View.VISIBLE);
				((ImageView)findViewById(R.id.img_btn_now_playing)).setImageResource(R.drawable.bg_now_playing_pause);
				
				Log.e("stk", "onPrepared........");
				fadeOutMediaController();
				
				new Handler().postDelayed(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						updatePlayingProgress();		
					}
				}, 500);
			}
		});
		
		mVideoView.setCustomOnBufferingUpdateListener(new OnBufferingUpdateListener() {
			@Override
			public void onBufferingUpdate(MediaPlayer mp, int percent) {
				// TODO Auto-generated method stub
				((SeekBar) findViewById(R.id.seekbar_playing)).setSecondaryProgress(percent);
			}
		});
		
		mVideoView.setOnErrorListener(new OnErrorListener() {
			@Override
			public boolean onError(MediaPlayer mp, int what, int extra) {
				// TODO Auto-generated method stub
				if (what == 1 && extra == 9100) {
					Toast.makeText(getApplicationContext(), getString(R.string.can_play_unsupported_device), Toast.LENGTH_LONG).show();
				} else {
					Toast.makeText(getApplicationContext(), getString(R.string.can_play_error), Toast.LENGTH_SHORT).show();
				}
				
				findViewById(R.id.pb_loading).setVisibility(View.GONE);
				findViewById(R.id.tv_can_not_play).setVisibility(View.VISIBLE);
				
				return true;
			}
		});
		
		((SeekBar) findViewById(R.id.seekbar_playing)).setOnTouchListener(new OnTouchListener() {
			@Override
			public boolean onTouch(View v, MotionEvent event) {
				// TODO Auto-generated method stub
				fadeOutMediaController();
				
				if (event.getAction() == MotionEvent.ACTION_UP) {
					SeekBar seekBar = (SeekBar) findViewById(R.id.seekbar_playing);
					if (seekBar.getProgress() < seekBar.getSecondaryProgress()) {
						if (mVideoView.mMediaPlayer != null) {
							int position = (int) (mVideoView.mMediaPlayer.getDuration() * 1.0 * seekBar.getProgress() / 100);
							mVideoView.mMediaPlayer.seekTo(position);
							return true;
						}
					}
				}
				return false;
			}
		});
		
		// set media controller visibility
		findViewById(R.id.rl_video_player).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (System.currentTimeMillis() - lastTimeShowingPopup < 200) {
					return;
				}
				
				findViewById(R.id.rl_video_controller).clearAnimation();
				findViewById(R.id.rl_video_controller).setVisibility(View.VISIBLE);				
				
				if (mVideoView.mMediaPlayer != null) {
					if (mVideoView.isPlaying()) {
						mVideoView.pause();
						((ImageView)findViewById(R.id.img_btn_now_playing)).setImageResource(R.drawable.bg_now_playing_play);
					} else {
						mVideoView.start();
						((ImageView)findViewById(R.id.img_btn_now_playing)).setImageResource(R.drawable.bg_now_playing_pause);
						
						fadeOutMediaController();
					}						
				}
			}
		});
		
		findViewById(R.id.img_btn_repeat).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (currentRepeatState.equals(REPEAT_NO)) {
					currentRepeatState = REPEAT_ONE;
					((ImageView)findViewById(R.id.img_btn_repeat)).setImageResource(R.drawable.ic_repeat_one);
				} else if (currentRepeatState.equals(REPEAT_ONE)) {
					currentRepeatState = REPEAT_ALL;
					((ImageView)findViewById(R.id.img_btn_repeat)).setImageResource(R.drawable.ic_repeat_all);					
				} else if (currentRepeatState.equals(REPEAT_ALL)) {
					currentRepeatState = REPEAT_NO;
					((ImageView)findViewById(R.id.img_btn_repeat)).setImageResource(R.drawable.ic_repeat_none);					
				}
			}
		});
		
	}
	
	public void fadeOutMediaController() {
		// fade out media controller
		AnimationListener fadeoutListener = new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) {}
			
			@Override
			public void onAnimationRepeat(Animation animation) {}
			
			@SuppressLint("NewApi")
			@Override
			public void onAnimationEnd(Animation animation) {
				// TODO Auto-generated method stub
				
				// something wrong with SDK >= 11 if set visibily==gone
				if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.GINGERBREAD_MR1) {
					findViewById(R.id.rl_video_controller).setVisibility(View.GONE);					
				}
			}
		};
		
		Animation fadeout = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_out);
		fadeout.setAnimationListener(fadeoutListener);
		
		findViewById(R.id.rl_video_controller).setVisibility(View.VISIBLE);
		findViewById(R.id.rl_video_controller).startAnimation(fadeout);				
	}
	
	public void updatePlayingProgress() {
		if (isDestroyed) {
			return;
		}
		
		if (mVideoView.mMediaPlayer != null) {
			if (mVideoView.isPlaying()) {
				int percent = (int) (mVideoView.mMediaPlayer.getCurrentPosition() * 1.0 / mVideoView.mMediaPlayer.getDuration() * 100);
				((SeekBar) findViewById(R.id.seekbar_playing)).setProgress(percent);				
			}
			
			new Handler().postDelayed(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					updatePlayingProgress();
				}
			}, 500);
		}
	}
	
	
	
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
//	public void initConfig() {
//		new Thread(new Runnable() {
//			@Override
//			public void run() {
//				// TODO Auto-generated method stub
//				isLoadingConfig = true;
//				configString = ServiceHelper.getData(NameSpace.DROPBOX_CONFIG);
//
//				runOnUiThread(new Runnable() {
//					@Override
//					public void run() {
//						// TODO Auto-generated method stub
//						isLoadingConfig = false;
//						if (progressLoading != null) {
//							progressLoading.dismiss();
//						}
//						
//						if (configString == null) {
//							Toast.makeText(getApplicationContext(), getString(R.string.check_internet), Toast.LENGTH_SHORT).show();
//							return;
//						}
//						
//						try {
//							dataConfig = new JSONObject(configString).getJSONObject(NotificationService.config);
//
//							// get list categories
//							JSONArray listCategories = dataConfig.getJSONArray(NotificationService.category);
//							initCategoryPopup(listCategories);
//
//						} catch (Exception e) {
//							// TODO: handle exception
//							e.printStackTrace();
//						}
//					}
//				});
//			}
//		}).start();
//	}

	
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
	/** ------------- INIT POPUP -------------- */
	/** ------------- INIT POPUP -------------- */
	/** ------------- INIT POPUP -------------- */
	
	CustomPopupWindow popupCategory;
	long lastTimeShowingPopup;
	
	CustomPopupWindow popupSort;
	
	CustomPopupWindow popupVideoMenuOption;
	ZingVideoInfo currentZingVideoInfoInPopupMenu;
	View layoutPopupVideoMenuOption;
	
	CustomPopupWindow popupTime;
	
	public void initCategoryPopup(JSONArray listCategories) {
		LayoutInflater inflater = LayoutInflater.from(getApplicationContext());
		
		/** popup Category */
		/** popup Category */
		/** popup Category */
		View layoutPopupCategoryRoot = inflater.inflate(R.layout.popup_category, null);
		LinearLayout layoutPopupCategory = (LinearLayout) layoutPopupCategoryRoot.findViewById(R.id.ll_popup_category);
		popupCategory = new CustomPopupWindow(layoutPopupCategoryRoot, 320, FrameLayout.LayoutParams.WRAP_CONTENT);
		popupCategory.setBackgroundDrawable(new BitmapDrawable());
		popupCategory.setOutsideTouchable(true);
		popupCategory.setOnDismissListener(new OnDismissListener() {
			@Override
			public void onDismiss() {
				// TODO Auto-generated method stub
				lastTimeShowingPopup = System.currentTimeMillis();
			}
		});
		
		try {
			for (int i = 0; i < listCategories.length(); i++) {
				JSONObject category = listCategories.getJSONObject(i);
				TextView rowCategory = (TextView) inflater.inflate(R.layout.row_category, null);
				rowCategory.setText(category.getString(NotificationService.cat_name));
				rowCategory.setOnClickListener(onClickCategoryListener);
				rowCategory.setTag(R.id.tag_cat_id, category.get(NotificationService.cat_id));
				layoutPopupCategory.addView(rowCategory);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		if (isPendingOpenPopupCategory) {
			isPendingOpenPopupCategory = false;
			popupCategory.showAsDropDown(findViewById(R.id.tv_category));
		}
		
		
		/** popup sort */
		/** popup sort */
		/** popup sort */
		View layoutPopupSort = inflater.inflate(R.layout.popup_sort, null);
		popupSort = new CustomPopupWindow(layoutPopupSort, 320, FrameLayout.LayoutParams.WRAP_CONTENT);
		popupSort.setBackgroundDrawable(new BitmapDrawable());
		popupSort.setOutsideTouchable(true);
		popupSort.setOnDismissListener(new OnDismissListener() {
			@Override
			public void onDismiss() {
				// TODO Auto-generated method stub
				lastTimeShowingPopup = System.currentTimeMillis();
			}
		});
		
		layoutPopupSort.findViewById(R.id.tv_sort_hot).setOnClickListener(onClickSortListener);
		layoutPopupSort.findViewById(R.id.tv_sort_view).setOnClickListener(onClickSortListener);
		layoutPopupSort.findViewById(R.id.tv_sort_new).setOnClickListener(onClickSortListener);
	}
	
	public void initPopup() {
		LayoutInflater inflater = LayoutInflater.from(getApplicationContext());
		
		/** popup video menu option */
		/** popup video menu option */
		/** popup video menu option */
		layoutPopupVideoMenuOption = inflater.inflate(R.layout.popup_menu, null);
		popupVideoMenuOption = new CustomPopupWindow(layoutPopupVideoMenuOption, 320, FrameLayout.LayoutParams.WRAP_CONTENT);
		popupVideoMenuOption.setBackgroundDrawable(new BitmapDrawable());
		popupVideoMenuOption.setOutsideTouchable(true);
		popupVideoMenuOption.setOnDismissListener(new OnDismissListener() {
			@Override
			public void onDismiss() {
				// TODO Auto-generated method stub
				lastTimeShowingPopup = System.currentTimeMillis();
			}
		});
		
		layoutPopupVideoMenuOption.findViewById(R.id.tv_show_lyrics).setOnClickListener(onPopupMenuActionListener);
		layoutPopupVideoMenuOption.findViewById(R.id.tv_add_song_to_playlist).setOnClickListener(onPopupMenuActionListener);
		layoutPopupVideoMenuOption.findViewById(R.id.tv_remove_song_from_playlist).setOnClickListener(onPopupMenuActionListener);
		layoutPopupVideoMenuOption.findViewById(R.id.tv_share_song).setOnClickListener(onPopupMenuActionListener);
		layoutPopupVideoMenuOption.findViewById(R.id.tv_delete_song).setOnClickListener(onPopupMenuActionListener);
		
		
		
		/** popup sleep timer */
		/** popup sleep timer */
		/** popup sleep timer */
		View layoutTime = inflater.inflate(R.layout.layout_time_sleep, null);
		layoutTime.findViewById(R.id.tv_time_00).setOnClickListener(onSelectTimeListener);
		layoutTime.findViewById(R.id.tv_time_15).setOnClickListener(onSelectTimeListener);
		layoutTime.findViewById(R.id.tv_time_20).setOnClickListener(onSelectTimeListener);
		layoutTime.findViewById(R.id.tv_time_25).setOnClickListener(onSelectTimeListener);
		layoutTime.findViewById(R.id.tv_time_30).setOnClickListener(onSelectTimeListener);
		layoutTime.findViewById(R.id.tv_time_45).setOnClickListener(onSelectTimeListener);
		layoutTime.findViewById(R.id.tv_time_60).setOnClickListener(onSelectTimeListener);
		
		popupTime = new CustomPopupWindow(layoutTime, 320, FrameLayout.LayoutParams.WRAP_CONTENT);
		popupTime.setBackgroundDrawable(new BitmapDrawable());
		popupTime.setOutsideTouchable(true);
		popupTime.setOnDismissListener(new OnDismissListener() {
			@Override
			public void onDismiss() {
				// TODO Auto-generated method stub
				lastTimeShowingPopup = System.currentTimeMillis();
			}
		});			
	}
	
	
	OnClickListener onSelectTimeListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			popupTime.dismiss();
			countDownValue = 0;
			switch (v.getId()) {
			case R.id.tv_time_00:
				countDownValue = 0;
				break;
			case R.id.tv_time_15:
				countDownValue = 15;
				break;
			case R.id.tv_time_20:
				countDownValue = 20;
				break;
			case R.id.tv_time_25:
				countDownValue = 25;
				break;			
			case R.id.tv_time_30:
				countDownValue = 30;
				break;			
			case R.id.tv_time_45:
				countDownValue = 45;
				break;			
			case R.id.tv_time_60:
				countDownValue = 60;
				break;				
			default:
				break;
			}
			
			if (countDownValue == 0) {
				findViewById(R.id.tv_time_left).setVisibility(View.GONE);
			} else {
				findViewById(R.id.tv_time_left).setVisibility(View.VISIBLE);
				((TextView) findViewById(R.id.tv_time_left)).setText("" + countDownValue);
			}
			
			startCountDownTime = System.currentTimeMillis();
			startCountDown(startCountDownTime);
			
		}
	};
	
	long startCountDownTime;
	int countDownValue;
	
	public void startCountDown(final long startTime) {
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				if (startTime == startCountDownTime) {
					if (countDownValue > 0) {
						countDownValue = countDownValue - 1;
						if (countDownValue == 0) {
							finish();
						} else {
							((TextView)findViewById(R.id.tv_time_left)).setText("" + countDownValue);
							startCountDown(startTime);
						}
					}
				}
				
			}
		}, 60* 1000);
	}
	
	
	
	
	OnClickListener onClickCategoryListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			popupCategory.dismiss();
			((TextView)findViewById(R.id.tv_category)).setText(((TextView)v).getText());
			
			// init search category
			currentCategory = (String) v.getTag(R.id.tag_cat_id);
			currentOffsetCategory = 0;
			isSearching = false;
			// remove all current view in search layout
			((LinearLayout) findViewById(R.id.ll_video_search)).removeAllViews();
			
			// start fetching data
			downloadVideoData();
			
			findViewById(R.id.scroll_view_downloaded).setVisibility(View.GONE);
			findViewById(R.id.scroll_view_search).setVisibility(View.VISIBLE);
			
			// change tab button state
			if (currentTabView != null) {
				currentTabView.setSelected(false);
				currentTabView = findViewById(R.id.tv_loadmore);
				currentTabView.setSelected(true);
			}
		}
	};
	
	OnClickListener onClickSortListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			popupSort.dismiss();
			((TextView)findViewById(R.id.tv_sort)).setText(((TextView)v).getText());
			
			if (v.getId() == R.id.tv_sort_hot) {
				currentSort = SORT_HOT;
			} else if (v.getId() == R.id.tv_sort_view) {
				currentSort = SORT_TOTAL_PLAY;
			} else if (v.getId() == R.id.tv_sort_new) {
				currentSort = SORT_RELEASE_DATE;
			}
		}
	};
	
	OnClickListener onPopupMenuActionListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			popupVideoMenuOption.dismiss();
			
			if (v.getId() == R.id.tv_show_lyrics) {
				final Dialog lyricDialog = new Dialog(MainActivity.this, android.R.style.Theme_Translucent);
				lyricDialog.getWindow().getAttributes().windowAnimations = R.style.NotifyDialogAnimation;
				lyricDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
				lyricDialog.setContentView(R.layout.dialog_lyric);
				lyricDialog.setCancelable(true);
				
				((TextView)lyricDialog.findViewById(R.id.tv_song_title)).setText(currentZingVideoInfoInPopupMenu.getVideoName());
				((TextView)lyricDialog.findViewById(R.id.tv_song_artist)).setText(currentZingVideoInfoInPopupMenu.getVideoArtist());
				lyricDialog.findViewById(R.id.img_close).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						lyricDialog.dismiss();
					}
				});
				lyricDialog.show();
				
				OnGetLyricListener onGetLyricListener = new OnGetLyricListener() {
					@Override
					public void onGetLyric(final String lyric) {
						// TODO Auto-generated method stub
						runOnUiThread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								lyricDialog.findViewById(R.id.pb_loading).setVisibility(View.GONE);
								
								if (lyric == null) {
									lyricDialog.findViewById(R.id.tv_song_lyric_not_found).setVisibility(View.VISIBLE);
								} else {
									((TextView)lyricDialog.findViewById(R.id.tv_song_lyric)).setText(Html.fromHtml(lyric));
								}
							}
						});
					}
				};
				
				ZingTools.getLyric(getApplicationContext(), currentZingVideoInfoInPopupMenu.getVideoId(), onGetLyricListener);				
				
			} else if (v.getId() == R.id.tv_add_song_to_playlist) {
				
				currentPlaylistAction = PLAYLIST_ACTION_ADD_SONG;
				showPlaylist(getString(R.string.add_song_to_playlist));
				
			} else if (v.getId() == R.id.tv_remove_song_from_playlist) {
				
				ZingTools.deleteSongFromPlaylist(getApplicationContext(), currentPlaylist, currentZingVideoInfoInPopupMenu.getVideoId());
				onShowListDownload.onClick(null);				
				
			} else if (v.getId() == R.id.tv_share_song) {
				
				Intent intent = new Intent();
				intent.setAction(Intent.ACTION_SEND);
				intent.setType("text/plain");
				intent.putExtra(Intent.EXTRA_SUBJECT, getString(R.string.extra_subject));
				intent.putExtra(Intent.EXTRA_TITLE, getString(R.string.extra_title));
				intent.putExtra(Intent.EXTRA_TEXT, "http://mp3.zing.vn/video-clip/ZingVideoOffline/" + currentZingVideoInfoInPopupMenu.getVideoId() + ".html");
				startActivity(Intent.createChooser(intent, getString(R.string.share_chooser_title)));
				
			} else if (v.getId() == R.id.tv_delete_song) {
				
				android.content.DialogInterface.OnClickListener onClickPositive = new android.content.DialogInterface.OnClickListener() {
					
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						
						ZingTools.deleteSongFromAllPlaylist(getApplicationContext(), currentZingVideoInfoInPopupMenu.getVideoId());
						
						// remove view from list
						onShowListDownload.onClick(null);
						
						// if if row of this song exist is list search, replace icon of play by download
						ScrollView scrollView = (ScrollView) findViewById(R.id.scroll_view_search);
						View rowVideo = scrollView.findViewWithTag(currentZingVideoInfoInPopupMenu.getVideoId());
						if (rowVideo != null) {
							((ImageView)rowVideo.findViewById(R.id.img_btn_download)).setImageResource(R.drawable.ic_download_no);
							rowVideo.findViewById(R.id.img_btn_download).setVisibility(View.VISIBLE);
							rowVideo.findViewById(R.id.img_btn_now_playing_small).setVisibility(View.GONE);
						}
					}
				};
				
				android.content.DialogInterface.OnClickListener onClickNegative = new android.content.DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						dialog.dismiss();
					}
				};
				
				new Builder(MainActivity.this)
					.setMessage(getString(R.string.delete_song))
					.setPositiveButton("OK", onClickPositive)
					.setNegativeButton("NO", onClickNegative)
					.setCancelable(true)
					.show().setCanceledOnTouchOutside(true);				
			}
			
		}
	};
	
	
	
	/** ------------- LOAD DATA -------------- */
	/** ------------- LOAD DATA -------------- */
	/** ------------- LOAD DATA -------------- */
	
	String SORT_TOTAL_PLAY = "total_play";
	String SORT_HOT = "hot";
	String SORT_RELEASE_DATE = "release_date";
	
	// for video by category
	String currentCategory = null;
	String currentSort = SORT_TOTAL_PLAY;
	int currentOffsetCategory = 0;
	
	// for video by search
	boolean isSearching = false;
	boolean isSearchingByArtist = false;
	int currentOffsetSearch = -20;
	String searchText = "";
	
	public void initSearch() {
		findViewById(R.id.img_btn_search_artist).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (isSearchingByArtist) {
					isSearchingByArtist = false;
					((ImageView)findViewById(R.id.img_btn_search_artist)).setImageResource(R.drawable.ic_search_artist_off);
					Toast.makeText(getApplicationContext(), getString(R.string.search_artist_off), Toast.LENGTH_SHORT).show();
				} else {
					isSearchingByArtist = true;
					((ImageView)findViewById(R.id.img_btn_search_artist)).setImageResource(R.drawable.ic_search_artist_on);
					Toast.makeText(getApplicationContext(), getString(R.string.search_artist_on), Toast.LENGTH_SHORT).show();
				}
			}
		});
		
		findViewById(R.id.img_search).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				prepareSearching();
			}
		});
		
		((EditText) findViewById(R.id.et_search)).setOnEditorActionListener(new OnEditorActionListener() {
			@Override
			public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
				// TODO Auto-generated method stub
				if (actionId == EditorInfo.IME_ACTION_SEARCH) {
					prepareSearching();
					return true;
				}
				return false;
			}
		});
		
	}
	
	public void prepareSearching() {
		// hide keyboard
		InputMethodManager imm = (InputMethodManager) getSystemService(Activity.INPUT_METHOD_SERVICE);
		imm.toggleSoftInput(0, 0);
		
		// show layout of search container
		findViewById(R.id.scroll_view_downloaded).setVisibility(View.GONE);
		findViewById(R.id.scroll_view_search).setVisibility(View.VISIBLE);
		
		if (currentTabView != null) {
			currentTabView.setSelected(false);
		}
		currentTabView = findViewById(R.id.tv_loadmore);
		currentTabView.setSelected(true);
		
		String searchText = ((EditText) findViewById(R.id.et_search)).getText().toString().trim();
		if (searchText.equals("")) {
			Toast.makeText(MainActivity.this, getString(R.string.enter_keyword), Toast.LENGTH_SHORT).show();
		} else {
			// remove all current view
			LinearLayout llSong = (LinearLayout) findViewById(R.id.ll_video_search);
			llSong.removeAllViews();
			
			// prepare config
			currentOffsetSearch = -20; // -20 is funny
			isSearching = true;
			this.searchText = searchText.replaceAll(" ", "+");
			
			// start fetching data
			downloadVideoData();
		}
	}
	
	
	
	public void downloadVideoData() {
		findViewById(R.id.pb_more).setVisibility(View.VISIBLE);
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				
				ArrayList<ZingVideoInfo> listVideoInfoResult = null;
				
				if (isSearching) {
					listVideoInfoResult = ZingVideoTools.getVideoBySearch(searchText, currentOffsetSearch, isSearchingByArtist);
					if (listVideoInfoResult != null) {
						currentOffsetSearch = currentOffsetSearch + listVideoInfoResult.size();
					}
				} else {
					listVideoInfoResult = ZingVideoTools.getVideoByCategory(currentCategory, currentSort, currentOffsetCategory);
					if (listVideoInfoResult != null) {
						currentOffsetCategory = currentOffsetCategory + listVideoInfoResult.size();
					}
				}
				
				final ArrayList<ZingVideoInfo> listVideoInfo = listVideoInfoResult;
				
				runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						findViewById(R.id.pb_more).setVisibility(View.GONE);
						
						if (listVideoInfo != null) {
							if (listVideoInfo.size() == 0) {
								Toast.makeText(getApplicationContext(), getString(R.string.end_list), Toast.LENGTH_SHORT).show();
								return;
							}
							
							final ScrollView scrollViewResult = (ScrollView) findViewById(R.id.scroll_view_search);
							scrollViewResult.post(new Runnable() {
								@Override
								public void run() {
									// TODO Auto-generated method stub
									scrollViewResult.fullScroll(ScrollView.FOCUS_DOWN);
									addVideoToSearchResult(listVideoInfo);
								}
							});
						}
					}
				});
			}
		}).start();
	}
	
	public void addVideoToSearchResult(ArrayList<ZingVideoInfo> listVideoInfo) {
		LayoutInflater inflater = LayoutInflater.from(getApplicationContext());
		LinearLayout llVideoSearch = (LinearLayout) findViewById(R.id.ll_video_search);
		
		for (int i = 0; i < listVideoInfo.size(); i++) {
			ZingVideoInfo videoInfo = listVideoInfo.get(i);
			View rowVideo = inflater.inflate(R.layout.row_video, null);
			llVideoSearch.addView(rowVideo);
			ImageLoader.getInstance().displayImage(videoInfo.getVideoCoverUrl(), (ImageView) rowVideo.findViewById(R.id.img_cover), mDisplayImageOptions);
			((TextView)rowVideo.findViewById(R.id.tv_video_name)).setText(videoInfo.getVideoName());
			((TextView)rowVideo.findViewById(R.id.tv_video_artist)).setText(videoInfo.getVideoArtist());
			((TextView)rowVideo.findViewById(R.id.tv_video_view)).setText(videoInfo.getVideoViews());
			
			rowVideo.setTag(videoInfo.getVideoId());
			
			rowVideo.setTag(R.id.tag_video_info, videoInfo);
			rowVideo.setOnClickListener(onClickRowVideo);
			
			rowVideo.findViewById(R.id.img_btn_download).setTag(R.id.tag_video_info, videoInfo);
			rowVideo.findViewById(R.id.img_btn_download).setOnClickListener(onClickDownloadButton);
			
			// if video was downloaded, display play button
			if (ZingTools.checkSongOrVideoFileExist(videoInfo.getVideoId()) != null) {
				rowVideo.findViewById(R.id.img_btn_download).setVisibility(View.GONE);
				rowVideo.findViewById(R.id.img_btn_now_playing_small).setVisibility(View.VISIBLE);

				// if video was downloaded, but video is not in dowloaded list
				if (!ZingTools.checkSongOrVideoExistInDownloadList(getApplicationContext(), videoInfo.getVideoId())) {
					ZingTools.addSongToPlaylist(getApplicationContext(), "", videoInfo.getVideoId());
					ZingVideoTools.saveZingVideoInfo(getApplicationContext(), videoInfo);
				}
			}
		}
	}
	
	OnClickListener onClickRowVideo = new OnClickListener() {
		@SuppressLint("NewApi")
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (System.currentTimeMillis() - lastTimeShowingPopup < 200) {
				return;
			}
			
			findViewById(R.id.rl_video_controller).setVisibility(View.VISIBLE);
			findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
			findViewById(R.id.tv_can_not_play).setVisibility(View.GONE);
			findViewById(R.id.img_btn_now_playing).setVisibility(View.GONE);
			
			final ZingVideoInfo videoInfo = (ZingVideoInfo) v.getTag(R.id.tag_video_info);
			currentPlayingId = videoInfo.getVideoId();
			String videoPathSdcard = ZingTools.checkSongOrVideoFileExist(videoInfo.getVideoId());
			
			if (videoPathSdcard != null) {
				((SeekBar) findViewById(R.id.seekbar_playing)).setProgress(0);
				((SeekBar) findViewById(R.id.seekbar_playing)).setSecondaryProgress(100);
				((TextView)findViewById(R.id.tv_video_name)).setText(videoInfo.getVideoName());
				mVideoView.setVideoPath(videoPathSdcard);
				mVideoView.start();				
			} else {
				new Thread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						final String videoPath = ZingVideoTools.getVideoDownloadLink(videoInfo.getVideoId());
						Log.e("st", "videoPath=" + videoPath);
						runOnUiThread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								if (videoPath == null) {
									findViewById(R.id.tv_can_not_play).setVisibility(View.VISIBLE);
									findViewById(R.id.pb_loading).setVisibility(View.GONE);
								} else {
									findViewById(R.id.tv_can_not_play).setVisibility(View.GONE);
									((SeekBar) findViewById(R.id.seekbar_playing)).setProgress(0);
									((SeekBar) findViewById(R.id.seekbar_playing)).setSecondaryProgress(0);
									((TextView)findViewById(R.id.tv_video_name)).setText(videoInfo.getVideoName());
									mVideoView.setVideoPath(videoPath);
									mVideoView.start();
								}
							}
						});
					}
				}).start();				
			}
		}
	};
	
	
	
	
	
	
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
	/** ------------- DOWNLOAD VIDEO -------------- */
	/** ------------- DOWNLOAD VIDEO -------------- */
	/** ------------- DOWNLOAD VIDEO -------------- */
	
	Handler mHandler = new Handler();
	DecimalFormat decimalFormat = new DecimalFormat("#0.00");
	HashMap<String, DownloadTask> mMapVideoIdToDownloadTask = new HashMap<String, DownloadTask>();
	
	OnClickListener onClickDownloadButton = new OnClickListener() {
		@Override
		public void onClick(final View v) {
			// TODO Auto-generated method stub
			final ScrollView scrollViewSearch = (ScrollView) findViewById(R.id.scroll_view_search);
			final ZingVideoInfo videoInfo = (ZingVideoInfo) v.getTag(R.id.tag_video_info);
			final String videoId = videoInfo.getVideoId();
			
			if (mMapVideoIdToDownloadTask.containsKey(videoId)) {
				if (mMapVideoIdToDownloadTask.get(videoId) != null) {
					((ImageView) v).setImageResource(R.drawable.ic_download_no);
					mMapVideoIdToDownloadTask.get(videoId).cancel(true);
					mMapVideoIdToDownloadTask.remove(videoId);					
				} else {
					Toast.makeText(getApplicationContext(), getString(R.string.loading_please_wait), Toast.LENGTH_SHORT).show();
				}
			} else {
				// put a null downloader as holder while getting videoDownloadLink
				mMapVideoIdToDownloadTask.put(videoId, null);
				((ImageView) v).setImageResource(R.drawable.ic_download_yes);
				View rowVideo = scrollViewSearch.findViewWithTag(videoId);
				rowVideo.findViewById(R.id.sb_downloading).setVisibility(View.VISIBLE);
				rowVideo.findViewById(R.id.ll_downloading).setVisibility(View.VISIBLE);
				
				new Thread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						String videoDownloadLinkRaw = ZingVideoTools.getVideoDownloadLink(videoId);
						final String videoDownloadPath = ZingTools.getFinalLink(videoDownloadLinkRaw);
						
						if (videoDownloadPath == null) {
							// remove null downloader
							mMapVideoIdToDownloadTask.remove(videoId);
							((ImageView) v).setImageResource(R.drawable.ic_download_no);							
							return;
						}
						
						final DownloadTaskListener downloadTaskListener = new DownloadTaskListener() {
							@Override
							public void updateProcess(DownloadTask task) {
								// TODO Auto-generated method stub
								View rowVideo = scrollViewSearch.findViewWithTag(videoId);
								
								if (rowVideo != null) {
									((TextView)rowVideo.findViewById(R.id.tv_downloaded_size)).setText(decimalFormat.format(task.getDownloadSize() * 1.0 / (1024*1024)) + "/" + decimalFormat.format(task.getTotalSize() * 1.0 / (1024*1024)) + " MB");
									((SeekBar)rowVideo.findViewById(R.id.sb_downloading)).setProgress((int) task.getDownloadPercent());
									((TextView)rowVideo.findViewById(R.id.tv_speed)).setText("Speed : " + task.getDownloadSpeed() + "kbps");
								} 
							}
							
							@Override
							public void preDownload(DownloadTask task) {
								// TODO Auto-generated method stub
								
							}
							
							@Override
							public void finishDownload(DownloadTask task) {
								// TODO Auto-generated method stub
								View rowVideo = scrollViewSearch.findViewWithTag(videoId);
								if (rowVideo != null) {
									rowVideo.findViewById(R.id.sb_downloading).setVisibility(View.GONE);
									rowVideo.findViewById(R.id.ll_downloading).setVisibility(View.GONE);
									rowVideo.findViewById(R.id.img_btn_download).setVisibility(View.GONE);
									rowVideo.findViewById(R.id.img_btn_now_playing_small).setVisibility(View.VISIBLE);
								}
								
								// rename song
								File file = new File(PATH, NetworkUtils.getFileNameFromUrl(videoDownloadPath));
								file.renameTo(new File(PATH, videoInfo.getVideoName() + "_" + videoInfo.getVideoId() + ".mp4"));								
								
								// save info in shared preference
								ZingTools.addSongToPlaylist(getApplicationContext(), "", videoId);
								ZingVideoTools.saveZingVideoInfo(getApplicationContext(), videoInfo);
							}
							
							@Override
							public void errorDownload(DownloadTask task, Throwable error) {
								// TODO Auto-generated method stub
								if (error != null && error.getMessage() != null) {
									Toast.makeText(getApplicationContext(), "Download Error:" + error.getMessage(), Toast.LENGTH_SHORT).show();
									// remove downloader
									mMapVideoIdToDownloadTask.remove(videoId);
									// still keep downloading state, just change download btn image resource 
									((ImageView) v).setImageResource(R.drawable.ic_download_no);
								}
							}
						};
						
						mHandler.post(new Runnable() {
							@SuppressLint("NewApi")
							@Override
							public void run() {
								// TODO Auto-generated method stub
								try {
									DownloadTask downloadTask = new DownloadTask(MainActivity.this, videoDownloadPath, PATH, downloadTaskListener);
									
									if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.GINGERBREAD_MR1) {
									    downloadTask.execute();
									} else {
									    downloadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
									}
									mMapVideoIdToDownloadTask.put(videoId, downloadTask);
								} catch (MalformedURLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}							
							}
						});
					}
				}).start();
			}
		}
	};
	
	
	
	
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
	/** ------------- PLAYLIST -------------- */
	/** ------------- PLAYLIST -------------- */
	/** ------------- PLAYLIST -------------- */
	
	String currentPlaylist = "";
	String currentPlaylistAction;
	public static final String PLAYLIST_ACTION_ADD_SONG = "playlist_add_song";
	public static final String PLAYLIST_ACTION_OPEN_LIST = "playlist_open_list";
	
	public void showPlaylist(String title) {
		final Dialog dialog = new Dialog(MainActivity.this);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.setContentView(R.layout.dialog_playlist);
		((TextView)dialog.findViewById(R.id.tv_dialog_title)).setText(title);
		dialog.setCancelable(true);
		dialog.setCanceledOnTouchOutside(true);
		dialog.show();
		
		// get playlists from shared preference
		final LayoutInflater inflater = LayoutInflater.from(getApplicationContext());
		final LinearLayout llPlaylistContainer = (LinearLayout) dialog.findViewById(R.id.ll_playlist_container);
		
		final SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
		String playlistString = sharedPreferences.getString(NameSpace.SHARED_PREF_LIST_PLAYLIST, "");
		String[] playlist = playlistString.trim().split("@+");
		 
		for (int i = 0; i < playlist.length; i++) {
			String playlistName = playlist[i];
			if (!playlist[i].trim().equals("")) {
				View rowPlaylist = inflater.inflate(R.layout.row_playlist, null);
				((TextView)rowPlaylist.findViewById(R.id.tv_playlist_name)).setText(playlistName);
				llPlaylistContainer.addView(rowPlaylist);
				
				// delete playlist action
				rowPlaylist.findViewById(R.id.img_btn_playlist_delete).setTag(R.id.tag_row, rowPlaylist);
				rowPlaylist.findViewById(R.id.img_btn_playlist_delete).setTag(R.id.tag_dialog, dialog);
				rowPlaylist.findViewById(R.id.img_btn_playlist_delete).setTag(R.id.tag_playlist_name, playlistName);
				rowPlaylist.findViewById(R.id.img_btn_playlist_delete).setOnClickListener(onDeletePlaylist);
				
				// click playlist action
				rowPlaylist.setTag(R.id.tag_dialog, dialog);
				rowPlaylist.setTag(R.id.tag_playlist_name, playlistName);
				rowPlaylist.setOnClickListener(onClickRowPlaylist);
			}
		}
		
		// create new playlist action
		dialog.findViewById(R.id.tv_btn_add_playlist).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				String playlistString = sharedPreferences.getString(NameSpace.SHARED_PREF_LIST_PLAYLIST, "");
				String[] playlist = playlistString.trim().split("@+");				
				
				String playlistName = ((EditText) dialog.findViewById(R.id.et_add_playlist)).getText().toString().trim();
				if (!playlistName.equals("")) {
					// check playlistname exists
					for (int i = 0; i < playlist.length; i++) {
						if (playlist[i].equals(playlistName)) {
							Toast.makeText(getApplicationContext(), getString(R.string.create_playlist_with_other_name), Toast.LENGTH_SHORT).show();
							return;
						}
					}
					
					// if playlist name is ok, create it
					// hide keyboard
					InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
					imm.toggleSoftInput(0, 0);
					((EditText) dialog.findViewById(R.id.et_add_playlist)).setText("");
					
					// save in shared preference
					ZingTools.addPlaylist(getApplicationContext(), playlistName);

					// add new rowPlaylist to container
					View row = inflater.inflate(R.layout.row_playlist, null);
					((TextView)row.findViewById(R.id.tv_playlist_name)).setText(playlistName);
					llPlaylistContainer.addView(row);
					
					// set delete action
					row.findViewById(R.id.img_btn_playlist_delete).setTag(R.id.tag_row, row);
					row.findViewById(R.id.img_btn_playlist_delete).setTag(R.id.tag_dialog, dialog);
					row.findViewById(R.id.img_btn_playlist_delete).setTag(R.id.tag_playlist_name, playlistName);
					row.findViewById(R.id.img_btn_playlist_delete).setOnClickListener(onDeletePlaylist);
					
					// click playlist action
					row.setTag(R.id.tag_dialog, dialog);
					row.setTag(R.id.tag_playlist_name, playlistName);
					row.setOnClickListener(onClickRowPlaylist);					
				}
			}
		});
	}
	
	OnClickListener onDeletePlaylist = new OnClickListener() {
		@Override
		public void onClick(final View v) {
			// TODO Auto-generated method stub

			android.content.DialogInterface.OnClickListener positiveListener = new android.content.DialogInterface.OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					// TODO Auto-generated method stub
					dialog.dismiss();
					
					String playlistName = (String) v.getTag(R.id.tag_playlist_name);
					ZingTools.deletePlaylist(getApplicationContext(), playlistName);
					
					Dialog dialogPlaylist = (Dialog) v.getTag(R.id.tag_dialog);
					View row = (View) v.getTag(R.id.tag_row);
					((LinearLayout) dialogPlaylist.findViewById(R.id.ll_playlist_container)).removeView(row);
				}
			};
			
			android.content.DialogInterface.OnClickListener negativeListener = new android.content.DialogInterface.OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					// TODO Auto-generated method stub
					dialog.dismiss();
				}
			};
			
			new AlertDialog.Builder(MainActivity.this)
				.setIcon(R.drawable.ic_delete)
				.setTitle(getString(R.string.delete_playlist))
				.setPositiveButton("OK", positiveListener)
				.setNegativeButton("NO", negativeListener)
				.setCancelable(true)
				.show()
				.setCanceledOnTouchOutside(true);
		}
	};
	
	OnClickListener onClickRowPlaylist = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			Dialog dialog = (Dialog) v.getTag(R.id.tag_dialog);
			dialog.dismiss();
			String playlistName = (String) v.getTag(R.id.tag_playlist_name);
			
			if (currentPlaylistAction.equals(PLAYLIST_ACTION_OPEN_LIST)) {
				currentPlaylist = playlistName;
				onShowListDownload.onClick(null);
			} else if (currentPlaylistAction.equals(PLAYLIST_ACTION_ADD_SONG)) {
				ZingTools.addSongToPlaylist(getApplicationContext(), playlistName, currentZingVideoInfoInPopupMenu.getVideoId());
			}
		}
	};
	
	
	
	
	
	
	
	
	
	
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
	/** ******************************************************************************************************************************** */
	/** -------------- SHOW DOWNLOADED SONGS -------------- */
	/** -------------- SHOW DOWNLOADED SONGS -------------- */
	/** -------------- SHOW DOWNLOADED SONGS -------------- */
	
	OnClickListener onShowListDownload = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (v != null && v.getId() == R.id.tv_downloaded_songs) {
				currentPlaylist = "";
				
				if (currentTabView != null) {
					currentTabView.setSelected(false);
				}
				currentTabView = v;
				currentTabView.setSelected(true);
			}
			
			findViewById(R.id.scroll_view_search).setVisibility(View.GONE);
			findViewById(R.id.scroll_view_downloaded).setVisibility(View.VISIBLE);
			
			LayoutInflater inflater = LayoutInflater.from(getApplicationContext());
			LinearLayout llDownloaded = (LinearLayout) findViewById(R.id.ll_video_downloaded);
			llDownloaded.removeAllViews();
			
			String[] listDownloadIds = ZingTools.getIdsFromPlaylist(getApplicationContext(), currentPlaylist);
			
			for (int i = 0; i < listDownloadIds.length; i++) {
				String videoId = listDownloadIds[i];
				if (ZingTools.checkSongOrVideoFileExist(videoId) != null) {
					if (ZingTools.checkSongOrVideoExistInPlaylist(getApplicationContext(), currentPlaylist, videoId)) {
						
						ZingVideoInfo videoInfo = ZingVideoTools.getZingVideoInfoFromId(getApplicationContext(), videoId);
						if (videoInfo != null) {
							View rowVideo = inflater.inflate(R.layout.row_video, null);
							llDownloaded.addView(rowVideo);
							
							rowVideo.setTag(videoId);
							rowVideo.setTag(R.id.tag_video_info, videoInfo);
							rowVideo.findViewById(R.id.img_btn_download).setVisibility(View.GONE);
							rowVideo.findViewById(R.id.img_btn_popupmenu).setVisibility(View.VISIBLE);							
							rowVideo.setOnClickListener(onClickRowVideo);
							
							rowVideo.findViewById(R.id.img_btn_popupmenu).setTag(R.id.tag_video_info, videoInfo);
							rowVideo.findViewById(R.id.img_btn_popupmenu).setOnClickListener(onClickRowVideoMenuListner);
							
							ImageLoader.getInstance().displayImage(videoInfo.getVideoCoverUrl(), ((ImageView)rowVideo.findViewById(R.id.img_cover)), mDisplayImageOptions);
							((TextView)rowVideo.findViewById(R.id.tv_video_name)).setText(videoInfo.getVideoName());
							((TextView)rowVideo.findViewById(R.id.tv_video_artist)).setText(videoInfo.getVideoArtist());
							((TextView)rowVideo.findViewById(R.id.tv_video_view)).setText(videoInfo.getVideoViews());
						}
					}
				}
			}
		}
	};	
	
	OnClickListener onClickRowVideoMenuListner = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			currentZingVideoInfoInPopupMenu = (ZingVideoInfo) v.getTag(R.id.tag_video_info);
			if (popupVideoMenuOption != null) {
				if (currentPlaylist.equals("")) {
					layoutPopupVideoMenuOption.findViewById(R.id.tv_add_song_to_playlist).setVisibility(View.VISIBLE);
					layoutPopupVideoMenuOption.findViewById(R.id.tv_remove_song_from_playlist).setVisibility(View.GONE);
				} else {
					layoutPopupVideoMenuOption.findViewById(R.id.tv_add_song_to_playlist).setVisibility(View.GONE);
					layoutPopupVideoMenuOption.findViewById(R.id.tv_remove_song_from_playlist).setVisibility(View.VISIBLE);					
				}
				
				popupVideoMenuOption.showAsDropDown(v);	
			}
		}
	};
	
	
	
	

	
	
	
	
	
	@Override
	protected void onDestroy() {
		super.onDestroy();
		isDestroyed = true;
    	ArrayList<String> listDownloadTaskKey = new ArrayList<String>(mMapVideoIdToDownloadTask.keySet());
    	for (int i = 0; i < listDownloadTaskKey.size(); i++) {
    		if (mMapVideoIdToDownloadTask.get(listDownloadTaskKey.get(i)) != null) {
    			mMapVideoIdToDownloadTask.get(listDownloadTaskKey.get(i)).cancel(true);	
    		}
    	}
    	mMapVideoIdToDownloadTask.clear();
    	
    	unregisterReceiver(mReceiver);
	};
	
	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		// TODO Auto-generated method stub
		super.onConfigurationChanged(newConfig);
		
		if (newConfig.orientation == Configuration.ORIENTATION_LANDSCAPE) {
			findViewById(R.id.layout_top).setVisibility(View.GONE);
			findViewById(R.id.layout_top_search).setVisibility(View.GONE);
			findViewById(R.id.layout_bottom).setVisibility(View.GONE);
			findViewById(R.id.scroll_view_downloaded).setVisibility(View.GONE);
			findViewById(R.id.scroll_view_search).setVisibility(View.GONE);
			findViewById(R.id.img_expand_collapse_video).setVisibility(View.GONE);
			
			RelativeLayout rlVideoPlayer = (RelativeLayout) findViewById(R.id.rl_video_player);
			RelativeLayout.LayoutParams lp = (android.widget.RelativeLayout.LayoutParams) rlVideoPlayer.getLayoutParams();
			lp.width = RelativeLayout.LayoutParams.MATCH_PARENT;
			lp.height = RelativeLayout.LayoutParams.MATCH_PARENT;
			rlVideoPlayer.setLayoutParams(lp);
			
			// hide status bar
			WindowManager.LayoutParams attrs = getWindow().getAttributes();
			attrs.flags |= WindowManager.LayoutParams.FLAG_FULLSCREEN;
			getWindow().setAttributes(attrs);			
		} else {
			findViewById(R.id.layout_top).setVisibility(View.VISIBLE);
			findViewById(R.id.layout_top_search).setVisibility(View.VISIBLE);
			findViewById(R.id.layout_bottom).setVisibility(View.VISIBLE);
			findViewById(R.id.adView).setVisibility(View.VISIBLE);
			findViewById(R.id.img_expand_collapse_video).setVisibility(View.VISIBLE);
			
			if (currentTabView.getId() == R.id.tv_loadmore) {
				findViewById(R.id.scroll_view_search).setVisibility(View.VISIBLE);	
			} else {
				findViewById(R.id.scroll_view_downloaded).setVisibility(View.VISIBLE);	
			}
			
			int videoHeight = 200;
			if (!isExpandingVideoView) {
				videoHeight = 100;
			}
			
			RelativeLayout rlVideoPlayer = (RelativeLayout) findViewById(R.id.rl_video_player);
			RelativeLayout.LayoutParams lp = (android.widget.RelativeLayout.LayoutParams) rlVideoPlayer.getLayoutParams();
			lp.width = RelativeLayout.LayoutParams.MATCH_PARENT;
			lp.height = (int) (videoHeight * getResources().getDisplayMetrics().density);
			rlVideoPlayer.setLayoutParams(lp);
			
			// show status bar
			WindowManager.LayoutParams attrs = getWindow().getAttributes();
			attrs.flags &= (~WindowManager.LayoutParams.FLAG_FULLSCREEN);
			getWindow().setAttributes(attrs);			
		}
	}
	
}
