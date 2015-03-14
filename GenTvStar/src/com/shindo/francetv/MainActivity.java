package com.shindo.francetv;

import io.vov.vitamio.LibsChecker;
import io.vov.vitamio.MediaPlayer;
import io.vov.vitamio.MediaPlayer.OnBufferingUpdateListener;
import io.vov.vitamio.MediaPlayer.OnErrorListener;
import io.vov.vitamio.MediaPlayer.OnPreparedListener;
import io.vov.vitamio.widget.MediaController;
import io.vov.vitamio.widget.VideoView;
import java.io.InputStream;
import org.json.JSONArray;
import org.json.JSONObject;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;
import android.widget.Toast;
import com.idroid.lib.support.MCrypt;
import com.idroid.lib.support.PushTools;
import com.idroid.lib.support.ReadConfig;
import com.ironsource.mobilcore.MobileCore;

public class MainActivity extends Activity {

	String configString;

	ListView mListView;
	ChannelAdapter mChannelAdapter;
	VideoView mVideoView;
	MediaController mMediaController;

	// data
	JSONArray mData;
	JSONArray mListChannels;
	int mCurrentChannelPosition;
	int mCurrentStreamPosition;

	MCrypt mCrypt;
	Handler mHandler;

	boolean mShowLikeChannels = false;
	int mCurrentResolution = 0;

	ImageView mImgClose;
	
	int counter = 0;

	BroadcastReceiver mReceiver;
	
	ReadConfig mReadConfig;
	
	boolean onCreated = false;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		if (!LibsChecker.checkVitamioLibs(this)) {
			return;
		}
		
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				onCreated = true;
			}
		}, 5000);
		
		setContentView(R.layout.activity_main);
		mReadConfig = new ReadConfig(MainActivity.this, NameSpace.DROPBOX_CONFIG, true);

		initUI();
		initBroadcastReceiver();
		initData();
	}
	
	boolean isHidingNavigationBar;
	
	public void initBroadcastReceiver() {
		IntentFilter filter = new IntentFilter();
		filter.addAction(ReadConfig.ACTION_CHECK_DATA_VERSION);
		filter.addAction(ReadConfig.ACTION_UPDATED_DATA);
		
		mReceiver = new BroadcastReceiver() {
			@Override
			public void onReceive(Context context, Intent intent) {
				// TODO Auto-generated method stub
				String action = intent.getAction();
				Log.e("stk", "action=" + action);
				
				if (action.equals(ReadConfig.ACTION_CHECK_DATA_VERSION)) {
					int extraDataVersion = intent.getIntExtra(ReadConfig.EXTRA_VERSION_DATA, 0);
					Log.e("stk", "currentVersionData=" + Utils.getDataVersion(MainActivity.this) + "; configVersionData=" + extraDataVersion);
					if (extraDataVersion != Utils.getDataVersion(MainActivity.this)) {
						UpdateService.updateData(MainActivity.this, extraDataVersion);
					}
				} else if (action.equals(ReadConfig.ACTION_UPDATED_DATA)) {
					initListChannel();
				}
			}
		};
		
		registerReceiver(mReceiver, filter);
	}

	public void initUI() {
		NameSpace.IV = ":invoke/virtual;";
		NameSpace.SECRET = "lang/Exception;-";
		mCrypt = new MCrypt(NameSpace.IV, NameSpace.SECRET);

		mMediaController = (MediaController) findViewById(R.id.media_controller);

		// video view
		mVideoView = (VideoView) findViewById(R.id.video_view);
		mVideoView.setVideoQuality(MediaPlayer.VIDEOQUALITY_HIGH);
		mVideoView.setMediaController(mMediaController);

		mVideoView.setOnPreparedListener(mOnPreparedListener);
		mVideoView.setOnErrorListener(mOnErrorListener);
		mVideoView.setOnBufferingUpdateListener(mOnBufferingUpdateListener);

		// list channel
		mListView = (ListView) findViewById(R.id.lv_channel);
		mChannelAdapter = new ChannelAdapter(this);
		mListView.setAdapter(mChannelAdapter);
		mListView.setOnItemClickListener(mOnChannelClickListener);

		findViewById(R.id.img_logo).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				showAboutDialog();
			}
		});

		findViewById(R.id.img_like_main).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (mShowLikeChannels) {
					mShowLikeChannels = false;
					((ImageView) v).setImageResource(R.drawable.like_no);
				} else {
					mShowLikeChannels = true;
					((ImageView) v).setImageResource(R.drawable.like_yes);
				}

				mChannelAdapter.showLikeChannels(mShowLikeChannels);
			}
		});

		findViewById(R.id.btn_select_server).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				showSelectServerDialog();
			}
		});

		findViewById(R.id.btn_expand_collapse).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (findViewById(R.id.lv_channel).getVisibility() == View.VISIBLE) { // expand
					findViewById(R.id.lv_channel).setVisibility(View.GONE);
					findViewById(R.id.layout_top).setVisibility(View.GONE);
					((ImageView) findViewById(R.id.btn_expand_collapse)).setImageResource(R.drawable.btn_collapse);

					WindowManager.LayoutParams attrs = getWindow().getAttributes();
					attrs.flags |= WindowManager.LayoutParams.FLAG_FULLSCREEN;
					
					getWindow().setAttributes(attrs);
					
//					if( Build.VERSION.SDK_INT >= Build.VERSION_CODES.ICE_CREAM_SANDWICH )
//						findViewById(android.R.id.content).setSystemUiVisibility( View.SYSTEM_UI_FLAG_HIDE_NAVIGATION );
					
					if (mReadConfig.mSupportAdview != null) {
						mReadConfig.mSupportAdview.showCloseButton();
					}
				} else if (findViewById(R.id.lv_channel).getVisibility() == View.GONE) { // collapse
					findViewById(R.id.lv_channel).setVisibility(View.VISIBLE);
					findViewById(R.id.layout_top).setVisibility(View.VISIBLE);
					((ImageView) findViewById(R.id.btn_expand_collapse)).setImageResource(R.drawable.btn_expand);

					WindowManager.LayoutParams attrs = getWindow().getAttributes();
					attrs.flags &= (~WindowManager.LayoutParams.FLAG_FULLSCREEN);
					getWindow().setAttributes(attrs);
					
					if (mReadConfig.mSupportAdview != null) {
						mReadConfig.mSupportAdview.showAdview();
						mReadConfig.mSupportAdview.hideCloseButton();
					}			
					
				}
			}
		});

		findViewById(R.id.btn_resolution).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (mCurrentResolution == VideoView.VIDEO_LAYOUT_ORIGIN) {
					mCurrentResolution++;
					mVideoView.setVideoLayout(mCurrentResolution, 0);
					((Button) findViewById(R.id.btn_resolution)).setText("Scale");
				} else if (mCurrentResolution == VideoView.VIDEO_LAYOUT_SCALE) {
					mCurrentResolution++;
					mVideoView.setVideoLayout(mCurrentResolution, 0);
					((Button) findViewById(R.id.btn_resolution)).setText("Stretch");
				} else if (mCurrentResolution == VideoView.VIDEO_LAYOUT_STRETCH) {
					mCurrentResolution++;
					mVideoView.setVideoLayout(mCurrentResolution, 0);
					((Button) findViewById(R.id.btn_resolution)).setText("Zoom");
				} else if (mCurrentResolution == VideoView.VIDEO_LAYOUT_ZOOM) {
					mCurrentResolution = 0;
					mVideoView.setVideoLayout(mCurrentResolution, 0);
					((Button) findViewById(R.id.btn_resolution)).setText("Origin");
				}
			}
		});
	}

	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		if (mVideoView != null) {
			mVideoView.pause();
		}
	}

	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		
		if (onCreated) {
			MobileCore.showOfferWall(this, null);	
		}
		
		if (mVideoView != null) {
			mVideoView.resume();
		}
		
	}
	
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		if (mVideoView != null) {
			mVideoView.stopPlayback();
		}
		
		try {
			unregisterReceiver(mReceiver);	
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void initData() {
		if (Utils.getData(MainActivity.this).equals("")) { // download if not have in shared preference
			findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
			new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					final String data = ChannelService.getData();
					runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							findViewById(R.id.pb_loading).setVisibility(View.GONE);
							if (data != null) {
								Utils.setData(MainActivity.this, data);
								Utils.setDataVersion(MainActivity.this, 1);
								initListChannel();
							} else {
								Toast.makeText(MainActivity.this, getString(R.string.error), Toast.LENGTH_LONG).show();
							}							
						}
					});
				}
			}).start();
		} else {
			initListChannel();
		}
	}
	
	public void initListChannel() {
		try {
			String data = PreferenceManager.getDefaultSharedPreferences(MainActivity.this).getString(NameSpace.SHARED_PREF_DATA, "");
			mData = new JSONArray(mCrypt.decryptFromHexString(data));
			mListChannels = mData.getJSONObject(0).getJSONArray(ChannelService.data);
			mChannelAdapter.setData(mListChannels);
			mChannelAdapter.notifyDataSetChanged();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void playChannel(int position, int streamPosition) {
		try {
			updateLayoutState(0);

			mCurrentChannelPosition = position;
			mCurrentStreamPosition = streamPosition;

			JSONObject channel = mListChannels.getJSONObject(position);
			String stream = channel.getJSONArray(ChannelService.stream).getString(streamPosition);
			stream = mCrypt.decryptFromHexString(stream).trim();

			mVideoView.setVideoPath(stream);
			
			findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	/**
	 * Update layout when somthing happens
	 * 
	 * @param state
	 */
	public void updateLayoutState(int state) {
		switch (state) {
		case 0: // loading
			findViewById(R.id.tv_error).setVisibility(View.GONE);
			findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
			findViewById(R.id.media_controller).setVisibility(View.GONE);
			break;
		case 1: // playing
			// show startapp ads
			counter++;
			if (counter % 5 == 0) {
				MobileCore.showOfferWall(MainActivity.this, null);
			}
			
			findViewById(R.id.tv_error).setVisibility(View.GONE);
			findViewById(R.id.pb_loading).setVisibility(View.GONE);
			findViewById(R.id.media_controller).setVisibility(View.VISIBLE);
			break;
		case 2: // failed all streams
			findViewById(R.id.tv_error).setVisibility(View.VISIBLE);
			findViewById(R.id.pb_loading).setVisibility(View.GONE);
			findViewById(R.id.media_controller).setVisibility(View.GONE);
			mMediaController.setVisibility(View.VISIBLE);
			if (findViewById(R.id.lv_channel).getVisibility() == View.GONE) {
				findViewById(R.id.lv_channel).setVisibility(View.VISIBLE);
				findViewById(R.id.layout_top).setVisibility(View.VISIBLE);
			}
			break;
		default:
			break;
		}
	}

	public void showSelectServerDialog() {
		final Dialog dialog = new Dialog(this);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.getWindow().getAttributes().windowAnimations = R.style.DialogAnimationPopUp;
		dialog.setContentView(R.layout.dialog_select_server);
		dialog.setCanceledOnTouchOutside(true);

		try {
			JSONObject currentChannelData = mListChannels.getJSONObject(mCurrentChannelPosition);
			JSONArray streamData = currentChannelData.getJSONArray(ChannelService.stream);

			RadioGroup rgSelectServer = (RadioGroup) dialog.findViewById(R.id.rg_select_server);
			for (int i = 0; i < streamData.length(); i++) {
				RadioButton rbServer = new RadioButton(this);
				rgSelectServer.addView(rbServer);

				if (i == mCurrentStreamPosition) {
					rbServer.setChecked(true);
				}

				rbServer.setLayoutParams(new RadioGroup.LayoutParams(RadioGroup.LayoutParams.MATCH_PARENT, RadioGroup.LayoutParams.WRAP_CONTENT));
				rbServer.setText(getString(R.string.server) + " " + (i + 1));
				rbServer.setTag(R.id.tag_position, i);
			}

			rgSelectServer.setOnCheckedChangeListener(new OnCheckedChangeListener() {
				@Override
				public void onCheckedChanged(RadioGroup group, int checkedId) {
					// TODO Auto-generated method stub
					int streamPosition = Integer.parseInt(group.findViewById(checkedId).getTag(R.id.tag_position).toString());
					playChannel(mCurrentChannelPosition, streamPosition);
					dialog.dismiss();
				}
			});
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		dialog.show();
	}

	private void showAboutDialog() {
		final Dialog dialog = new Dialog(this);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.getWindow().getAttributes().windowAnimations = R.style.NotifyDialogAnimation;
		dialog.setContentView(R.layout.dialog_about);
		dialog.setCanceledOnTouchOutside(true);

		try {
			PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
			String version = packageInfo.versionName;
			((TextView) dialog.findViewById(R.id.tv_version)).setText("Version " + version);
		} catch (NameNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		dialog.findViewById(R.id.btn_ok).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		});

		dialog.show();
	}

	@Override
	public boolean onKeyUp(int keyCode, android.view.KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK) {
			if (findViewById(R.id.lv_channel).getVisibility() == View.GONE) {
				findViewById(R.id.lv_channel).setVisibility(View.VISIBLE);
				findViewById(R.id.layout_top).setVisibility(View.VISIBLE);
				((ImageView) findViewById(R.id.btn_expand_collapse)).setImageResource(R.drawable.btn_expand);

				WindowManager.LayoutParams attrs = getWindow().getAttributes();
				attrs.flags &= (~WindowManager.LayoutParams.FLAG_FULLSCREEN);
				getWindow().setAttributes(attrs);
				
				if (mReadConfig.mSupportAdview != null) {
					mReadConfig.mSupportAdview.showAdview();
					mReadConfig.mSupportAdview.hideCloseButton();
				}
				
			} else {
				ReadConfig.showExit(MainActivity.this);
			}

			return true;
		}
		return false;
	};

	/** ---------- Other interface ---------- */
	/** ---------- Other interface ---------- */
	/** ---------- Other interface ---------- */
	OnItemClickListener mOnChannelClickListener = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			if (view.getTag().toString().equals("promotion")) {
				promotion(position);
				return;
			}
			
			mCurrentChannelPosition = position;
			mCurrentStreamPosition = 0;
			mChannelAdapter.setCurrentPosition(position);
			mChannelAdapter.notifyDataSetChanged();
			playChannel(position, 0);

		}
	};
	
	public void promotion(int position) {
		try {
			JSONObject channel = mListChannels.getJSONObject(position);
			String promotionLink = channel.getJSONArray(ChannelService.stream).getString(2);
			promotionLink = mCrypt.decryptFromHexString(promotionLink);
			
			Intent intent = new Intent(Intent.ACTION_VIEW);
			intent.setData(Uri.parse(promotionLink));
			startActivity(intent);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	/** ---------- MediaPlayer interface ---------- */
	/** ---------- MediaPlayer interface ---------- */
	/** ---------- MediaPlayer interface ---------- */
	OnPreparedListener mOnPreparedListener = new OnPreparedListener() {
		@Override
		public void onPrepared(MediaPlayer mediaPlayer) {
			// TODO Auto-generated method stub
			updateLayoutState(1);
		}
	};

	OnBufferingUpdateListener mOnBufferingUpdateListener = new OnBufferingUpdateListener() {
		@Override
		public void onBufferingUpdate(MediaPlayer mediaPlayer, int value) {
			// TODO Auto-generated method stub
			((Button) findViewById(R.id.btn_buffering_percent)).setText("Buffering " + value + "%");
		}
	};

	OnErrorListener mOnErrorListener = new OnErrorListener() {
		@Override
		public boolean onError(MediaPlayer mediaPlayer, int arg1, int arg2) {
			// TODO Auto-generated method stub
			try {
				JSONObject channel = mListChannels.getJSONObject(mCurrentChannelPosition);
				if (mCurrentStreamPosition + 1 < channel.getJSONArray(ChannelService.stream).length()) {
					mCurrentStreamPosition++;
					playChannel(mCurrentChannelPosition, mCurrentStreamPosition);
				} else {
					updateLayoutState(2);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return true;
		}
	};

}
