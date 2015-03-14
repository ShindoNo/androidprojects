package com.idroid.rhythm.catcher;

import java.io.File;
import java.io.FileInputStream;
import java.util.Random;

import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.Session.StatusCallback;
import com.facebook.UiLifecycleHelper;
import com.facebook.widget.FacebookDialog;
import com.facebook.widget.WebDialog;
import com.facebook.widget.WebDialog.OnCompleteListener;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.idroid.lib.support.MyLog;
import com.idroid.lib.support.SupportTools;

public class MainActivity extends Activity {
	
	String ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	String textGuess;
	String textInput;
	
	TextView[] cellGuess;
	TextView[] cellInput;
	SemiCircleProgressBarView mSongProgress;
	RotateAnimation mRotateAnimation;
	AlphaAnimation mAlphaAnimation;
	
	// MEDIA PLAYER
	MediaPlayer mSoundPlayer;
	MediaPlayer mSongPlayer;
	
	// DATA
	JSONArray mListSongs = null;
	JSONObject mCurrentSong;
	
	String CURRENT_CD_ID;
	int playedSongCounter = 0;
	
	Dialog mDialogResultAndBonus;
	
	boolean pendingPlayWhenResume = false;
	
	// FACEBOOK
	UiLifecycleHelper uiHelper;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		
		// FACEBOOK
		uiHelper = new UiLifecycleHelper(this, null);
		uiHelper.onCreate(savedInstanceState);
		
//		StatusCallback statusCallback = new StatusCallback() {
//			@Override
//			public void call(Session session, SessionState state, Exception exception) {
//				// TODO Auto-generated method stub
//				MyLog.log("Session=" + session.getActiveSession());
//				MyLog.log("SessionState=" + state.isOpened());
//			}
//		};
		
		setContentView(R.layout.activity_main);
		
		CURRENT_CD_ID = getIntent().getExtras().getString("cd_id");
		
		initUI();
		initData();
		initMediaPlayer();
		initGame();
		showAdmob();
		
		play(false);
	}
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		uiHelper.onPause();
		
		if (mSongPlayer.isPlaying()) {
			pendingPlayWhenResume = true;
			mSongPlayer.pause();	
		} else {
			pendingPlayWhenResume = false;
		}
	}
	
	public void showAdmob() {
		if (SupportTools.getBoolean(getApplicationContext(), "enable_admob")) {
			AdView adView = new AdView(this);
			adView.setLayoutParams(new FrameLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT));
			adView.setAdUnitId(SupportTools.getAdmobId(this));
			adView.setAdSize(AdSize.BANNER);
			
			AdRequest adRequest = new AdRequest.Builder().build();
			adView.loadAd(adRequest);
			
			((LinearLayout)findViewById(R.id.admob_container)).addView(adView);
			
			adView.setAdListener(new AdListener() {
				@Override
				public void onAdLoaded() {
					// TODO Auto-generated method stub
					super.onAdLoaded();
					MyLog.log("onAdLoaded");
					mSongProgress.invalidate();
				}
			});
		} else {
			findViewById(R.id.admob_container).setVisibility(View.GONE);
		}
	}
	
	
	/** ------------------ INIT UI&DATA HERE ------------------ */
	/** ------------------ INIT UI&DATA HERE ------------------ */
	/** ------------------ INIT UI&DATA HERE ------------------ */
	
	public void initUI() {
		mSongProgress = (SemiCircleProgressBarView) findViewById(R.id.progress_song);
		
		findViewById(R.id.btn_play).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				play(true);
			}
		});
		
		// rotate icon center
		mRotateAnimation = new RotateAnimation(0, 900, Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF, 0.5f);
		mAlphaAnimation = new AlphaAnimation(0.0f, 1.0f);
		mAlphaAnimation.setDuration(500);
		mAlphaAnimation.setAnimationListener(new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) {}
			
			@Override
			public void onAnimationRepeat(Animation animation) {}
			
			@Override
			public void onAnimationEnd(Animation animation) {
				findViewById(R.id.btn_play).setVisibility(View.VISIBLE);
			}
		});
		
		// init help button
		((TextView)findViewById(R.id.tv_bonus_skip)).setText(SupportTools.getInt(getApplicationContext(), "bonus_skip") + "");
		((TextView)findViewById(R.id.tv_bonus_open)).setText(SupportTools.getInt(getApplicationContext(), "bonus_open") + "");
		((TextView)findViewById(R.id.tv_bonus_delete)).setText(SupportTools.getInt(getApplicationContext(), "bonus_delete") + "");
		
		findViewById(R.id.btn_skip).setOnClickListener(onClickSkipButton);
		findViewById(R.id.btn_open).setOnClickListener(onClickOpenButton);
		findViewById(R.id.btn_delete).setOnClickListener(onClickDeleteButton);
		
		findViewById(R.id.btn_facebook).setOnClickListener(onClickBtnFacebook);
		
		findViewById(R.id.btn_rate).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				showRateAndBonus();
			}
		});
		
		findViewById(R.id.btn_replay).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				showReplayConfirm();
			}
		});
		
		// set image for cd
		for (int i = 0; i < WelcomeActivity.CD_ID.length; i++) {
			if (WelcomeActivity.CD_ID[i].equals(CURRENT_CD_ID)) {
				((ImageView)findViewById(R.id.ic_center)).setImageResource(WelcomeActivity.CD_ICON[i]);
				break;
			}
		}
		
	}
	
	public void initMediaPlayer() {
		mSoundPlayer = new MediaPlayer();
		mSongPlayer = new MediaPlayer();
	}
	
	public void initData() {
		try {
			String data = IOUtils.toString(new FileInputStream(new File(WelcomeActivity.SDCARD_CONTAINER + "/" + CURRENT_CD_ID + "/data.txt")));
			data = new StringBuilder(data).reverse().toString();
			data = new String(Base64.decode(data, Base64.DEFAULT));
			mListSongs = new JSONArray(data);
			
			int pickSong = Tools.pickSongNumberNotPlayYet(getApplicationContext(), mListSongs);
			if (pickSong == -1) {
				showFinishedCDOptions();
			} else {
				mCurrentSong = mListSongs.getJSONObject(Tools.pickSongNumberNotPlayYet(getApplicationContext(), mListSongs));	
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	/** ------------------ INIT CELLS HERE ------------------ */
	/** ------------------ INIT CELLS HERE ------------------ */
	/** ------------------ INIT CELLS HERE ------------------ */
	public void initGame() {
		// find view
		cellGuess = new TextView[14];
		for (int i = 0; i < cellGuess.length; i++) {
			cellGuess[i] = (TextView) findViewById(getResources().getIdentifier("cell_guess_" + i, "id", getPackageName()));
		}
		
		for (int i = 0; i < cellGuess.length; i++) {
			cellGuess[i].setOnClickListener(onClickCellGuessLisener);
		}
		
		cellInput = new TextView[14];
		for (int i = 0; i < cellGuess.length; i++) {
			cellInput[i] = (TextView) findViewById(getResources().getIdentifier("cell_input_" + i, "id", getPackageName()));
		}
		
		for (int i = 0; i < cellInput.length; i++) {
			cellInput[i].setOnClickListener(onClickCellInputListener);
		}
	}
	
	OnClickListener onClickCellInputListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (countCellGuess() == textGuess.length()) {
				checkCellGuessResult();
				return;
			}
			
			String cellText = ((TextView)v).getText().toString();
			v.setVisibility(View.INVISIBLE);
			int cellNumb = getEmptyCellGuess();
			cellGuess[cellNumb].setText(cellText);
			cellGuess[cellNumb].setTag(R.id.tag_cell_input, v);
			
			playSoundTap();
			
			// check if cell guess full
			if (countCellGuess() == textGuess.length()) {
				checkCellGuessResult();
			}
		}
	};
	
	OnClickListener onClickCellGuessLisener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (v.getTag(R.id.tag_cell_input) != null) {
				((TextView)v).setText("");
				((View)v.getTag(R.id.tag_cell_input)).setVisibility(View.VISIBLE);
				v.setTag(R.id.tag_cell_input, null);
				playSoundTap();
			}
		}
	};
	
	public void checkCellGuessResult() {
		String userTextGuess = "";
		for (int i = 0; i < textGuess.length(); i++) {
			userTextGuess += cellGuess[i].getText();
		}
		
		if (userTextGuess.equals(textGuess)) {
			playSoundRight();
			showResultAndBonus();
		} else {
			playSoundWrong();
		}
	}
	
	public int getEmptyCellGuess() {
		for (int i = 0; i < cellGuess.length; i++) {
			if (cellGuess[i].getTag(R.id.tag_cell_input) == null) {
				return i;
			}
		}
		return -1;
	}
	
	public int countCellGuess() {
		int k = 0;
		for (int i = 0; i < textGuess.length(); i++) {
			if (cellGuess[i].getTag(R.id.tag_cell_input) != null && !cellGuess[i].getText().toString().equals("")) {
				k++;
			}
		}
		return k;
	}
	
	public void showResultAndBonus() {
		savePlayedSong();
		
		if (mDialogResultAndBonus == null) {
			mDialogResultAndBonus = new Dialog(this, android.R.style.Theme_Black_NoTitleBar);
			mDialogResultAndBonus.requestWindowFeature(Window.FEATURE_NO_TITLE);
			mDialogResultAndBonus.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
			mDialogResultAndBonus.getWindow().getAttributes().windowAnimations = com.idroid.lib.support.R.style.ConfigDialogAnimation;
			mDialogResultAndBonus.setContentView(R.layout.dialog_result_and_bonus);
			mDialogResultAndBonus.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
			mDialogResultAndBonus.setCancelable(false);
			
			mDialogResultAndBonus.findViewById(R.id.btn_next_song).setOnClickListener(new OnClickListener() {
				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					mDialogResultAndBonus.dismiss();
					nextSong();
				}
			});
		}
		
		try {
			String songNameFull = mCurrentSong.getString("guess_value_full");
			((TextView)mDialogResultAndBonus.findViewById(R.id.tv_song_name_full)).setText(songNameFull);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		// calculate bonus
		playedSongCounter++;
		int bonusDelete = 0;
		int bonusOpen = 0;
		int bonusSkip = 0;
		if (playedSongCounter % 2 == 0) {
			bonusDelete = 1;
		}
		if (playedSongCounter % 3 == 0) {
			bonusOpen = 1;
		}
		if (playedSongCounter % 5 == 0) {
			bonusSkip = 1;
		}
		if (playedSongCounter % 10 == 0) {
			bonusDelete = 1;
			bonusOpen = 1;
			bonusSkip = 1;
			playBravo();
		}
		
		if (bonusSkip == 0) {
			mDialogResultAndBonus.findViewById(R.id.ic_bonus_skip).setVisibility(View.GONE);
			mDialogResultAndBonus.findViewById(R.id.tv_bonus_skip).setVisibility(View.GONE);
		} else {
			mDialogResultAndBonus.findViewById(R.id.ic_bonus_skip).setVisibility(View.VISIBLE);
			mDialogResultAndBonus.findViewById(R.id.tv_bonus_skip).setVisibility(View.VISIBLE);
			int currentBonus = SupportTools.getInt(getApplicationContext(), "bonus_skip") + bonusSkip;
			SupportTools.saveInt(getApplicationContext(), "bonus_skip", currentBonus);
			((TextView)findViewById(R.id.tv_bonus_skip)).setText(currentBonus + "");
		}
		
		if (bonusOpen == 0) {
			mDialogResultAndBonus.findViewById(R.id.ic_bonus_open).setVisibility(View.GONE);
			mDialogResultAndBonus.findViewById(R.id.tv_bonus_open).setVisibility(View.GONE);
		} else {
			mDialogResultAndBonus.findViewById(R.id.ic_bonus_open).setVisibility(View.VISIBLE);
			mDialogResultAndBonus.findViewById(R.id.tv_bonus_open).setVisibility(View.VISIBLE);
			int currentBonus = SupportTools.getInt(getApplicationContext(), "bonus_open") + bonusOpen;
			SupportTools.saveInt(getApplicationContext(), "bonus_open", currentBonus);
			((TextView)findViewById(R.id.tv_bonus_open)).setText(currentBonus + "");			
		}		
		
		if (bonusDelete == 0) {
			mDialogResultAndBonus.findViewById(R.id.ic_bonus_delete).setVisibility(View.GONE);
			mDialogResultAndBonus.findViewById(R.id.tv_bonus_delete).setVisibility(View.GONE);
		} else {
			mDialogResultAndBonus.findViewById(R.id.ic_bonus_delete).setVisibility(View.VISIBLE);
			mDialogResultAndBonus.findViewById(R.id.tv_bonus_delete).setVisibility(View.VISIBLE);
			int currentBonus = SupportTools.getInt(getApplicationContext(), "bonus_delete") + bonusDelete;
			SupportTools.saveInt(getApplicationContext(), "bonus_delete", currentBonus);
			((TextView)findViewById(R.id.tv_bonus_delete)).setText(currentBonus + "");
		}
		
		mDialogResultAndBonus.show();
	}
	
	public void savePlayedSong() {
		try {
			String songId = mCurrentSong.getString("song_id");
			SupportTools.saveBoolean(getApplicationContext(), songId, true);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	
	/** ------------------ RESET HERE ------------------ */
	/** ------------------ RESET HERE ------------------ */
	/** ------------------ RESET HERE ------------------ */
	public void resetCell() {
		resetCellGuess();
		resetCellInput();
	}
	
	// clear cell guess, show enough cell
	public void resetCellGuess() {
		for (int i = 0; i < textGuess.length(); i++) {
			cellGuess[i].setVisibility(View.VISIBLE);
			cellGuess[i].setText("");
			
		}
		for (int i = textGuess.length(); i < 14; i++) {
			cellGuess[i].setVisibility(View.GONE);
		}
		
		for (int i = 0; i < cellGuess.length; i++) {
			cellGuess[i].setEnabled(true);
			cellGuess[i].setTextColor(getResources().getColor(R.color.text_cell_guess));
			cellGuess[i].setTag(R.id.tag_cell_input, null);
		}
	}
	
	public void resetCellInput() {
		for (int i = 0; i < cellInput.length; i++) {
			cellInput[i].setVisibility(View.VISIBLE);
		}
		
		textInput = textGuess;
		// insert character
		Random random = new Random();
		while (textInput.length() < 14) {
			char c = ALPHABET.charAt(random.nextInt(ALPHABET.length()));
			if (!textGuess.contains(c+"")) {
				textInput += c;
			}
		}
		
		// mix up character
		boolean[] insertFlags = new boolean[textInput.length()];
		String tempString = "";
		while (!checkInsert(insertFlags)) {
			int index = random.nextInt(textInput.length());
			if (insertFlags[index] == false) {
				insertFlags[index] = true;
				tempString += textInput.charAt(index);	
			}
		}
		textInput = tempString;
		
		for (int i = 0; i < textInput.length(); i++) {
			cellInput[i].setText(textInput.charAt(i) +"");
		}
	}
	
	public boolean checkInsert(boolean[] insertFlags) {
		for (int i = 0; i < insertFlags.length; i++) {
			if (insertFlags[i] == false ) {
				return false;
			}
		}
		return true;
	}
	
	
	
	/** ------------------ MEDIA PLAYER HERE ------------------ */
	/** ------------------ MEDIA PLAYER HERE ------------------ */
	/** ------------------ MEDIA PLAYER HERE ------------------ */
	
	public void playSound(String soundPath) {
		try {
			mSoundPlayer.reset();
			AssetFileDescriptor afd = getAssets().openFd("sound/" + soundPath);
			mSoundPlayer.setDataSource(afd.getFileDescriptor(), afd.getStartOffset(), afd.getLength());			
			mSoundPlayer.prepare();
			mSoundPlayer.start();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void playSoundTap() {
		playSound("click.wav");
	}
	
	public void playSoundWrong() {
		playSound("wrong.wav");
	}
	
	public void playSoundRight() {
		playSound("right.mp3");
	}
	
	public void playSoundBonus() {
		playSound("bonus.mp3");
	}
	
	public void playBravo() {
		playSound("bravo.mp3");
	}
	

	
	
	/** ------------------ PLAY CONTROL HERE ------------------ */
	/** ------------------ PLAY CONTROL HERE ------------------ */
	/** ------------------ PLAY CONTROL HERE ------------------ */
	
	public void play(boolean isReplay) {
		// hide play button
		findViewById(R.id.btn_play).setVisibility(View.INVISIBLE);
		
		// playsong
		mSongPlayer.reset();
		try {
			// reset cell
			String guessValue = mCurrentSong.getString("guess_value");
			textGuess = guessValue.replace(" ", "").toUpperCase();
			
			String guessType = mCurrentSong.getString("guess_type");
			if (guessType.equals("song_name")) {
				((TextView) findViewById(R.id.tv_guess_type)).setText(getString(R.string.what_song));
				((TextView) findViewById(R.id.tv_guess_type)).setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_song, 0, 0, 0);;
			} else {
				((TextView) findViewById(R.id.tv_guess_type)).setText(getString(R.string.who_sing));
				((TextView) findViewById(R.id.tv_guess_type)).setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_singer, 0, 0, 0);;				
			}
			
			if (!isReplay) {
				resetCell();
			}
			
			String songId = mCurrentSong.getString("song_id");
			mSongPlayer.setDataSource(WelcomeActivity.SDCARD_CONTAINER + "/" + CURRENT_CD_ID + "/" + songId);
			mSongPlayer.prepare();
			
			new Handler().postDelayed(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					mSongPlayer.start();
					updateSongProgress();
				}
			}, 500);
			
			// rotate icon center
			mRotateAnimation.setDuration(mSongPlayer.getDuration() + 1000);
			findViewById(R.id.ic_center).startAnimation(mRotateAnimation);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void updateSongProgress() {
		float percent = mSongPlayer.getCurrentPosition() * 1.0f / mSongPlayer.getDuration() * 100;
		mSongProgress.setClipping(percent);
		
		if (percent > 99) {
			mSongProgress.setClipping(100);
			findViewById(R.id.btn_play).startAnimation(mAlphaAnimation);
			return;
		}
		
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				if (mSongPlayer.isPlaying()) {
					updateSongProgress();
				} else {
					mSongProgress.setClipping(100);
				}
			}
		}, 10);
	}
	
	public void nextSong() {
		int nextSong = Tools.pickSongNumberNotPlayYet(getApplicationContext(), mListSongs);
		if (nextSong == -1) {
			showFinishedCDOptions();
			return;
		}
		
		try {
			mCurrentSong = mListSongs.getJSONObject(nextSong);
			play(false);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void showFinishedCDOptions() {
		playBravo();
		
		final Dialog dialog = new Dialog(this, android.R.style.Theme_Black_NoTitleBar);
		dialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
		dialog.setContentView(R.layout.dialog_alert);
		dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
		dialog.getWindow().getAttributes().windowAnimations = com.idroid.lib.support.R.style.ConfigDialogAnimation;
		((TextView)dialog.findViewById(R.id.tv_alert)).setText(getString(R.string.played_all_option_message));
		((TextView)dialog.findViewById(R.id.btn_positive)).setText(getString(R.string.play_next_cd));
		((TextView)dialog.findViewById(R.id.btn_negative)).setText(getString(R.string.replay));
		
		dialog.findViewById(R.id.btn_positive).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
				Intent intent = new Intent(MainActivity.this, WelcomeActivity.class);
				startActivity(intent);
				finish();
			}
		});
		
		dialog.findViewById(R.id.btn_negative).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
				Tools.replayCD(getApplicationContext(), mListSongs);
				playedSongCounter = 0;
				nextSong();				
			}
		});
		
		dialog.show();
	}
	
	public void showReplayConfirm() {
		final Dialog dialog = new Dialog(this, android.R.style.Theme_Black_NoTitleBar);
		dialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
		dialog.setContentView(R.layout.dialog_alert);
		dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
		dialog.getWindow().getAttributes().windowAnimations = com.idroid.lib.support.R.style.ConfigDialogAnimation;
		((TextView)dialog.findViewById(R.id.tv_alert)).setText(getString(R.string.replay_confirm));
		((TextView)dialog.findViewById(R.id.btn_positive)).setText(getString(R.string.replay));
		((TextView)dialog.findViewById(R.id.btn_negative)).setText(getString(R.string.no));
		
		dialog.findViewById(R.id.btn_positive).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
				Tools.replayCD(getApplicationContext(), mListSongs);
				playedSongCounter = 0;
				nextSong();				
			}
		});
		
		dialog.findViewById(R.id.btn_negative).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		});
		
		dialog.show();		
	}
	
	
	
	/** ------------------ SUPPORT BUTTON HERE ------------------ */
	/** ------------------ SUPPORT BUTTON HERE ------------------ */
	/** ------------------ SUPPORT BUTTON HERE ------------------ */
	
	OnClickListener onClickSkipButton = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (SupportTools.getInt(getApplicationContext(), "bonus_skip") == 0) {
				showHelpOptions();
			} else {
				int currentBonus = SupportTools.getInt(getApplicationContext(), "bonus_skip") -1;
				SupportTools.saveInt(getApplicationContext(), "bonus_skip", currentBonus);
				((TextView)findViewById(R.id.tv_bonus_skip)).setText(currentBonus + "");
				try {
					String songId = mCurrentSong.getString("song_id");
					SupportTools.saveBoolean(getApplicationContext(), songId, true);
					
					playSoundRight();
					nextSong();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}
	};
	
	OnClickListener onClickOpenButton = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (SupportTools.getInt(getApplicationContext(), "bonus_open") == 0) {
				showHelpOptions();
			} else {
				if (countCellGuess() == textGuess.length()) {
					checkCellGuessResult();
					return;
				}
				
				int currentBonus = SupportTools.getInt(getApplicationContext(), "bonus_open") -1;
				SupportTools.saveInt(getApplicationContext(), "bonus_open", currentBonus);
				((TextView)findViewById(R.id.tv_bonus_open)).setText(currentBonus + "");
				
				for (int i = 0; i < textGuess.length(); i++) {
					if (cellGuess[i].getTag(R.id.tag_cell_input) == null) {
						String characterOpen = textGuess.charAt(i) + "";
						for (int k = 0; k < cellInput.length; k++) {
							if (cellInput[k].getText().toString().equals(characterOpen)) {
								cellGuess[i].setText(characterOpen);
								cellGuess[i].setTextColor(getResources().getColor(R.color.cell_input_bg));
								cellGuess[i].setEnabled(false);
								cellGuess[i].setTag(R.id.tag_cell_input, cellInput[k]);
								cellInput[k].setVisibility(View.INVISIBLE);
								break;
							}
						}
						
						if (countCellGuess() == textGuess.length()) {
							checkCellGuessResult();
						}
						
						break;
					}
				}
			}			
		}
	};
	
	OnClickListener onClickDeleteButton = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (SupportTools.getInt(getApplicationContext(), "bonus_delete") == 0) {
				showHelpOptions();
			} else {
				for (int i = 0; i < cellInput.length; i++) {
					if (!textGuess.contains(cellInput[i].getText().toString()) && (cellInput[i].getVisibility() == View.VISIBLE)) {
						int currentBonus = SupportTools.getInt(getApplicationContext(), "bonus_delete") - 1;
						SupportTools.saveInt(getApplicationContext(), "bonus_delete", currentBonus);
						((TextView)findViewById((R.id.tv_bonus_delete))).setText(currentBonus + "");
						cellInput[i].setVisibility(View.INVISIBLE);
						return;
					}
				}
				Toast.makeText(getApplicationContext(), getString(R.string.not_character), Toast.LENGTH_SHORT).show(); 
			}
			
		}
	};
	
	
	public void showHelpOptions() {
		final Dialog dialog = new Dialog(this, android.R.style.Theme_Black_NoTitleBar);
		dialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
		dialog.setContentView(R.layout.dialog_alert);
		dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
		dialog.getWindow().getAttributes().windowAnimations = com.idroid.lib.support.R.style.ConfigDialogAnimation;
		((TextView)dialog.findViewById(R.id.tv_alert)).setText(getString(R.string.suggest));
		((TextView)dialog.findViewById(R.id.btn_positive)).setText(getString(R.string.help_facebook));
		((TextView)dialog.findViewById(R.id.btn_negative)).setText(getString(R.string.help_others));
		
		dialog.findViewById(R.id.btn_positive).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
				onClickBtnFacebook.onClick(v);
			}
		});
		
		dialog.findViewById(R.id.btn_negative).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		});
		
		dialog.show();
	}
	
	
	// FACEBOOK
	
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
	    super.onActivityResult(requestCode, resultCode, data);

	    uiHelper.onActivityResult(requestCode, resultCode, data, new FacebookDialog.Callback() {
	        @Override
	        public void onError(FacebookDialog.PendingCall pendingCall, Exception error, Bundle data) {
	            Log.e("Activity", String.format("Error: %s", error.toString()));
	        }

	        @Override
	        public void onComplete(FacebookDialog.PendingCall pendingCall, Bundle data) {
	            Log.i("Activity", "Success!");
	        }
	    });
	}
	
	@Override
	protected void onResume() {
	    super.onResume();
	    uiHelper.onResume();
	    
	    if (pendingAddBonus) {
	    	pendingAddBonus = false;
	    	SupportTools.saveBoolean(getApplicationContext(), "rated", true);
	    	SupportTools.saveInt(getApplicationContext(), "bonus_skip", SupportTools.getInt(getApplicationContext(), "bonus_skip") + 3);
	    	((TextView)findViewById(R.id.tv_bonus_skip)).setText(SupportTools.getInt(getApplicationContext(), "bonus_skip") + "");
	    	SupportTools.saveInt(getApplicationContext(), "bonus_open", SupportTools.getInt(getApplicationContext(), "bonus_open") + 3);
	    	((TextView)findViewById(R.id.tv_bonus_open)).setText(SupportTools.getInt(getApplicationContext(), "bonus_open") + "");
	    	SupportTools.saveInt(getApplicationContext(), "bonus_delete", SupportTools.getInt(getApplicationContext(), "bonus_delete") + 3);
	    	((TextView)findViewById(R.id.tv_bonus_delete)).setText(SupportTools.getInt(getApplicationContext(), "bonus_delete") + "");
	    	playSoundRight();
	    }
	    
	    if (pendingPlayWhenResume) {
		    mSongPlayer.start();
		    updateSongProgress();	    	
	    }

	}

	@Override
	protected void onSaveInstanceState(Bundle outState) {
	    super.onSaveInstanceState(outState);
	    uiHelper.onSaveInstanceState(outState);
	}

	@Override
	public void onDestroy() {
	    super.onDestroy();
	    uiHelper.onDestroy();
	}	
	
	// OTHER FUNCTION
	
	boolean pendingAddBonus = false;
	
	public void showRateAndBonus() {
		final Dialog dialog = new Dialog(this, android.R.style.Theme_Black_NoTitleBar);
		dialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
		dialog.setContentView(R.layout.dialog_rate_and_bonus);
		dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
		dialog.getWindow().getAttributes().windowAnimations = com.idroid.lib.support.R.style.ConfigDialogAnimation;
		
		if (SupportTools.getBoolean(getApplicationContext(), "rated")) {
			dialog.findViewById(R.id.ll_bonus).setVisibility(View.GONE);
			((TextView)dialog.findViewById(R.id.tv_rate)).setText(getString(R.string.rate_app_2));
		} else {
			dialog.findViewById(R.id.ll_bonus).setVisibility(View.VISIBLE);
			((TextView)dialog.findViewById(R.id.tv_rate)).setText(getString(R.string.rate_app_1));			
		}
		
		dialog.findViewById(R.id.btn_rate).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
				
				if (!SupportTools.getBoolean(getApplicationContext(), "rated")) {
					pendingAddBonus = true;
				}
				
				Intent intent = new Intent(Intent.ACTION_VIEW);
				intent.setData(Uri.parse("market://details?id=" + getPackageName()));
				startActivity(intent);
			}
		});
		
		dialog.show();
	}
	
	
	OnClickListener onClickBtnFacebook = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			
			if (SupportTools.getBoolean(getApplicationContext(), "disable_guide") == false) {
				final Dialog dialog = new Dialog(MainActivity.this, android.R.style.Theme_Black_NoTitleBar);
				dialog.getWindow().requestFeature(Window.FEATURE_NO_TITLE);
				dialog.setContentView(R.layout.dialog_share_guide);
				
				dialog.findViewById(R.id.btn_positive).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						shareFacebook();
					}
				});
				
				dialog.findViewById(R.id.btn_negative).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						SupportTools.saveBoolean(getApplicationContext(), "disable_guide", true);
						shareFacebook();
					}
				});
				
				dialog.show();
			} else {
				shareFacebook();
			}
		}
	};
	
	@TargetApi(Build.VERSION_CODES.HONEYCOMB)
	public void shareFacebook() {
		// generate text for paste
		MyLog.log("canshare?=" + FacebookDialog.canPresentShareDialog(getApplicationContext(), FacebookDialog.ShareDialogFeature.SHARE_DIALOG));
		
		try {
			if (FacebookDialog.canPresentShareDialog(getApplicationContext(), FacebookDialog.ShareDialogFeature.SHARE_DIALOG)) {
				String songLink = mCurrentSong.getString("song_link");
				getString(R.string.ask_fb_sample_1) ;
				
				String shareText = getString(R.string.ask_fb_sample_1)
								+ " " + songLink 
								+ "\n\n"
								+ getString(R.string.ask_fb_intro_app)
								+ getPackageName();
				
				ClipboardManager clipboardManager = (ClipboardManager) getSystemService(CLIPBOARD_SERVICE);
				ClipData clip = ClipData.newPlainText("ShareText", shareText);
				clipboardManager.setPrimaryClip(clip);
				
				FacebookDialog shareDialog = new FacebookDialog.ShareDialogBuilder(MainActivity.this)
				.setLink(songLink)
//				.setApplicationName(getString(R.string.app_name))
				.build();
				uiHelper.trackPendingDialogCall(shareDialog.present());
				
				MyLog.log("songLink=" + songLink);
			} else {
				Toast.makeText(getApplicationContext(), getString(R.string.require_facebook_app_installed), Toast.LENGTH_SHORT).show();
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}		
	}
	
//	@TargetApi(Build.VERSION_CODES.HONEYCOMB)
//	public void publishFeedDialog() {
//		try {
//			String songLink = mCurrentSong.getString("song_link");
//			getString(R.string.ask_fb_sample_1) ;
//			
//			String shareText = getString(R.string.ask_fb_sample_1)
//							+ " " + songLink 
//							+ "\n\n"
//							+ getString(R.string.ask_fb_intro_app)
//							+ getPackageName();
//			
//			ClipboardManager clipboardManager = (ClipboardManager) getSystemService(CLIPBOARD_SERVICE);
//			ClipData clip = ClipData.newPlainText("ShareText", shareText);
//			clipboardManager.setPrimaryClip(clip);
//			
//		    Bundle params = new Bundle();
//		    params.putString("link", "https://developers.facebook.com/android");
//
//		    WebDialog feedDialog = ( new WebDialog.FeedDialogBuilder(this, Session.getActiveSession(),params))
//		        .setOnCompleteListener(new OnCompleteListener() {
//
//		            @Override
//		            public void onComplete(Bundle values, FacebookException error) {
//		                if (error == null) {
//		                    // When the story is posted, echo the success
//		                    // and the post Id.
//		                    final String postId = values.getString("post_id");
//		                    if (postId != null) {
//		                        Toast.makeText(MainActivity.this,"Posted story, id: "+postId, Toast.LENGTH_SHORT).show();
//		                    } else {
//		                        // User clicked the Cancel button
//		                        Toast.makeText(MainActivity.this, "Publish cancelled", Toast.LENGTH_SHORT).show();
//		                    }
//		                } else if (error instanceof FacebookOperationCanceledException) {
//		                    // User clicked the "x" button
//		                    Toast.makeText(MainActivity.this, "Publish cancelled", Toast.LENGTH_SHORT).show();
//		                } else {
//		                    // Generic, ex: network error
//		                    Toast.makeText(MainActivity.this, "Error posting story", Toast.LENGTH_SHORT).show();
//		                }
//		            }
//		        }).build();
//		    
//		    feedDialog.show();			
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//	}
	
//	public void loginFacebook() {
//		final Dialog dialog = new Dialog(this, android.R.style.Theme_Black_NoTitleBar);
//		dialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
//		dialog.setContentView(R.layout.dialog_login_facebook);
//		dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
//		dialog.getWindow().getAttributes().windowAnimations = com.idroid.lib.support.R.style.ConfigDialogAnimation;
//		dialog.show();
//	}

}
