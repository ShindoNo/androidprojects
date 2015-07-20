package com.example.exoplayertest;

import android.app.Activity;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.MediaController;
import android.widget.VideoView;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		initUI();
	}
	
	public void initUI() {
//		http://tydltbwa.flix-cdn.com/xrgxrrz/_definst_/xrgxrrz/PROD/ballball/general/2015/07/13/20150712_BSA_HL00_FLACOR_1436737392621/20150712_BSA_HL00_FLACOR_EPL_ASIA_1296.mp4

//		Uri uri = Uri.parse("http://tydltbwa.flix-cdn.com/xrgxrrz/_definst_/xrgxrrz/PROD/ballball/general/2015/07/13/20150712_BSA_HL00_FLACOR_1436737392621/20150712_BSA_HL00_FLACOR_EPL_ASIA_1296.mp4");
		
		final String url = "http://tydltbwa.flix-cdn.com/xrgxrrz/_definst_/xrgxrrz/PROD/ballball/general/2015/07/13/20150712_BSA_HL00_FLACOR_1436737392621/20150712_BSA_HL00_FLACOR_EPL_ASIA_1296.mp4";
		
		final VideoView videoView = (VideoView) findViewById(R.id.video_view);
		MediaController mediaController = new MediaController(this);
		mediaController.setAnchorView(videoView);
		
		videoView.setMediaController(mediaController);
		videoView.setVideoPath(url);
		
		
		findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
		videoView.start();
		
		videoView.setOnPreparedListener(new OnPreparedListener() {
			@Override
			public void onPrepared(MediaPlayer mp) {
				// TODO Auto-generated method stub
				mp.start();
				findViewById(R.id.pb_loading).setVisibility(View.GONE);
				Log.e("stk", "onPrepared()");
			}
		});
		
		videoView.setOnCompletionListener(new OnCompletionListener() {
			@Override
			public void onCompletion(MediaPlayer mp) {
				// TODO Auto-generated method stub
				Log.e("stk", "onCompletion()");
			}
		});
		
		videoView.setOnErrorListener(new OnErrorListener() {
			@Override
			public boolean onError(MediaPlayer mp, int what, int extra) {
				// TODO Auto-generated method stub
				
				Log.e("stk", "onError(); what=" + what + "; extra=" + extra);
				
				
				return false;
			}
		});
		
		findViewById(R.id.btn_expand).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(MainActivity.this, FullVideoActivity.class);
				intent.putExtra(FullVideoActivity.EXTRA_POSITION, videoView.getCurrentPosition());
				Log.e("stk", "videoPostion=" + videoView.getCurrentPosition());
				videoView.stopPlayback();
				intent.putExtra(FullVideoActivity.EXTRA_URL, url);
				startActivity(intent);
			}
		});
		
		
		
		
	}


}
