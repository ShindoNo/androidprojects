package info.nkl.ui1;
import info.nkl.alpha.R;
import java.util.Random;

import info.nkl.services.ListAlbumsService;
import info.nkl.services.NameSpace;
import info.nkl.services.AlbumDetailService;
import info.nkl.tools.Utils;
import info.nkl.ui1.FragmentMenu.OnMenuSelectedListener;

import org.json.JSONArray;
import org.json.JSONObject;

import com.google.ads.c;
import com.google.analytics.tracking.android.EasyTracker;
import com.nostra13.universalimageloader.core.ImageLoader;

import info.nkl.database.DatabaseQuery;
import android.app.Activity;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.AdapterView.OnItemClickListener;

public class FragmentPlayAlbum extends Fragment {
	// repeat
	private final int REPEAT_NO = 0x01;
	private final int REPEAT_ONE = 0x02;
	private final int REPEAT_ALL = 0x03;	
	
	// shuffle
	private final int SHUFFLE_NO = 0x11;
	private final int SHUFFLE_YES = 0x22;
	
	// system
	private ProgressDialog mSpinner;
	
	// layout
	private View mainLayout;
	private ListView mlvSongs;
	private SongsAdapter mSongsAdapter;
	
	// media
	private SeekBar mSeekBar;
	private MediaPlayer mMediaPlayer;
	private Handler mHandler;
	
	// data
	private JSONObject mData;
	private JSONArray mSongs;
	private String mAlbumId;

	// state
	private int duration;
	private int currentSongPosition;
	private int repeatStatus;
	private int shuffleStatus;
	
	Activity mActivity;
	
	DatabaseQuery mDatabaseDAO;
	OnMenuSelectedListener monMenuSelectedListener;
	
	private boolean fragmentDestroyed = false;
	
	// handle shuffling
	boolean[] flagPlayedSongs;
	
	public static FragmentPlayAlbum getNewInstance(OnMenuSelectedListener onMenuSelectedListener) {
		FragmentPlayAlbum fragmentPlayAlbum = new FragmentPlayAlbum();
		fragmentPlayAlbum.setData(onMenuSelectedListener);
		return fragmentPlayAlbum;
	}
	
	private void setData(OnMenuSelectedListener onMenuSelectedListener) {
		monMenuSelectedListener = onMenuSelectedListener;
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
		mainLayout = inflater.inflate(R.layout.fragment_play_album, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		mDatabaseDAO = new DatabaseQuery(mActivity);
		init();
	}
	
	@Override
	public void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
	}

	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		mDatabaseDAO.close();
		
		mMediaPlayer.release();
		mMediaPlayer = null;
		fragmentDestroyed = true;
		((NotificationManager)mActivity.getSystemService(Context.NOTIFICATION_SERVICE)).cancelAll();
	}
	
	private void init() {
		mlvSongs = (ListView) mainLayout.findViewById(R.id.lv_songs);
		mSongsAdapter = new SongsAdapter();
		mlvSongs.setAdapter(mSongsAdapter);
		mlvSongs.setOnItemClickListener(onClickSong);
		
		mSeekBar = (SeekBar) mainLayout.findViewById(R.id.seek_bar);
		mSeekBar.setMax(99);
		
		repeatStatus = REPEAT_NO;
		shuffleStatus = SHUFFLE_NO;
		
		mHandler = new Handler();
		
		mainLayout.findViewById(R.id.img_favourite_album).setOnClickListener(mOnClickFavouriteAlbumListener);
		
		initMediaPlayer();
		initMediaController();
	}
	
	private void initMediaPlayer() {
		mMediaPlayer = new MediaPlayer();
		mMediaPlayer.setOnBufferingUpdateListener(onBufferingUpdateListener);
		mMediaPlayer.setOnPreparedListener(onPreparedListener);
		mMediaPlayer.setOnCompletionListener(onCompletionListener);
	}
	
	private void initMediaController() {
		mainLayout.findViewById(R.id.btn_play_next).setOnClickListener(onClickMediaController);
		mainLayout.findViewById(R.id.btn_play_previous).setOnClickListener(onClickMediaController);
		mainLayout.findViewById(R.id.btn_play_stop).setOnClickListener(onClickMediaController);
		mainLayout.findViewById(R.id.btn_repeat).setOnClickListener(onClickMediaController);
		mainLayout.findViewById(R.id.btn_shuffle).setOnClickListener(onClickMediaController);
	}
	
	public void startSharing() {
		Intent intent = new Intent();
		intent.setAction(Intent.ACTION_SEND);
		intent.setType("text/plain");
		intent.putExtra(Intent.EXTRA_SUBJECT, getString(R.string.extra_subject));
		intent.putExtra(Intent.EXTRA_TITLE, getString(R.string.extra_subject));
		intent.putExtra(Intent.EXTRA_TEXT, createShareContent());
		Log.e("stk", "share content=" + createShareContent());
		startActivity(Intent.createChooser(intent, "Chia sẻ qua"));
	}
	
	private String createShareContent() {
		try {
			String album = mData.getString(ListAlbumsService.album_name);
			String link = String.format(NameSpace.SHARE_ALBUM, "", mAlbumId);
			String content = "Album: " + album + "\n"
							+ "Link: " + link + "\n"
							+ "App Android: " + getString(R.string.tiny_url_app);
			return content;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "";
	}
	
	/**
	 * Update progress of seek bar
	 */
	private void updateMainProgressSeekBar() {
		try {
			if (!fragmentDestroyed && mMediaPlayer.isPlaying()) {
				int percent = (int) (mMediaPlayer.getCurrentPosition() * 1.0 / duration * 100);
				mSeekBar.setProgress(percent);
				mHandler.postDelayed(new Runnable() {
					public void run() {
						// TODO Auto-generated method stub
						updateMainProgressSeekBar();
					}
				}, 1000);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/**
	 * Play song at given position in song list
	 * @param position
	 */
	private void playSong(int position) {
		if (mSongs.length() == 0) return;
		
		currentSongPosition = position;
		((ImageView) mainLayout.findViewById(R.id.btn_play_stop)).setImageResource(R.drawable.ic_pause);
		mSongsAdapter.notifyDataSetChanged();
		mlvSongs.smoothScrollToPosition(currentSongPosition);
		
		try {
			JSONObject song = mSongs.getJSONObject(currentSongPosition);
			((TextView)mainLayout.findViewById(R.id.tv_song_name_bottom)).setText(song.getString(AlbumDetailService.song_name));
			((TextView)mainLayout.findViewById(R.id.tv_song_name_bottom)).setSelected(true);
			
			mSeekBar.setProgress(0);
			mSeekBar.setSecondaryProgress(0);
			
			mMediaPlayer.reset();
			mMediaPlayer.setDataSource(song.getString(AlbumDetailService.song_mp3));
			mMediaPlayer.prepareAsync();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/**
	 * Play album with given albumId
	 * @param albumId
	 */
	public void playAlbum(String albumId) {
		if (mAlbumId != albumId) {
			mAlbumId = albumId;
			new Thread(new DownloadAlbumRunnable()).start();
		}
	}
	
	private void setLayoutWithData() {
//		try {
//			((TextView)mainLayout.findViewById(R.id.tv_album_name)).setText("Album   : " + mData.getString(ListAlbumsService.album_name));
//			((TextView)mainLayout.findViewById(R.id.tv_artist_name)).setText("Nghệ sĩ : " + mData.getString(ListAlbumsService.artist_name));
//			((TextView)mainLayout.findViewById(R.id.tv_view_numb)).setText("Lượt nghe : " + mData.getString(ListAlbumsService.album_num_views));
//			currentSongPosition = 0;
//			playSong(currentSongPosition);
//			ImageLoader.getInstance().displayImage(mData.getString(ListAlbumsService.album_cover), (ImageView)mainLayout.findViewById(R.id.img_avatar));
//			
//			if (mDatabaseDAO.checkAlbumExist(mAlbumId)) {
//				((ImageView)mainLayout.findViewById(R.id.img_favourite_album)).setImageResource(R.drawable.ic_like_album);
//			} else {
//				((ImageView)mainLayout.findViewById(R.id.img_favourite_album)).setImageResource(R.drawable.ic_unlike_album);
//			}
//			
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
	}
	
	// handle shuffling
	private int pickUpNotPlaySongPosition() {
		int k;
		Random random = new Random();
		while (true) {
			k = random.nextInt(mSongs.length());
			if (!flagPlayedSongs[k]) {
				return k;
			}
		}
	}
	
	private boolean playedAllSongs() {
		for (int i = 0; i < flagPlayedSongs.length; i++) {
			if (!flagPlayedSongs[i])
				return false;
		}
		return true;
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
	

	/** ------------ Interface ------------ */
	/** ------------ Interface ------------ */
	/** ------------ Interface ------------ */
	
	private OnClickListener onClickMediaController = new OnClickListener() {
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (mSongs.length() == 0) return;
			
			if (v.getId() == R.id.btn_play_next) {
				currentSongPosition++;
				if (currentSongPosition == mSongs.length()) currentSongPosition = 0;
				playSong(currentSongPosition);
			} else if (v.getId() == R.id.btn_play_previous) {
				currentSongPosition--;
				if (currentSongPosition == -1) currentSongPosition = mSongs.length()-1;
				playSong(currentSongPosition);
			} else if (v.getId() == R.id.btn_play_stop) {
				if (mMediaPlayer.isPlaying()) {
					mMediaPlayer.pause();
					((ImageView) mainLayout.findViewById(R.id.btn_play_stop)).setImageResource(R.drawable.ic_play);
				} else {
					mMediaPlayer.pause();
					mMediaPlayer.start();
					((ImageView) mainLayout.findViewById(R.id.btn_play_stop)).setImageResource(R.drawable.ic_pause);
				}
			} else if (v.getId() == R.id.btn_repeat) {
				if (repeatStatus == REPEAT_NO) {
					repeatStatus = REPEAT_ONE;
					((ImageView)mainLayout.findViewById(R.id.img_repeat)).setImageResource(R.drawable.ic_repeat_one);
				} else if (repeatStatus == REPEAT_ONE) {
					repeatStatus = REPEAT_ALL;
					((ImageView)mainLayout.findViewById(R.id.img_repeat)).setImageResource(R.drawable.ic_repeat_all);					
				} else if (repeatStatus == REPEAT_ALL) {
					repeatStatus = REPEAT_NO;
					((ImageView)mainLayout.findViewById(R.id.img_repeat)).setImageResource(R.drawable.ic_repeat_no);					
				}
			} else if (v.getId() == R.id.btn_shuffle) {
				flagPlayedSongs = new boolean[mSongs.length()];
				flagPlayedSongs[currentSongPosition] = true;
				
				if (shuffleStatus == SHUFFLE_NO) {
					shuffleStatus = SHUFFLE_YES;
					((ImageView)mainLayout.findViewById(R.id.img_shuffle)).setImageResource(R.drawable.ic_shuffle_yes);
				} else {
					shuffleStatus = SHUFFLE_NO;
					((ImageView)mainLayout.findViewById(R.id.img_shuffle)).setImageResource(R.drawable.ic_shuffle_no);
				}
			}
		}
	};
	
	private OnItemClickListener onClickSong = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			if (position != currentSongPosition)
				playSong(position);
		}
		
	};
	
	// for seek bar
	private OnBufferingUpdateListener onBufferingUpdateListener = new OnBufferingUpdateListener() {
		public void onBufferingUpdate(MediaPlayer mp, int percent) {
			// TODO Auto-generated method stub
			mSeekBar.setSecondaryProgress(percent);
		}
	};
	
	private OnPreparedListener onPreparedListener = new OnPreparedListener() {
		public void onPrepared(MediaPlayer mp) {
			// TODO Auto-generated method stub
			duration = mp.getDuration();
			mp.start();
			updateMainProgressSeekBar();
			
			try {
				JSONObject currentSongs = mSongs.getJSONObject(currentSongPosition);
				String songName = currentSongs.getString(AlbumDetailService.song_name);
				String artistName = mData.getString(AlbumDetailService.artist_name);
				String albumName = mData.getString(AlbumDetailService.album_name);
				notifyCurrentPlayingSong(songName, artistName + " (" + albumName + ")");
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
				String albumName = mData.getString(ListAlbumsService.album_name);
				EasyTracker.getTracker().trackEvent(NameSpace.GA_CATEGORY_MOST_VIEWED_ALBUM, albumName, null, 1L);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			if (repeatStatus == REPEAT_ONE) {
				playSong(currentSongPosition);
			} else {
				if (shuffleStatus == SHUFFLE_YES) {
					if (playedAllSongs()) {
						((ImageView) mainLayout.findViewById(R.id.btn_play_stop)).setImageResource(R.drawable.ic_play);
						currentSongPosition = 0;
						flagPlayedSongs = new boolean[mSongs.length()];
						return;
					} else {
						currentSongPosition = pickUpNotPlaySongPosition();
					}
				} else {				
					currentSongPosition++;
					if (currentSongPosition == mSongs.length()) {
						currentSongPosition = 0;
						if (repeatStatus == REPEAT_NO) {
							((ImageView) mainLayout.findViewById(R.id.btn_play_stop)).setImageResource(R.drawable.ic_play);
							return;
						}
					}
				}
				playSong(currentSongPosition);
			}
		}
	};
	
	OnClickListener mOnClickFavouriteAlbumListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
//			if (mDatabaseDAO.checkAlbumExist(mAlbumId)) {
//				mDatabaseDAO.removeAlbum(mAlbumId);
//				((ImageView)v).setImageResource(R.drawable.ic_unlike_album);
//				Utils.toast(mActivity, getString(R.string.removed_fav_album));
//			} else {
//				try {
//					String albumName = mData.getString(SingleAlbumService.album_name);
//					
//					EasyTracker.getTracker().trackEvent(NameSpace.GA_CATEGORY_MOST_LIKED_ALBUMS, albumName, null, 1L);
//					
//					mDatabaseDAO.insertAlbum(mAlbumId, albumName);
//					((ImageView)v).setImageResource(R.drawable.ic_like_album);
//					Utils.toast(mActivity, getString(R.string.added_fav_album));						
//				} catch (Exception e) {
//					// TODO: handle exception
//					e.printStackTrace();
//				}
//			}
//			monMenuSelectedListener.onFavouriteAlbumsChanged();
		}
	};
	
	
	/** -------- Inner class --------- */
	/** -------- Inner class --------- */
	/** -------- Inner class --------- */
	
	class DownloadAlbumRunnable implements Runnable {
		public DownloadAlbumRunnable() {
			// TODO Auto-generated constructor stub
			mSpinner = ProgressDialog.show(mActivity, "", "Loading...");
		}
	
		@Override
		public void run() {
			// TODO Auto-generated method stub
			final JSONObject songsData = (JSONObject) AlbumDetailService.getAlbum(mAlbumId);
			mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					mSpinner.dismiss();
					if (songsData != null) {
						try {
							mData = songsData.getJSONObject(AlbumDetailService.data);
							mSongs = mData.getJSONArray(AlbumDetailService.songs);
							mSongsAdapter.notifyDataSetChanged();
							flagPlayedSongs = new boolean[mSongs.length()];
							setLayoutWithData();
						} catch (Exception e) {
							// TODO: handle exception
							e.printStackTrace();
						}
					} else {
						Utils.checkInternetAndToast(mActivity);
					}
				}
			});
		}
	}

	class SongsAdapter extends BaseAdapter {
		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			if (mSongs == null) return 0;
			return mSongs.length();
		}
	
		@Override
		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return position;
		}
	
		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}
	
		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			// TODO Auto-generated method stub
			ViewHolder holder;
			if (convertView == null) {
				convertView = LayoutInflater.from(mActivity).inflate(R.layout.row_song, null);
				holder = new ViewHolder(convertView);
				convertView.setTag(holder);
			} else {
				holder = (ViewHolder) convertView.getTag();
			}
			
			try {
				JSONObject song = mSongs.getJSONObject(position);
				holder.tvSongName.setText((position + 1) + "." + song.getString(AlbumDetailService.song_name));
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			if (position == currentSongPosition) convertView.setBackgroundResource(R.drawable.bg_song_playing);
			else convertView.setBackgroundResource(R.drawable.bg_song);
			
			return convertView;
		}
		
	}

	class ViewHolder {
		TextView tvSongName;
		public ViewHolder(View parent) {
			// TODO Auto-generated constructor stub
			tvSongName = (TextView) parent.findViewById(R.id.tv_song_name);
		}
	}

}
