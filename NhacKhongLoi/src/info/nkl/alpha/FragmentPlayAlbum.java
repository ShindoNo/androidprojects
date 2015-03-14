package info.nkl.alpha;

import java.util.Random;
import java.util.WeakHashMap;

import info.nkl.alpha.R;
import info.nkl.alpha.MainActivity;
import info.nkl.database.DatabaseQuery;
import info.nkl.services.AlbumDetailService;
import info.nkl.services.ListAlbumsService;
import info.nkl.services.NameSpace;

import org.json.JSONArray;
import org.json.JSONObject;

import com.google.analytics.tracking.android.EasyTracker;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

import android.app.Activity;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.app.Fragment;
import android.support.v4.app.NotificationCompat;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

public class FragmentPlayAlbum extends Fragment{
	Activity mActivity;
	View mainLayout;
	
	String mAlbumId = "";
	JSONObject mAlbumDetailData;
	JSONArray mSongs;
	
	boolean isDestroyed = false;
	Animation mRotationAnimation;
	
	DisplayImageOptions mDisplayImageOptions;
	FragmentPlayAlbumListener mFragmentPlayAlbumListener;
	DatabaseQuery mDatabaseQuery;
	
	// Media Player Section
	// repeat
	final int REPEAT_NO = 0x01;
	final int REPEAT_ONE = 0x02;
	final int REPEAT_ALL = 0x03;	
	
	// shuffle
	final int SHUFFLE_NO = 0x11;
	final int SHUFFLE_YES = 0x22;	
	
	MediaPlayer mMediaPlayer;
	MediaController mMediaController;
	SeekBar mSeekBar;
	Handler mHandler;
	int mSongDuration;
	// End Media Player Section
	
	public static FragmentPlayAlbum getInstance(FragmentPlayAlbumListener listener) {
		FragmentPlayAlbum fragmentPlayAlbum = new FragmentPlayAlbum();
		fragmentPlayAlbum.setData(listener);
		return fragmentPlayAlbum;
	}
	
	public void setData(FragmentPlayAlbumListener listener) {
		mFragmentPlayAlbumListener = listener;
	}
	
	@Override
	public void onAttach(Activity activity) {
		// TODO Auto-generated method stub
		super.onAttach(activity);
		mActivity = activity;
		
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
		mDatabaseQuery = new DatabaseQuery(mActivity);
		mRotationAnimation = AnimationUtils.loadAnimation(mActivity, R.anim.rotate_spinner);

		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.showStubImage(R.drawable.bg_album_cover)
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();		
		
		initMediaPlayer();
	}
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		mDatabaseQuery.close();
		isDestroyed = true;
		
		// stop media player
		if (mMediaPlayer.isPlaying()) {
			mMediaPlayer.stop();
		}
		mMediaPlayer.release();
		
		// remove notification on status bar
		NotificationManager mNotificationManager = (NotificationManager) mActivity.getSystemService(Context.NOTIFICATION_SERVICE);
		mNotificationManager.cancelAll();
		
//		mActivity.stopService(new Intent(mActivity, BackgroundService.class));
	}
	
	public void initMediaPlayer() {
		mMediaPlayer = new MediaPlayer();
		mMediaController = new MediaController();
		
		mMediaPlayer.setOnBufferingUpdateListener(onBufferingUpdateListener);
		mMediaPlayer.setOnPreparedListener(onPreparedListener);
		mMediaPlayer.setOnCompletionListener(onCompletionListener);
		
		mSeekBar = (SeekBar) mainLayout.findViewById(R.id.seek_bar);
		mSeekBar.setMax(99);
		mSeekBar.setOnTouchListener(mOnTouchSeekBarListener);
		
		mHandler = new Handler();
		
//		mActivity.startService(new Intent(mActivity, BackgroundService.class));
		
		// init controller 
		mainLayout.findViewById(R.id.btn_repeat).setOnClickListener(mOnClickMediaController);
		mainLayout.findViewById(R.id.btn_shuffle).setOnClickListener(mOnClickMediaController);
		mainLayout.findViewById(R.id.btn_share).setOnClickListener(mOnClickMediaController);
		mainLayout.findViewById(R.id.btn_fav).setOnClickListener(mOnClickMediaController);
		
		mainLayout.findViewById(R.id.btn_next).setOnClickListener(mOnClickMediaController);
		mainLayout.findViewById(R.id.btn_previous).setOnClickListener(mOnClickMediaController);
		mainLayout.findViewById(R.id.btn_playpause).setOnClickListener(mOnClickMediaController);
	}
	
	/* ---------------- Play Music in Service --------------------*/
//	class BackgroundService extends Service {
//
//		@Override
//		public IBinder onBind(Intent intent) {
//			// TODO Auto-generated method stub
//			return null;
//		}
//		
//		@Override
//		public void onCreate() {
//			// TODO Auto-generated method stub
//			super.onCreate();
//			
//			mMediaPlayer = new MediaPlayer();
//			mMediaController = new MediaController();
//			
//			mMediaPlayer.setOnBufferingUpdateListener(onBufferingUpdateListener);
//			mMediaPlayer.setOnPreparedListener(onPreparedListener);
//			mMediaPlayer.setOnCompletionListener(onCompletionListener);
//			
//			mSeekBar = (SeekBar) mainLayout.findViewById(R.id.seek_bar);
//			mSeekBar.setMax(99);
//			mSeekBar.setOnTouchListener(mOnTouchSeekBarListener);
//			
//			mHandler = new Handler();			
//		}
//	}	
	
	
	public void playAlbum(String albumId, JSONObject albumDetailData, int position) {
		if (!mAlbumId.equals(albumId)) {
			try {
				mAlbumId = albumId;
				mAlbumDetailData = albumDetailData;
				mSongs = albumDetailData.getJSONArray(AlbumDetailService.songs);
				
				if (mDatabaseQuery.checkAlbumFavourite(albumId)) {
					((ImageView)mainLayout.findViewById(R.id.btn_fav)).setImageResource(R.drawable.fav_btn_state);
				} else {
					((ImageView)mainLayout.findViewById(R.id.btn_fav)).setImageResource(R.drawable.fav_none_btn_state);
				}
				
				mMediaController.play(position);
				
				String imgCoverForeground = mAlbumDetailData.getString(AlbumDetailService.album_cover);
				ImageLoader.getInstance().displayImage(imgCoverForeground, (ImageView) mainLayout.findViewById(R.id.img_cover_foreground), mDisplayImageOptions);
				
				String imgCoverBackground = mAlbumDetailData.getString(AlbumDetailService.album_blur_cover);
				ImageLoader.getInstance().displayImage(imgCoverBackground, (ImageView) mainLayout.findViewById(R.id.img_cover_background), mDisplayImageOptions);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		} else {
			if (position != mMediaController.mPosition) {
				mMediaController.play(position);	
			}
		}
		
		setSongNameTitle();
	}
	
	public void setSongNameTitle() {
		try {
			String songName = mSongs.getJSONObject(mMediaController.mPosition).getString(AlbumDetailService.song_name);
			((TextView) mainLayout.findViewById(R.id.tv_song_title)).setText(songName);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/**
	 * Update progress of seek bar
	 */
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
			String album = mAlbumDetailData.getString(ListAlbumsService.album_name);
			String slug = mAlbumDetailData.getString(ListAlbumsService.slug);
			String link = String.format(NameSpace.SHARE_ALBUM, slug, mAlbumId);
			String content = "Album: " + album + "\n"
							+ "Link: " + link + "\n"
							+ "App Android: " + getString(R.string.tiny_url_app);
			return content;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "";
	}	
	/* ---------------- End Sharing --------------------*/
	
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
	
	/* ---------------- Media Controller Listener --------------------*/
	
	OnClickListener mOnClickMediaController = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			switch (v.getId()) {
			case R.id.btn_repeat:
				if (mMediaController.mRepeatState == REPEAT_NO) {
					mMediaController.mRepeatState = REPEAT_ONE;
					((ImageView) mainLayout.findViewById(R.id.btn_repeat)).setImageResource(R.drawable.repeat_one_btn_state);
				} else if (mMediaController.mRepeatState == REPEAT_ONE) {
					mMediaController.mRepeatState = REPEAT_ALL;
					((ImageView) mainLayout.findViewById(R.id.btn_repeat)).setImageResource(R.drawable.repeat_all_btn_state);					
				} else if (mMediaController.mRepeatState == REPEAT_ALL) {
					mMediaController.mRepeatState = REPEAT_NO;
					((ImageView) mainLayout.findViewById(R.id.btn_repeat)).setImageResource(R.drawable.repeat_none_btn_state);
				}
				
				break;
			case R.id.btn_shuffle:
				if (mMediaController.mShuffleState == SHUFFLE_NO) {
					mMediaController.mShuffleState = SHUFFLE_YES;
					mMediaController.resetShuffle();
					((ImageView) mainLayout.findViewById(R.id.btn_shuffle)).setImageResource(R.drawable.shuffle_btn_state);
				} else if (mMediaController.mShuffleState == SHUFFLE_YES) {
					mMediaController.mShuffleState = SHUFFLE_NO;
					mMediaController.resetShuffle();
					((ImageView) mainLayout.findViewById(R.id.btn_shuffle)).setImageResource(R.drawable.shuffle_none_btn_state);
				}
				break;
			case R.id.btn_share:
				startSharing();
				break;
			case R.id.btn_fav:
				boolean isFavourite = mDatabaseQuery.checkAlbumFavourite(mAlbumId);
				if (isFavourite) {
					Toast.makeText(mActivity, getString(R.string.removed_fav_album), Toast.LENGTH_SHORT).show();
					((ImageView) mainLayout.findViewById(R.id.btn_fav)).setImageResource(R.drawable.fav_none_btn_state);
				} else {
					Toast.makeText(mActivity, getString(R.string.added_to_fav_list), Toast.LENGTH_SHORT).show();
					((ImageView) mainLayout.findViewById(R.id.btn_fav)).setImageResource(R.drawable.fav_btn_state);					
				}
				mDatabaseQuery.updateFavouriteALbum(mAlbumId, !isFavourite);
				mFragmentPlayAlbumListener.changedFavouriteState();
				break;
			case R.id.btn_next:
				mMediaController.playNext();
				break;
			case R.id.btn_previous:
				mMediaController.playPrevious();
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
	
	private OnBufferingUpdateListener onBufferingUpdateListener = new OnBufferingUpdateListener() {
		public void onBufferingUpdate(MediaPlayer mp, int percent) {
			// TODO Auto-generated method stub
			mSeekBar.setSecondaryProgress(percent);
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
				String songName = mSongs.getJSONObject(mMediaController.mPosition).getString(AlbumDetailService.song_name);
				String artist = mAlbumDetailData.getString(AlbumDetailService.artist_name);
				notifyCurrentPlayingSong(songName, artist);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
		}
	};
	
	private OnCompletionListener onCompletionListener = new OnCompletionListener() {
		public void onCompletion(MediaPlayer mp) {
			// TODO Auto-generated method stub
			try {
				String albumName = mAlbumDetailData.getString(ListAlbumsService.album_name);
				EasyTracker.getTracker().trackEvent(NameSpace.GA_CATEGORY_MOST_VIEWED_ALBUM, albumName, null, 1L);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			mMediaController.playNextAfterFinishSong();
		}
	};	
	/* ------------------- End Media Controller Listener --------------------*/
	
	
	
	
	class MediaController {
		int mPosition;
		int mRepeatState;
		int mShuffleState;
		
		boolean[] mShuffleFlags;
		
		public MediaController() {
			// TODO Auto-generated constructor stub
			mPosition = -1;
			mRepeatState = REPEAT_NO;
			mShuffleState = SHUFFLE_NO;
		}
		
		public void resetShuffle() {
			mShuffleFlags = new boolean[mSongs.length()]; 
		}
		
		public void play(int position) {
			mFragmentPlayAlbumListener.playing(mAlbumId, position);
			mPosition = position;
			try {
				String songMp3 = mSongs.getJSONObject(position).getString(AlbumDetailService.song_mp3);
				String songName = mSongs.getJSONObject(position).getString(AlbumDetailService.song_name);
				((TextView)mainLayout.findViewById(R.id.tv_song_title)).setText(songName);
				
				mainLayout.findViewById(R.id.btn_playpause).setVisibility(View.INVISIBLE);
				mainLayout.findViewById(R.id.btn_loading).setVisibility(View.VISIBLE);	
				mainLayout.findViewById(R.id.btn_loading).startAnimation(mRotationAnimation);
				
				mMediaPlayer.reset();
				mMediaPlayer.setDataSource(songMp3);
				mMediaPlayer.prepareAsync();				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		public void playNextAfterFinishSong() {
			if (mRepeatState == REPEAT_ONE) {
				playCurrent();
			} else if (mShuffleState == SHUFFLE_YES) {
				playShuffle();
			} else {
				playNext();
			}
		}
		
		public void playCurrent() {
			play(mPosition);
		}
		
		public void playNext() {
			mPosition++;
			if (mPosition == mSongs.length()) {
				mPosition = 0;
				if (mRepeatState == REPEAT_ALL) {
					play(mPosition);
				}
			} else {
				play(mPosition);	
			}
		}
		
		public void playPrevious() {
			mPosition--;
			if (mPosition == -1) {
				mPosition = mSongs.length() - 1;
			}
			
			play(mPosition);
		}
		
		public void playShuffle() {
			// do nothing if played all songs
			boolean playedAll = true;
			for (int i = 0; i < mSongs.length(); i++) {
				if (mShuffleFlags[i] == false) {
					playedAll = false;
					break;
				}
			}
			
			if (playedAll) {
				resetShuffle();
				if (mRepeatState == REPEAT_ALL) {
					playShuffle();
				}
				return;
			} else {
				
				Random random = new Random();
				while (true) {
					int notPlayedPosition = random.nextInt(mSongs.length());
					if (mShuffleFlags[notPlayedPosition] == false) {
						mShuffleFlags[notPlayedPosition] = true;
						play(notPlayedPosition);
						break;
					}
				}
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
	
	interface FragmentPlayAlbumListener {
		public void playing(String albumId, int position);
		public void changedFavouriteState();
	}
	
}
