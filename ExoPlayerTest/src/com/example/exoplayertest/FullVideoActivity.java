package com.example.exoplayertest;

import android.app.Activity;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.view.View;
import android.widget.MediaController;
import android.widget.VideoView;

public class FullVideoActivity extends Activity{
	
	public static final String EXTRA_POSITION = "EXTRA_POSITION";
	public static final String EXTRA_URL = "EXTRA_URL";
	
	int position;
	String videoUrl;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		
		setContentView(R.layout.activity_full_video);
		
		Intent intent = getIntent();
		position = intent.getIntExtra(EXTRA_POSITION, 0);
		videoUrl = intent.getStringExtra(EXTRA_URL);		
		
		initUI();
	}
	
	public void initUI() {
		VideoView videoView = (VideoView) findViewById(R.id.video_view);
		
		MediaController controller = new MediaController(this);
		controller.setAnchorView(videoView);
		
		videoView.setVideoPath(videoUrl);
		videoView.setMediaController(controller);
		findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
		videoView.start();
		
		videoView.setOnPreparedListener(new OnPreparedListener() {
			@Override
			public void onPrepared(MediaPlayer mp) {
				// TODO Auto-generated method stub
				mp.start();
				mp.seekTo(position);
				findViewById(R.id.pb_loading).setVisibility(View.GONE);
			}
		});
		
		
	}

}
