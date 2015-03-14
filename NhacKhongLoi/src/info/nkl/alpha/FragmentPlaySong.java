package info.nkl.alpha;

import java.util.WeakHashMap;

import org.json.JSONObject;

import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageLoadingListener;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

import info.nkl.alpha.R;
import info.nkl.services.KeyService;
import info.nkl.services.ListAlbumsService;
import info.nkl.services.NameSpace;
import info.nkl.services.ServiceHelper;
import info.nkl.services.ServiceHelper.ServiceHelperListener;
import info.nkl.services.SongService;
import info.nkl.tools.ImageProcessing;
import android.app.Activity;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.NotificationCompat;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;

public class FragmentPlaySong extends Fragment{
	Activity mActivity;
	View mainLayout;
	JSONObject mSongData;
	ImageView imgCoverBackground;
	WeakHashMap<ImageView, Bitmap> mMapImageViewToBitmap;
	DisplayImageOptions mDisplayImageOptions;
	
	MediaPlayer mMediaPlayer;
	MediaController mMediaController;
	Animation mRotationAnimation;
	
	public static final int REPEAT_NO = 0x11;
	public static final int REPEAT_ONE = 0x22;
	
	boolean isDestroyed = false;
	int mSongDuration;
	SeekBar mSeekBar;
	Handler mHandler;
	
	public static FragmentPlaySong getInstance() {
		FragmentPlaySong fragmentPlaySong = new FragmentPlaySong();
		return fragmentPlaySong;
	}
	
	@Override
	public void onAttach(Activity activity) {
		// TODO Auto-generated method stub
		super.onAttach(activity);
		mActivity = activity;
	}
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		isDestroyed = true;
		
		// stop media player
		if (mMediaPlayer.isPlaying()) {
			mMediaPlayer.stop();
		}
		mMediaPlayer.release();
		
		// remove notification on status bar
		NotificationManager mNotificationManager = (NotificationManager) mActivity.getSystemService(Context.NOTIFICATION_SERVICE);
		mNotificationManager.cancelAll();		
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mainLayout = inflater.inflate(R.layout.fragment_play_album_2, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		mRotationAnimation = AnimationUtils.loadAnimation(mActivity, R.anim.rotate_spinner);
		initUI();
	}
	
	public void initUI() {
		mainLayout.findViewById(R.id.btn_shuffle).setVisibility(View.GONE);
		mainLayout.findViewById(R.id.btn_fav).setVisibility(View.GONE);
		mainLayout.findViewById(R.id.btn_previous).setVisibility(View.GONE);
		mainLayout.findViewById(R.id.btn_next).setVisibility(View.GONE);
		
		imgCoverBackground = (ImageView) mainLayout.findViewById(R.id.img_cover_background);
		mMapImageViewToBitmap = new WeakHashMap<ImageView, Bitmap>();
		
		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.showStubImage(R.drawable.bg_album_cover)
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();			
		
		mMediaPlayer = new MediaPlayer();
		mMediaPlayer.setOnCompletionListener(monCompletionListener);
		mMediaPlayer.setOnBufferingUpdateListener(onBufferingUpdateListener);
		mMediaPlayer.setOnPreparedListener(onPreparedListener);
		
		mMediaController = new MediaController();
		
		mainLayout.findViewById(R.id.btn_repeat).setOnClickListener(mOnClickListener);
		mainLayout.findViewById(R.id.btn_share).setOnClickListener(mOnClickListener);
		mainLayout.findViewById(R.id.btn_playpause).setOnClickListener(mOnClickListener);
		
		mSeekBar = (SeekBar) mainLayout.findViewById(R.id.seek_bar);
		mSeekBar.setOnTouchListener(mOnTouchSeekBarListener);
		mHandler = new Handler();
	}
	
	public void displaySong(final String songId) {
		if (mMediaPlayer.isPlaying()) {
			mMediaPlayer.pause();
		}
		mainLayout.findViewById(R.id.btn_playpause).setVisibility(View.INVISIBLE);
		mainLayout.findViewById(R.id.btn_loading).setVisibility(View.VISIBLE);	
		mainLayout.findViewById(R.id.btn_loading).startAnimation(mRotationAnimation);
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				ServiceHelperListener serviceHelperListener = new ServiceHelperListener() {
					@Override
					public void onFailed() {}
					
					@Override
					public void onCompleted(JSONObject data) {
						// TODO Auto-generated method stub
						try {
							mSongData = data.getJSONObject(SongService.data);
							String mp3Url = mSongData.getString(SongService.link);
							mp3Url = KeyService.MCRYPT_MP3.decryptFromHexString(mp3Url);
							mSongData.put(SongService.link, mp3Url);
							
							mActivity.runOnUiThread(new Runnable() {
								@Override
								public void run() {
									// TODO Auto-generated method stub
									createUI();
								}
							});
						} catch (Exception e) {
							// TODO: handle exception
							e.printStackTrace();
						}
					}
				};
				
				String apiUrl = String.format(SongService.API_SONG, songId);
				ServiceHelper.getData(apiUrl, serviceHelperListener);
			}
		}).start();
	}
	
	public void createUI() {
		try {
			((TextView) mainLayout.findViewById(R.id.tv_song_title)).setText(mSongData.getString(SongService.song_name));
			
			mSeekBar.setProgress(0);
			mSeekBar.setSecondaryProgress(0);
			mMediaController.play();
			
			String coverForeground = mSongData.getString(SongService.cover);
			ImageLoader.getInstance().displayImage(coverForeground, (ImageView)mainLayout.findViewById(R.id.img_cover_foreground), mDisplayImageOptions);
			
			String coverBackground = mSongData.getString(SongService.album_blur_cover);
			ImageLoader.getInstance().displayImage(coverBackground, (ImageView)mainLayout.findViewById(R.id.img_cover_background), mDisplayImageOptions);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	private void updateMainProgressSeekBar() {
		if (!isDestroyed && mMediaPlayer.isPlaying()) {
			int percent = (int) (mMediaPlayer.getCurrentPosition() * 1.0 / mSongDuration * 100);
			mSeekBar.setProgress(percent);
			mHandler.postDelayed(new Runnable() {
				public void run() {
					// TODO Auto-generated method stub
					updateMainProgressSeekBar();
				}
			}, 1000);
		}
	}
	
	public void notifyCurrentPlayingSong(String songName, String artist) {
		NotificationManager mNotificationManager = (NotificationManager) mActivity.getSystemService(Context.NOTIFICATION_SERVICE);
		mNotificationManager.cancelAll();
		
		// Creates an explicit intent for an Activity in your app
		Intent resultIntent = new Intent(mActivity, MainActivity.class);
		resultIntent.setFlags(Intent.FLAG_ACTIVITY_BROUGHT_TO_FRONT);
		
		PendingIntent resultPendingIntent =  PendingIntent.getActivity(mActivity, 1,resultIntent, PendingIntent.FLAG_UPDATE_CURRENT);
		
		NotificationCompat.Builder mBuilder =
		        new NotificationCompat.Builder(mActivity)
		        .setSmallIcon(R.drawable.ic_app)
		        .setContentTitle(songName)
		        .setContentText(artist)
		        .setOngoing(true)
		        .setTicker(songName);		
		
		mBuilder.setContentIntent(resultPendingIntent);
		
		mNotificationManager.notify((int)System.currentTimeMillis()/1000, mBuilder.build());
	}
	
	/* ---------------- Sharing --------------------*/
	public void startSharing() {
		Intent intent = new Intent();
		intent.setAction(Intent.ACTION_SEND);
		intent.setType("text/plain");
		intent.putExtra(Intent.EXTRA_SUBJECT, getString(R.string.extra_subject));
		intent.putExtra(Intent.EXTRA_TITLE, getString(R.string.extra_subject));
		intent.putExtra(Intent.EXTRA_TEXT, createShareContent());
		startActivity(Intent.createChooser(intent, getString(R.string.share_via)));
	}
	
	private String createShareContent() {
		try {
			String songName = mSongData.getString(SongService.song_name);
			String songId = mSongData.getString(SongService.song_id);
			String slug = mSongData.getString(SongService.slug);
			String link = String.format(NameSpace.SHARE_SONG, slug, songId);
			String content = "Song: " + songName + "\n"
							+ "Link: " + link + "\n"
							+ "App Android: " + getString(R.string.tiny_url_app);
			return content;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "";
	}	
	/* ---------------- End Sharing --------------------*/	
	
	OnClickListener mOnClickListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			switch (v.getId()) {
			case R.id.btn_repeat:
				if (mMediaController.mRepeatState == REPEAT_NO) {
					mMediaController.mRepeatState = REPEAT_ONE;
					((ImageView) mainLayout.findViewById(R.id.btn_repeat)).setImageResource(R.drawable.repeat_one_btn_state);
				} else {
					mMediaController.mRepeatState = REPEAT_NO;
					((ImageView) mainLayout.findViewById(R.id.btn_repeat)).setImageResource(R.drawable.repeat_none_btn_state);					
				}
				
				break;
			case R.id.btn_share:
				startSharing();
				break;
			case R.id.btn_playpause:
				mMediaController.pauseOrResume();
				break;
			default:
				break;
			}
		}
	};
	
	OnTouchListener mOnTouchSeekBarListener = new OnTouchListener() {
		@Override
		public boolean onTouch(View v, MotionEvent event) {
			// TODO Auto-generated method stub
			if (event.getAction() == MotionEvent.ACTION_UP) {
				SeekBar seekBar = (SeekBar) mainLayout.findViewById(R.id.seek_bar);
				if (seekBar.getProgress() < seekBar.getSecondaryProgress()) {
					int seekToPosition = (int) ((seekBar.getProgress() * 1.0 / 100) * mSongDuration);
					mMediaPlayer.seekTo(seekToPosition);					
				}
			}
			
			return false;
		}
	};	
	
	OnCompletionListener monCompletionListener = new OnCompletionListener() {
		@Override
		public void onCompletion(MediaPlayer mp) {
			// TODO Auto-generated method stub
			if (mMediaController.mRepeatState == REPEAT_ONE) {
				mMediaController.play();
			}
		}
	};
	
	private OnPreparedListener onPreparedListener = new OnPreparedListener() {
		public void onPrepared(MediaPlayer mp) {
			// TODO Auto-generated method stub
			mSongDuration = mp.getDuration();
			mp.start();
			updateMainProgressSeekBar();
			
			mainLayout.findViewById(R.id.btn_playpause).setVisibility(View.VISIBLE);
			((ImageView)mainLayout.findViewById(R.id.btn_playpause)).setImageResource(R.drawable.pause_btn_state);
			
			mainLayout.findViewById(R.id.btn_loading).clearAnimation();
			mainLayout.findViewById(R.id.btn_loading).setVisibility(View.INVISIBLE);
			
			try {
				String songName = mSongData.getString(SongService.song_name);
				String artistName = mSongData.getString(SongService.artist_name);
				notifyCurrentPlayingSong(songName, artistName);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	};	
	
	private OnBufferingUpdateListener onBufferingUpdateListener = new OnBufferingUpdateListener() {
		public void onBufferingUpdate(MediaPlayer mp, int percent) {
			// TODO Auto-generated method stub
			mSeekBar.setSecondaryProgress(percent);
		}
	};	
	
	class MediaController {
		int mRepeatState;
		
		public MediaController() {
			// TODO Auto-generated constructor stub
			mRepeatState = REPEAT_NO;
		}
		
		public void play() {
			try {
				String mp3Url = mSongData.getString(SongService.link);
				mMediaPlayer.reset();
				mMediaPlayer.setDataSource(mp3Url);
				mMediaPlayer.prepareAsync();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		public void pauseOrResume() {
			if (mMediaPlayer.isPlaying()) {
				mMediaPlayer.pause();
				((ImageView) mainLayout.findViewById(R.id.btn_playpause)).setImageResource(R.drawable.play_btn_state);
			} else {
				mMediaPlayer.start();
				((ImageView) mainLayout.findViewById(R.id.btn_playpause)).setImageResource(R.drawable.pause_btn_state);
			}			
		}
		
		public void pause() {
			if (mMediaPlayer.isPlaying()) {
				mMediaPlayer.pause();
			}
			((ImageView) mainLayout.findViewById(R.id.btn_playpause)).setImageResource(R.drawable.play_btn_state);
		}		
	}
}
