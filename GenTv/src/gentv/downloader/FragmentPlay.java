package gentv.downloader;

import linetv.vietnam.adapter.ChannelsAdapter;
import linetv.vietnam.database.DatabaseDAO;
import linetv.vietnam.dataservices.ListChannelsServices;
import linetv.vietnam.dataservices.RegisterVtvAccountService;
import linetv.vietnam.dataservices.ServiceHelper;
import linetv.vietnam.http.HTTPServer;
import linetv.vietnam.utils.Logger;
import linetv.vietnam.utils.MCrypt;
import linetv.vietnam.utils.NameSpace;
import linetv.vietnam.utils.Utils;

import io.vov.vitamio.MediaPlayer;
import io.vov.vitamio.MediaPlayer.OnBufferingUpdateListener;
import io.vov.vitamio.MediaPlayer.OnCompletionListener;
import io.vov.vitamio.MediaPlayer.OnErrorListener;
import io.vov.vitamio.MediaPlayer.OnPreparedListener;
import io.vov.vitamio.widget.MediaController;
import io.vov.vitamio.widget.MediaController.MediaControlListener;
import io.vov.vitamio.widget.VideoView;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.media.AudioManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.LiveFolders;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.support.v4.app.Fragment;
import android.view.Display;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;

import com.google.analytics.tracking.android.EasyTracker;
import com.slidingmenu.lib.SlidingMenu;
import com.startapp.android.publish.StartAppAd;

public class FragmentPlay extends Fragment implements MediaControlListener {
	Activity mActivity;
	View mainLayout;
	
	ListView mListView;
	private RelativeLayout mLayoutVideoPlayer;
	ChannelsAdapter mAdapter;
	
	JSONArray mListChannelsData;
	
	private DatabaseDAO mDatabaseDAO;
	private int mCurrentPosition;
	private int mCurrentStreamPosition;
	MCrypt mMCrypt = new MCrypt(NameSpace.IV, NameSpace.SECRET);
	
	/** Video view **/
	private String mTitle;
	private String mPath;
	private VideoView mVideoView;
	private View mVolumeBrightnessLayout;
	private ImageView mOperationBg;
	private ImageView mOperationPercent;
	private AudioManager mAudioManager;
	private TextView mTitleChannel;
	private TextView mServerError;
	private ProgressBar mProgressBarLoading;
	
	private int mMaxVolume;
	private int mVolume = -1;
	private float mBrightness = -1f;
	private int mLayout = VideoView.VIDEO_LAYOUT_ZOOM;
	private GestureDetector mGestureDetector;
	private MediaController mMediaController;
	private int mHeight = 0;
	
	private boolean loadingLeekData = false;
	public  boolean lock = false;
	
	SlidingMenu mSlidingMenu;
	OnPlayNewChannel mOnPlayNewChannel;
	
	StartAppAd startAppAd;
	int counter = 0;
	
	public static FragmentPlay getIntance(SlidingMenu slidingMenu, OnPlayNewChannel onPlayNewChannel) {
		FragmentPlay fragmentPlay = new FragmentPlay();
		fragmentPlay.setData(slidingMenu, onPlayNewChannel);
		return fragmentPlay;
	}
	
	public void setData(SlidingMenu slidingMenu, OnPlayNewChannel onPlayNewChannel) {
		mSlidingMenu = slidingMenu;
		mOnPlayNewChannel = onPlayNewChannel;
	}
	
	@Override
	public void onAttach(Activity activity) {
		// TODO Auto-generated method stub
		super.onAttach(activity);
		mActivity = activity;
		startAppAd = new StartAppAd(activity);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mainLayout = inflater.inflate(R.layout.fragment_play, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		initUI();
		super.onViewCreated(view, savedInstanceState);
	}
	
	public void initUI() {
		mDatabaseDAO = new DatabaseDAO(mActivity);
		mListView = (ListView) mainLayout.findViewById(R.id.lv_channels_small);
		mAdapter = new ChannelsAdapter(mActivity);
		mAdapter.isSmallList = true;
		mListView.setAdapter(mAdapter);	
		mListView.setOnItemClickListener(mOnPlayChannel);
		mLayoutVideoPlayer = (RelativeLayout) mainLayout.findViewById(R.id.layout_video);
		
		mVideoView = (VideoView)  mainLayout.findViewById(R.id.surface_view);
		mVideoView.setVisibility(View.VISIBLE);
		mVolumeBrightnessLayout = mainLayout.findViewById(R.id.operation_volume_brightness);
		mOperationBg = (ImageView) mainLayout.findViewById(R.id.operation_bg);
		mOperationPercent = (ImageView) mainLayout.findViewById(R.id.operation_percent);
		mTitleChannel = (TextView) mainLayout.findViewById(R.id.mediacontroller_file_name_other);
		mServerError = (TextView) mainLayout.findViewById(R.id.operation_errortext);
		mProgressBarLoading = (ProgressBar) mainLayout.findViewById(R.id.operation_loading);
		
		mAudioManager = (AudioManager) getActivity().getSystemService(Context.AUDIO_SERVICE);
		mMaxVolume = mAudioManager.getStreamMaxVolume(AudioManager.STREAM_MUSIC);
		
		mVideoView.setOnPreparedListener(mOnPreparedListener);
		mVideoView.setOnErrorListener(mOnErrorListener);
		mVideoView.setOnBufferingUpdateListener(mOnBufferingUpdateListener);
		
		mMediaController = (MediaController) mainLayout.findViewById(R.id.media_controller_custom);// new MediaController(this);
		mMediaController.setIsPlayLiveStream(true);
		mMediaController.setFileName(mTitle);
		mMediaController.setChooseServerListener(this);
		
		mVideoView.setMediaController(mMediaController);
		
		mGestureDetector = new GestureDetector(getActivity(), new MyGestureListener());
	}
	
	/**
	 * 
	 * @param state
	 * 1: hiden text and progress
	 * 0: show progress
	 * -1: hiden all text and surface, show text
	 */
	private void updateLayoutListener(int state) {
		switch (state) {
		case -1:
			mServerError.setVisibility(View.VISIBLE);
			mVideoView.setVisibility(View.GONE);
			mProgressBarLoading.setVisibility(View.GONE);
			break;
		case 0:
			mServerError.setVisibility(View.GONE);
			mVideoView.setVisibility(View.VISIBLE);
			mProgressBarLoading.setVisibility(View.VISIBLE);
			break;
		case 1:
			counter++;
			if (counter %5 == 0) {
				if (startAppAd != null) {
					startAppAd.showAd();
					startAppAd.loadAd();
				}
			}
			
			mServerError.setVisibility(View.GONE);
			mVideoView.setVisibility(View.VISIBLE);
			mProgressBarLoading.setVisibility(View.GONE);
			break;
			
		default:
			break;
		}
	}
	
	public void startPlayStream(String streamUrl, String channelName) {
		if(streamUrl.trim().equals(""))
			return;
		try {
//			if (mPath.startsWith("http:"))
				updateLayoutListener(0);
				mPath = streamUrl;
				mTitle = channelName;
//				mMediaController.setFileName(channelName);
				mTitleChannel.setText(channelName);
				mVideoView.setVideoURI(Uri.parse(streamUrl));
//			else
//				mVideoView.setVideoPath(mPath);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public void onPause() {
		super.onPause();
		if (mVideoView != null) {
			mVideoView.pause();
		}
	}

	@Override
	public void onResume() {
		super.onResume();
		try {
			if (mVideoView != null) {
				mVideoView.resume();
			}
			
			if (startAppAd != null) {
				startAppAd.onResume();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		if (mVideoView != null) {
			mVideoView.stopPlayback();
		}
		
		if (mDatabaseDAO != null) {
			mDatabaseDAO.close();	
		}
	}
	
	protected GestureDetector getGestureDetector() {
		return this.mGestureDetector;
	}
	/*
	 * This function called from MainActivity OnPlayListener
	 */
	public void playChannel(JSONArray listChannelsData, int position) {
		mListChannelsData = listChannelsData;
		mAdapter.setData(listChannelsData);
		mAdapter.notifyDataSetChanged();
//		mListView.smoothScrollToPosition(position);
		mListView.setSelection(position);
		playChannel(position, 0);
		
		mOnPlayNewChannel.onPlayNewChannel();
	}
	
	OnItemClickListener mOnPlayChannel = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			playChannel(position, 0);
		}
	};
	
	/* Interface between MainActivity and FragmentPlay here */
	/* Interface between MainActivity and FragmentPlay here */
	/* Interface between MainActivity and FragmentPlay here */
	
	public void onClickLike() {
		try {
			JSONObject mChannelData = mListChannelsData.getJSONObject(mCurrentPosition);
			String channelId = mChannelData.getString(ListChannelsServices.id);
			String channelName = mChannelData.getString(ListChannelsServices.name);
			if (mDatabaseDAO.checkFavouriteChannelExist(channelId)) {
				mDatabaseDAO.deleteFavouriteChannel(channelId);
				((ImageView)mActivity.findViewById(R.id.img_like)).setImageResource(R.drawable.ic_like);
				Utils.toast(mActivity, getString(R.string.removed_from_favourite_channel));
			} else {
				mDatabaseDAO.insertFavouriteChannel(channelId, "", mChannelData.toString());
				((ImageView)mActivity.findViewById(R.id.img_like)).setImageResource(R.drawable.ic_like_yes);
				Utils.toast(mActivity, getString(R.string.added_to_favourite_channel));
				
				// Google Analytics
				String action = channelName;
				EasyTracker.getTracker().trackEvent(NameSpace.GA_CATEGORY_MOST_LIKED_CHANNELS, action, null, 1L);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void onClickFull() {
		relayoutLandscape();
	}
	
	/**
	 * Stop playing when return main screen
	 */
	public void onReturnMainScreen() {
		if (mVideoView != null) {
			mVideoView.stopPlayback();
			mVideoView.setVisibility(View.GONE);
		}
	}
	
	public void hideActionBar() {
		mActivity.findViewById(R.id.mainTop).setVisibility(View.GONE);
	}
	
	public void showActionBar() {
		mActivity.findViewById(R.id.mainTop).setVisibility(View.VISIBLE);
	}
	
	/* Code for ViewdeoView here */
	/* Code for ViewdeoView here */
	/* Code for ViewdeoView here */
	
	public void showSelectServerDialog() {
		final Dialog dialog = new Dialog(mActivity);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.getWindow().getAttributes().windowAnimations = R.style.DialogAnimationPopUp;
		dialog.setContentView(R.layout.dialog_select_server);
		dialog.setCanceledOnTouchOutside(true);
		
		try {
			JSONObject currentChannelData = mListChannelsData.getJSONObject(mCurrentPosition);
			JSONArray streamData = currentChannelData.getJSONArray(ListChannelsServices.stream);
			
			RadioGroup rgSelectServer = (RadioGroup) dialog.findViewById(R.id.rg_select_server);
			for (int i = 0; i < streamData.length(); i++) {
				RadioButton rbServer = new RadioButton(mActivity);
				rgSelectServer.addView(rbServer);
				
				if (i == mCurrentStreamPosition) {
					rbServer.setChecked(true);
				}
				
				rbServer.setLayoutParams(new RadioGroup.LayoutParams(RadioGroup.LayoutParams.MATCH_PARENT, RadioGroup.LayoutParams.WRAP_CONTENT));
				rbServer.setText(getString(R.string.server) + " " + (i+1));
				rbServer.setTag(R.id.tag_position, i);
			}
			
			rgSelectServer.setOnCheckedChangeListener(new OnCheckedChangeListener() {
				@Override
				public void onCheckedChanged(RadioGroup group, int checkedId) {
					// TODO Auto-generated method stub
					int streamPosition = Integer.parseInt(group.findViewById(checkedId).getTag(R.id.tag_position).toString());
					playChannel(mCurrentPosition, streamPosition);
					dialog.dismiss();
				}
			});
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		dialog.show();
	}
	
	public void playChannel(int position, int streamPosition) {
		if(loadingLeekData && position == mCurrentPosition) {
			loadingLeekData = false;
			Toast.makeText(mActivity, getString(R.string.loading_please_wait), Toast.LENGTH_SHORT).show();
			return ;
		}
		
		// unlock when play a new stream
		mMediaController.updateLockControl(false);
		
		if (mVideoView != null) {
			mVideoView.setVisibility(View.VISIBLE);
			mVideoView.pause();
		}
		
		mCurrentPosition = position;
		mCurrentStreamPosition = streamPosition;
		try {		
	    	JSONObject channelData = mListChannelsData.optJSONObject(position);
	    	
	    	final String channelName = channelData.optString(ListChannelsServices.name, "");
	    	String channelId = channelData.getString(ListChannelsServices.id);
	    	
	    	TextView tvChannelName = (TextView) mActivity.findViewById(R.id.tv_channel);
	    	tvChannelName.setText(channelName);
	    	
	    	// Goonge Analytics
	    	String action = channelName;
	    	EasyTracker.getTracker().trackEvent(NameSpace.GA_CATEGORY_MOST_VIEWED_CHANNELS, action, null, 1L);
	    	
	    	if (mDatabaseDAO.checkFavouriteChannelExist(channelId)) {
	    		((ImageView)mActivity.findViewById(R.id.img_like)).setImageResource(R.drawable.ic_like_yes);
	    	} else {
	    		((ImageView)mActivity.findViewById(R.id.img_like)).setImageResource(R.drawable.ic_like);
	    	}
			
	    	String linkHex = channelData.getJSONArray(ListChannelsServices.stream).getJSONObject(streamPosition).getString(ListChannelsServices.link);
	    	String linkType = channelData.getJSONArray(ListChannelsServices.stream).getJSONObject(streamPosition).getString(ListChannelsServices.type);
	    	
	    	// type = 2 -> playing film -> enable seekbar
	    	if (linkType.equals("2")) {
	    		mMediaController.setIsPlayLiveStream(false);
	    	} else {
	    		mMediaController.setIsPlayLiveStream(true);
	    	}
	    	
	    	// type = 1 -> playing static stream link
	    	// type = 0 -> playing dynamic stream link
	    	if (linkType.equals("1") || linkType.equals("2")) {
	    		String link = mMCrypt.decryptFromHexString(linkHex);
	    		startPlayStream(link, channelName);	
	    	} else if (linkType.equals("0")) {
	    		final String specialChannelId = mMCrypt.decryptFromHexString(linkHex);
	    		new GetStreamVTV(specialChannelId, channelName).execute("");
	    	}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * Get stream cua vtv
	 */
	public class GetStreamVTV extends AsyncTask<String, String, String> {
		String channelname;
		String channelId;
		protected GetStreamVTV(String channelId, String channelName) {
			this.channelId = channelId;
			this.channelname = channelName;
		}
		@Override
		protected void onPreExecute() {
			loadingLeekData = true;
			super.onPreExecute();
		}
		@Override
		protected String doInBackground(String... arg0) {
			String linkStream = "";
			try {
				String[] dataUser = Utils.getDataFromSharePref(getActivity());
				linkStream = getLinkStream(channelId, dataUser[0], dataUser[1], dataUser[2]);
				ServiceHelper.http(NameSpace.API_GETSTREAM_VTV + channelId + "key=genpro");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			return linkStream;
		}
		
		@Override
		protected void onPostExecute(String result) {
			super.onPostExecute(result);
			if (loadingLeekData) {
				startPlayStream(result, channelname);
				loadingLeekData = false;				
			}
		}
	}
	
	public String getLinkStream(String channel, String username, String password, String session) throws Exception {
		if(username.equals("") || session.equals(""))
			return "";
		
		final String usernameFinal = username;
		
		username = mMCrypt.decryptFromHexString(username);
		password = mMCrypt.decryptFromHexString(password);
		session = mMCrypt.decryptFromHexString(session);
		HTTPServer mHttpServer = new HTTPServer();
		//Lay link stream
		String res = mHttpServer.getResponse(String.format(Utils.URL_GETSTREAM, channel, username, session), false);
		//Kiem tra co sai session?
		if(Utils.stringBetweenFirst(res, "<error_no>", "</error_no>").equals("0")) {
			String stream = Utils.stringBetweenFirst(res, "<stream", "</stream>");
			String link = Utils.stringBetweenFirst(stream, "<url><![CDATA[", "]]></url>");
			return link;
		} else { //Neu sai login lai lay session -> lay lai link
			res = mHttpServer.getResponse(String.format(Utils.URL_LOGIN, username, password),  false);
			if(Utils.stringBetweenFirst(res, "<error_code>", "</error_code>").equals("0")) {
				session = Utils.stringBetweenFirst(res, "<session>", "</session>");
				res = mHttpServer.getResponse(String.format(Utils.URL_GETSTREAM, channel, username, session), false);
				//Kiem tra co sai session?
				if(Utils.stringBetweenFirst(res, "<error_no>", "</error_no>").equals("0")) {
					String stream = Utils.stringBetweenFirst(res, "<stream", "</stream>");
					String link = Utils.stringBetweenFirst(stream, "<url><![CDATA[", "]]></url>");
					
					SharedPreferences pref = PreferenceManager.getDefaultSharedPreferences(getActivity());
					Editor edit = pref.edit();
					edit.putString("[GENS]", mMCrypt.encryptToHexString(session));
					edit.commit();
					
					return link;
				}
			} else { //Dang nhap that bai -> doi api hoac user pass sai -> khoi tao lai dich vu
//				Intent intent = new Intent(getActivity(), ServiceBackground.class);
//				intent.putExtra("username", username + Utils.RandomAlphaNumericString(2, 1));
//				getActivity().startService(intent);
				
				new Thread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						RegisterVtvAccountService.register(mActivity, usernameFinal);
					}
				}).start();
			}
		}
		return "";
	}
	
	/**********************************/
	
	protected void endGesture() {
		mVolume = -1;
		mBrightness = -1f;

		mDismissHandler.removeMessages(0);
		mDismissHandler.sendEmptyMessageDelayed(0, 500);
	}
	
	private class MyGestureListener extends SimpleOnGestureListener {
		private boolean downInAreaVideoView = false;
		@Override
		public boolean onSingleTapUp(MotionEvent e) {
			if(downInAreaVideoView) 
				mVideoView.toggleControl();
			return super.onSingleTapUp(e);
		}
		
		@Override
		public boolean onDoubleTap(MotionEvent e) {
			if(downInAreaVideoView)  
				taskOnDoubleTap();
			return true;
		}
		
		@Override
		public boolean onDown(MotionEvent e) {
			Rect mRect = new Rect();
			mLayoutVideoPlayer.getHitRect(mRect);
			if(mRect.contains((int) e.getX(), (int) e.getY())) {
				downInAreaVideoView = true;
			} else {
				downInAreaVideoView = false;
			}
			return super.onDown(e);
		}
		
		@Override
		public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
			if(downInAreaVideoView) 
				taskSlide(e1, e2);
			return super.onScroll(e1, e2, distanceX, distanceY);
		}
		
	}
	
	public void taskOnDoubleTap() {
		if (mLayout == VideoView.VIDEO_LAYOUT_ZOOM)
			mLayout = VideoView.VIDEO_LAYOUT_ORIGIN;
		else
			mLayout++;
		if (mVideoView != null)
			mVideoView.setVideoLayout(mLayout, 0);
	}
	
	public void taskSlide(MotionEvent e1, MotionEvent e2) {
		if(e1 == null || e2 == null) {
			return ;
		}
		float mOldX = e1.getX(), mOldY = e1.getY();
		int y = (int) e2.getRawY();
		Display disp = getActivity().getWindowManager().getDefaultDisplay();
		int windowWidth = disp.getWidth();
		int windowHeight = disp.getHeight();

		if (mOldX > windowWidth * 4.0 / 5)//
			onVolumeSlide((mOldY - y) / windowHeight);
		else if (mOldX < windowWidth / 5.0)//
			onBrightnessSlide((mOldY - y) / windowHeight);
	}
	
	private Handler mDismissHandler = new Handler() {
		@Override
		public void handleMessage(Message msg) {
			mVolumeBrightnessLayout.setVisibility(View.GONE);
		}
	};

	/**
	 * 
	 * @param percent
	 */
	private void onVolumeSlide(float percent) {
		if (mVolume == -1) {
			mVolume = mAudioManager.getStreamVolume(AudioManager.STREAM_MUSIC);
			if (mVolume < 0)
				mVolume = 0;

			mOperationBg.setImageResource(R.drawable.video_volumn_bg);
			mVolumeBrightnessLayout.setVisibility(View.VISIBLE);
		}

		int index = (int) (percent * mMaxVolume) + mVolume;
		if (index > mMaxVolume)
			index = mMaxVolume;
		else if (index < 0)
			index = 0;

		mAudioManager.setStreamVolume(AudioManager.STREAM_MUSIC, index, 0);

		ViewGroup.LayoutParams lp = mOperationPercent.getLayoutParams();
		lp.width = mainLayout.findViewById(R.id.operation_full).getLayoutParams().width * index / mMaxVolume;
		mOperationPercent.setLayoutParams(lp);
	}

	/**
	 * 
	 * @param percent
	 */
	private void onBrightnessSlide(float percent) {
		if (mBrightness < 0) {
			mBrightness = getActivity().getWindow().getAttributes().screenBrightness;
			if (mBrightness <= 0.00f)
				mBrightness = 0.50f;
			if (mBrightness < 0.01f)
				mBrightness = 0.01f;

			mOperationBg.setImageResource(R.drawable.video_brightness_bg);
			mVolumeBrightnessLayout.setVisibility(View.VISIBLE);
		}
		WindowManager.LayoutParams lpa = getActivity().getWindow().getAttributes();
		lpa.screenBrightness = mBrightness + percent;
		if (lpa.screenBrightness > 1.0f)
			lpa.screenBrightness = 1.0f;
		else if (lpa.screenBrightness < 0.01f)
			lpa.screenBrightness = 0.01f;
		getActivity().getWindow().setAttributes(lpa);

		ViewGroup.LayoutParams lp = mOperationPercent.getLayoutParams();
		lp.width = (int) (mainLayout.findViewById(R.id.operation_full).getLayoutParams().width * lpa.screenBrightness);
		mOperationPercent.setLayoutParams(lp);
	}
	
	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		int orientation = newConfig.orientation;
		if (orientation == Configuration.ORIENTATION_LANDSCAPE) {
			relayoutLandscape();
			mActivity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
			mSlidingMenu.setBehindWidth((int)(250 * getResources().getDisplayMetrics().density));
		} else {
			mActivity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
			relayoutPortrait();
			mSlidingMenu.setBehindWidth((int)(250 * getResources().getDisplayMetrics().density));
		}
		if (mVideoView != null)
			mVideoView.setVideoLayout(mVideoView.getVideoLayout(), 0);
		
		// refresh ads
		mOnPlayNewChannel.onPlayNewChannel();
		
		super.onConfigurationChanged(newConfig);
	}
	
	/**
	 * 2 function relayout
	 */
	public void relayoutLandscape() {
		if(mHeight == 0)
			mHeight = (mainLayout.getWidth() > mainLayout.getHeight()) ? mainLayout.getWidth() : mainLayout.getHeight();
		hideActionBar();
		mListView.setVisibility(View.GONE);
		LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
		mLayoutVideoPlayer.setLayoutParams(layoutParams);
	}
	public void relayoutPortrait() {
		if(mHeight == 0) {
			mHeight = (mainLayout.getWidth() > mainLayout.getHeight()) ? mainLayout.getWidth() : mainLayout.getHeight();
//			mHeight = mainLayout.getHeight();
			
		}
		showActionBar();
		mListView.setVisibility(View.VISIBLE);
		LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, mHeight/2);
//		mLayoutVideoPlayer.setLayoutParams(LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT, 10f);
		mLayoutVideoPlayer.setLayoutParams(layoutParams);
	}

	@Override
	public void startChooseServer() {
		showSelectServerDialog();
	}
	
	@Override
	public void onLock(boolean lock) {
		// TODO Auto-generated method stub
		this.lock = lock;
	}
	
	OnPreparedListener mOnPreparedListener = new OnPreparedListener() {
		@Override
		public void onPrepared(MediaPlayer arg0) {
			// TODO Auto-generated method stub
			updateLayoutListener(1);	
		}
	};
	
	OnErrorListener mOnErrorListener = new OnErrorListener() {
		@Override
		public boolean onError(MediaPlayer arg0, int arg1, int arg2) {
			// TODO Auto-generated method stub
			try {
				JSONObject channelData = mListChannelsData.getJSONObject(mCurrentPosition);
				if (mCurrentStreamPosition + 1 < channelData.getJSONArray(ListChannelsServices.stream).length()) {
					mCurrentStreamPosition++;
					playChannel(mCurrentPosition, mCurrentStreamPosition);
				} else {
					updateLayoutListener(-1);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return true;			
		}
	};
	
	OnBufferingUpdateListener mOnBufferingUpdateListener = new OnBufferingUpdateListener() {
		@Override
		public void onBufferingUpdate(MediaPlayer arg0, int percent) {
			// TODO Auto-generated method stub
			((TextView) mainLayout.findViewById(R.id.btn_buffering)).setText("Buffering " + percent + "%");
		}
	};
	
	interface OnPlayNewChannel {
		public void onPlayNewChannel();
	}
	
	
}
