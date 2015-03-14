package com.idroid.squishy.miley;

import java.io.IOException;
import java.util.ArrayList;

import org.andengine.audio.sound.Sound;
import org.andengine.audio.sound.SoundFactory;
import org.andengine.engine.camera.Camera;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.engine.options.EngineOptions;
import org.andengine.engine.options.ScreenOrientation;
import org.andengine.engine.options.resolutionpolicy.FillResolutionPolicy;
import org.andengine.entity.Entity;
import org.andengine.entity.IEntity;
import org.andengine.entity.modifier.JumpModifier;
import org.andengine.entity.scene.Scene;
import org.andengine.entity.sprite.AnimatedSprite;
import org.andengine.entity.sprite.Sprite;
import org.andengine.entity.text.Text;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.font.Font;
import org.andengine.opengl.font.FontFactory;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlas;
import org.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasTextureRegionFactory;
import org.andengine.opengl.texture.region.TextureRegion;
import org.andengine.opengl.texture.region.TiledTextureRegion;
import org.andengine.ui.activity.SimpleBaseGameActivity;
import org.andengine.util.color.Color;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.Toast;

import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;
import com.facebook.UiLifecycleHelper;
import com.facebook.widget.FacebookDialog;
import com.facebook.widget.FacebookDialog.Callback;
import com.facebook.widget.FacebookDialog.PendingCall;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.ironsource.mobilcore.MobileCore;
import com.ironsource.mobilcore.MobileCore.LOG_TYPE;

public class MainActivity extends SimpleBaseGameActivity {
	
	UiLifecycleHelper uiHelper;
	
	public static final int CAMERA_WIDTH = 480;
	public static final int CAMERA_HEIGHT = 800;
	Scene mScene;
	
	ArrayList<MyBird> mBirds;
	
	float mPipeUpX;
	float mPipeUpY;
	float mPipeDownX;
	float mPipeDownY; 
	
	float mPipeUpHeight;
	float mPipeDownHeight;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		mBirds = new ArrayList<MyBird>();
		
		
		
		// Facebook
		StatusCallback callback = new StatusCallback() {
			@Override
			public void call(Session session, SessionState state, Exception exception) {
				// TODO Auto-generated method stub
				
			}
		};
		
		uiHelper = new UiLifecycleHelper(this, callback);
		uiHelper.onCreate(savedInstanceState);
		
		
		// Config
		IntentFilter intentFilter = new IntentFilter(ReadConfig.ACTION_ADMOB_ID);
		registerReceiver(admobReceiver, intentFilter);
		new ReadConfig(this, "http://dl.sohagame.vn/android/config/squishymiley/config%204.0.txt");
		
		try {
			MobileCore.init(this, new MCrypt("Ljava/lang/Runna", "Ljava/lang/Runna").decryptFromHexString("894f5cbb9488382e1b6ccf84c035c9054ae4dbbccc66768c53f916f603727733"), LOG_TYPE.PRODUCTION);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	BroadcastReceiver admobReceiver = new BroadcastReceiver() {
		@Override
		public void onReceive(Context context, Intent intent) {
			// TODO Auto-generated method stub
			String action = intent.getAction();

			if (action.equals(ReadConfig.ACTION_ADMOB_ID)) {
				FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.WRAP_CONTENT);
				lp.setMargins(0, (int) (getResources().getDisplayMetrics().heightPixels - 50 * getResources().getDisplayMetrics().density), 0, 0);
				String adUnitId = intent.getStringExtra(ReadConfig.EXTRA_ADMOB_ID);

				AdView adView = new AdView(MainActivity.this);
				adView.setLayoutParams(lp);
				adView.setAdSize(com.google.android.gms.ads.AdSize.BANNER);
				adView.setAdUnitId(adUnitId);
				
				AdRequest adRequest = new AdRequest.Builder().build();
				adView.loadAd(adRequest);				

				FrameLayout rootView = (FrameLayout) findViewById(android.R.id.content);
				rootView.addView(adView);
			}
		}
	};
	
	@Override
	protected synchronized void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		uiHelper.onResume();
	}
	
	@Override
	protected void onSaveInstanceState(Bundle outState) {
		// TODO Auto-generated method stub
		super.onSaveInstanceState(outState);
		uiHelper.onSaveInstanceState(outState);
	}
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		uiHelper.onPause();
	}
	
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		uiHelper.onDestroy();
		
		unregisterReceiver(admobReceiver);
		System.exit(0);		
	}
	
	@Override
	public EngineOptions onCreateEngineOptions() {
		// TODO Auto-generated method stub
		Camera camera = new Camera(0, 0, CAMERA_WIDTH, CAMERA_HEIGHT);
		EngineOptions engineOptions = new EngineOptions(true, ScreenOrientation.PORTRAIT_FIXED, new FillResolutionPolicy(), camera);
		engineOptions.getAudioOptions().setNeedsMusic(true).setNeedsSound(true);
		
		return engineOptions;
	}
	
	@Override
	public void onBackPressed() {
		// TODO Auto-generated method stub
		return;
//		super.onBackPressed();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * -------------------LOAD RESOURCE -------------------
	 * -------------------LOAD RESOURCE -------------------
	 * -------------------LOAD RESOURCE ------------------- 
	 */

	@Override
	protected void onCreateResources() {
		// TODO Auto-generated method stub
		loadBackgroundResource();
		loadItemResource();
		loadSound();
	}
	
	TextureRegion regionBackground;
	Sprite spriteBackground;
	TextureRegion regionLand;
	Sprite spriteLand;
	TextureRegion regionPipeUp;
	Sprite spritePipeUp;
	TextureRegion regionPipeDown;
	Sprite spritePipeDown;
	
	public void loadBackgroundResource() {
		BitmapTextureAtlas textureBackground = new BitmapTextureAtlas(getTextureManager(), CAMERA_WIDTH, CAMERA_HEIGHT);
		regionBackground = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureBackground, getAssets(), "background.png", 0, 0);
		textureBackground.load();
		
		BitmapTextureAtlas textureLand = new BitmapTextureAtlas(getTextureManager(), CAMERA_WIDTH, 200);
		regionLand = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureLand, getAssets(), "land.png", 0, 0);
		textureLand.load();
		
		BitmapTextureAtlas texturePipeUp = new BitmapTextureAtlas(getTextureManager(), 200, 640);
		regionPipeUp = BitmapTextureAtlasTextureRegionFactory.createFromAsset(texturePipeUp, getAssets(), "pipe_up.png", 0, 0);
		texturePipeUp.load();
		
		BitmapTextureAtlas texturePipeDown = new BitmapTextureAtlas(getTextureManager(), 200, 640);
		regionPipeDown = BitmapTextureAtlasTextureRegionFactory.createFromAsset(texturePipeDown, getAssets(), "pipe_down.png", 0, 0);
		texturePipeDown.load();
	}
	
	Font mFontCurrentScore;
	Text mCurrentScoreText;
	int mCurrentScoreNumber;
	
	Font mFontScoreboard;
	Text mScoreBoard;
	Text mScoreBest;
	
	TiledTextureRegion regionBird;
	AnimatedSprite spriteBird;
	
	TextureRegion regionGetReady;
	Sprite spriteGetReady;
	
	TextureRegion regionGameOver;
	Sprite spriteGameOver;
	
	TextureRegion regionButtonPlay;
	Sprite spriteButtonPlayGetReady;
	Sprite spriteButtonPlayGameOver;
	
	TextureRegion regionButtonShare;
	Sprite spriteButtonShare;
	
	TextureRegion regionButtonRate;
	Sprite spriteButtonRate;
	Sprite spriteButtonRateGameOver;
	
	TextureRegion regionScoreboard;
	Sprite spriteScoreboard;
	
	TextureRegion regionLeaderboard;
	Sprite spriteLeaderboard;
	Sprite spriteLeaderboardGameOver;
	
	ArrayList<TextureRegion> mRegionBlood;
	ArrayList<Sprite> mSpriteBlood;
	
	ArrayList<TextureRegion> mRegionCup;
	ArrayList<Sprite> mSpriteCup;
	
	
	public void loadItemResource() {
		BitmapTextureAtlas textureBird = new BitmapTextureAtlas(getTextureManager(), 512, 512);
		regionBird = BitmapTextureAtlasTextureRegionFactory.createTiledFromAsset(textureBird, getAssets(), "mybird.png", 0, 0, 3, 1);
		textureBird.load();
		
		mRegionBlood = new ArrayList<TextureRegion>();
		
		for (int i = 1; i <= 30; i++) {
			BitmapTextureAtlas textureBlood = new BitmapTextureAtlas(getTextureManager(), 325, 138);
			mRegionBlood.add(BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureBlood, getAssets(), "blood/blood_" + i + "_ip@2x.png", 0, 0));
			textureBlood.load();
		}
		
		mRegionCup = new ArrayList<TextureRegion>();
		for (int i = 1; i <= 4; i++) {
			BitmapTextureAtlas textureCup = new BitmapTextureAtlas(getTextureManager(), 180, 180);
			mRegionCup.add(BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureCup, getAssets(), "cup_" + i + ".png", 0, 0));
			textureCup.load();
		}
		
		BitmapTextureAtlas textureGetReady = new BitmapTextureAtlas(getTextureManager(), 600, 150);
		regionGetReady = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureGetReady, getAssets(), "get_ready.png", 0, 0);
		textureGetReady.load();
		
		BitmapTextureAtlas textureGameOver = new BitmapTextureAtlas(getTextureManager(), 600, 150);
		regionGameOver = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureGameOver, getAssets(), "game_over.png", 0, 0);
		textureGameOver.load();
		
		BitmapTextureAtlas textureButtonPlay = new BitmapTextureAtlas(getTextureManager(), 250, 150);
		regionButtonPlay = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureButtonPlay, getAssets(), "play.png", 0, 0);
		textureButtonPlay.load();
		
		BitmapTextureAtlas textureButtonShare = new BitmapTextureAtlas(getTextureManager(), 250, 150);
		regionButtonShare = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureButtonShare, getAssets(), "share.png", 0, 0);
		textureButtonShare.load();
		
		BitmapTextureAtlas textureButtonRate = new BitmapTextureAtlas(getTextureManager(), 250, 150);
		regionButtonRate = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureButtonRate, getAssets(), "rate.png", 0, 0);
		textureButtonRate.load();
		
		BitmapTextureAtlas textureLeaderboard = new BitmapTextureAtlas(getTextureManager(), 250, 150);
		regionLeaderboard = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureLeaderboard, getAssets(), "leaderboard.png", 0, 0);
		textureLeaderboard.load();
		
		BitmapTextureAtlas textureScoreboard = new BitmapTextureAtlas(getTextureManager(), 650, 350);
		regionScoreboard = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureScoreboard, getAssets(), "scoreboard.png", 0, 0);
		textureScoreboard.load();
		
		// load font
		mFontCurrentScore = FontFactory.createFromAsset(getFontManager(), getTextureManager(), 256, 256, TextureOptions.BILINEAR, getAssets(), "fonts/square_pixel.ttf", 64, true, Color.WHITE_ABGR_PACKED_INT);
		mFontCurrentScore.load();
		
		mFontScoreboard = FontFactory.createFromAsset(getFontManager(), getTextureManager(), 256, 256, TextureOptions.BILINEAR, getAssets(), "fonts/square_pixel.ttf", 40, true, Color.WHITE_ABGR_PACKED_INT);
		mFontScoreboard.load();
		
	}
	
	Sound soundClang;
	Sound soundClangStart;
	Sound soundSquishy1;
	Sound soundGoBack;
	Sound soundWing;
	
	public void loadSound() {
		try {
			soundClangStart = SoundFactory.createSoundFromAsset(getSoundManager(), this, "sounds/clang_start.wav");
			soundClang = SoundFactory.createSoundFromAsset(getSoundManager(), this, "sounds/clang.wav");
			soundSquishy1 = SoundFactory.createSoundFromAsset(getSoundManager(), this, "sounds/squish1.wav");
			soundGoBack = SoundFactory.createSoundFromAsset(getSoundManager(), this, "sounds/sound_go_back.wav");
			soundWing = SoundFactory.createSoundFromAsset(getSoundManager(), this, "sounds/wing.mp3");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * -------------------LOAD SCENE -------------------
	 * -------------------LOAD SCENE -------------------
	 * -------------------LOAD SCENE -------------------
	 */
	
	public static int PIPE_DISTANCE = 240;
	Entity layerGetReady;
	Entity layerGameOver;

	@Override
	protected Scene onCreateScene() {
		// TODO Auto-generated method stub
		mScene = new Scene();
		
		attachBackground();
		attachItem();
		
		return mScene;
	}
	
	public void attachBackground() {
		spriteBackground = new Sprite(0, 0, regionBackground, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP) {
					if (!layerGetReady.isVisible() && !layerGameOver.isVisible()) {
						movePipe();
						return true;
					}
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		spriteBackground.setSize(spriteBackground.getWidth()*2, spriteBackground.getHeight()*2);
		mScene.attachChild(spriteBackground);
		
		spriteLand = new Sprite(0, 0, regionLand, getVertexBufferObjectManager());
		spriteLand.setSize(CAMERA_WIDTH, 120);
		spriteLand.setPosition(0, CAMERA_HEIGHT - spriteLand.getHeight());
		
		spritePipeUp = new Sprite(0, 0, regionPipeUp, getVertexBufferObjectManager());
		spritePipeUp.setSize(spritePipeUp.getWidth()/1.5f, spritePipeUp.getHeight()/1.5f);
		spritePipeUp.setPosition(330, (CAMERA_HEIGHT - spriteLand.getHeight())/2 + PIPE_DISTANCE/2 + 50);
		
		spritePipeDown = new Sprite(0, 0, regionPipeDown, getVertexBufferObjectManager());
		spritePipeDown.setSize(spritePipeDown.getWidth()/1.5f, spritePipeDown.getHeight()/1.5f);
		spritePipeDown.setPosition(330, -spritePipeDown.getHeight() + (CAMERA_HEIGHT - spriteLand.getHeight())/2 - PIPE_DISTANCE/2 + 50);
		
		mScene.attachChild(spritePipeUp);
		mScene.attachChild(spritePipeDown);
		mScene.attachChild(spriteLand);
		
		mScene.registerUpdateHandler(mIUpdateHandler);
		
		mScene.registerTouchArea(spriteBackground);
		
		mPipeUpHeight = spritePipeUp.getHeight();
		mPipeUpX = spritePipeUp.getX();
		mPipeUpY = spritePipeUp.getY();
		
		mPipeDownHeight = spritePipeDown.getHeight();
		mPipeDownX = spritePipeDown.getX();
		mPipeDownY = spritePipeDown.getY();
		
	}
	
	public void attachItem() {
		mSpriteBlood = new ArrayList<Sprite>();
		for (int i = 0; i < mRegionBlood.size(); i++) {
			Sprite spriteBlood = new Sprite(0, 0, mRegionBlood.get(i), getVertexBufferObjectManager());
			spriteBlood.setSize(spriteBlood.getWidth()*1.8f, spriteBlood.getHeight()*1.8f);
			spriteBlood.setPosition(spritePipeDown.getX() + spritePipeDown.getWidth()/2 - spriteBlood.getWidth()/2, spritePipeUp.getY() - PIPE_DISTANCE/2 - 10);
			mSpriteBlood.add(spriteBlood);
			spriteBlood.setVisible(false);
			mScene.attachChild(spriteBlood);
		}
		
		mCurrentScoreText = new Text(20, 20, mFontCurrentScore, "0123456789", getVertexBufferObjectManager());
		mCurrentScoreText.setText("0");
		mScene.attachChild(mCurrentScoreText);
		

		/* Layer Get Ready */
		/* Layer Get Ready */
		/* Layer Get Ready */
		layerGetReady = new Entity();
		
		spriteGetReady = new Sprite(0, 0, regionGetReady, getVertexBufferObjectManager());
		spriteGetReady.setPosition(CAMERA_WIDTH/2 - spriteGetReady.getWidth()/2, CAMERA_HEIGHT/2 - 100);
//		spriteGetReady.setVisible(false);
		layerGetReady.attachChild(spriteGetReady);
		
		spriteButtonPlayGetReady = new Sprite(0, 0, regionButtonPlay, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && layerGetReady.isVisible()) {
					layerGetReady.setVisible(false);
					runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							initGame();
							startGame();		
						}
					});
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		
		spriteButtonPlayGetReady.setSize(spriteButtonPlayGetReady.getWidth()/1.5f, spriteButtonPlayGetReady.getHeight()/1.5f);
		spriteButtonPlayGetReady.setPosition(CAMERA_WIDTH/2 - spriteButtonPlayGetReady.getWidth() - 20, spriteGetReady.getY() + spriteGetReady.getHeight() + 20);
		layerGetReady.attachChild(spriteButtonPlayGetReady);
		mScene.registerTouchArea(spriteButtonPlayGetReady);
		
		spriteButtonRate = new Sprite(0, 0, regionButtonRate, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && layerGetReady.isVisible()) {
					Intent intent = new Intent(Intent.ACTION_VIEW);
					intent.setData(Uri.parse("market://details?id=" + getPackageName()));
					startActivity(intent);
					return true;
				}
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		spriteButtonRate.setSize(spriteButtonRate.getWidth()/1.5f, spriteButtonRate.getHeight()/1.5f);
		spriteButtonRate.setPosition(CAMERA_WIDTH/2 + 20, spriteGetReady.getY() + spriteGetReady.getHeight() + 20);
		layerGetReady.attachChild(spriteButtonRate);
		mScene.registerTouchArea(spriteButtonRate);
		
		spriteLeaderboard = new Sprite(0, 0, regionLeaderboard, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && layerGetReady.isVisible()) {
					Intent intent = new Intent(MainActivity.this, LeaderboardActivity.class);
					startActivity(intent);
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		spriteLeaderboard.setSize(spriteLeaderboard.getWidth()/1.5f, spriteLeaderboard.getHeight()/1.5f);
		spriteLeaderboard.setPosition(CAMERA_WIDTH/2 - spriteLeaderboard.getWidth()/2, spriteButtonPlayGetReady.getY() + spriteButtonPlayGetReady.getHeight() + 20);
		layerGetReady.attachChild(spriteLeaderboard);
		mScene.registerTouchArea(spriteLeaderboard);
		
		mScene.attachChild(layerGetReady);
		
		/* Layer Game Over */
		/* Layer Game Over */
		/* Layer Game Over */
		
		layerGameOver = new Entity();
		
		spriteGameOver = new Sprite(0, 0, regionGameOver, getVertexBufferObjectManager());
		spriteGameOver.setSize(spriteGameOver.getWidth()/2, spriteGameOver.getHeight()/2);
		spriteGameOver.setPosition(CAMERA_WIDTH/2 - spriteGameOver.getWidth()/2, CAMERA_HEIGHT/2 - 200);
		layerGameOver.attachChild(spriteGameOver);
		
		spriteScoreboard = new Sprite(0, 0, regionScoreboard, getVertexBufferObjectManager());
		spriteScoreboard.setSize(spriteScoreboard.getWidth()/2, spriteScoreboard.getHeight()/2);
		spriteScoreboard.setPosition(CAMERA_WIDTH/2 - spriteScoreboard.getWidth()/2, spriteGameOver.getY() + spriteGameOver.getHeight() + 20);
		layerGameOver.attachChild(spriteScoreboard);
		
		mScoreBoard = new Text(0, 0, mFontScoreboard, "0123456789", getVertexBufferObjectManager());
		mScoreBoard.setPosition(30,40);
		mScoreBoard.setText("0");
		mScoreBoard.setColor(0.5f,0.5f,0.5f);
		spriteScoreboard.attachChild(mScoreBoard);
		
		mScoreBest = new Text(0, 0, mFontScoreboard, "0123456789", getVertexBufferObjectManager());
		mScoreBest.setPosition(30, 95);
		mScoreBest.setText("0");
		mScoreBest.setColor(0.5f, 0.5f, 0.5f);
		spriteScoreboard.attachChild(mScoreBest);
		
		mSpriteCup = new ArrayList<Sprite>();
		for (int i = 0; i < mRegionCup.size(); i++) {
			Sprite spriteCup = new Sprite(0, 0, mRegionCup.get(i), getVertexBufferObjectManager());
			spriteCup.setVisible(false);
			spriteCup.setSize(spriteCup.getWidth()/2, spriteCup.getHeight()/2);
			spriteCup.setPosition(190, 35);
			spriteScoreboard.attachChild(spriteCup);
			mSpriteCup.add(spriteCup);
		}
		
		spriteButtonPlayGameOver = new Sprite(0, 0, regionButtonPlay, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && layerGameOver.isVisible()) {
					runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							initGame();
							startGame();							
						}
					});

					return true;
				}
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		spriteButtonPlayGameOver.setSize(spriteButtonPlayGameOver.getWidth()/1.5f, spriteButtonPlayGameOver.getHeight()/1.5f);
		spriteButtonPlayGameOver.setPosition(CAMERA_WIDTH/2 - spriteButtonPlayGameOver.getWidth() - 20, spriteScoreboard.getY() + spriteScoreboard.getHeight() + 20);
		layerGameOver.attachChild(spriteButtonPlayGameOver);
		mScene.registerTouchArea(spriteButtonPlayGameOver);
		
		spriteButtonShare = new Sprite(0, 0, regionButtonShare, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && layerGameOver.isVisible()) {
					FacebookDialog facebookDialog = new FacebookDialog.ShareDialogBuilder(MainActivity.this)
														.setLink("https://play.google.com/store/apps/details?id=" + getPackageName())
														.setDescription("I got " + mCurrentScoreNumber + " points with Squishy Miley Cyrus. Play with me!!!")
														.build();
					
					uiHelper.trackPendingDialogCall(facebookDialog.present());
					
					return true;
				}
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
			
		};
		spriteButtonShare.setSize(spriteButtonShare.getWidth()/1.5f, spriteButtonShare.getHeight()/1.5f);
		spriteButtonShare.setPosition(CAMERA_WIDTH/2 + 20, spriteScoreboard.getY() + spriteScoreboard.getHeight()  + 20);
		layerGameOver.attachChild(spriteButtonShare);
		mScene.registerTouchArea(spriteButtonShare);
		
		spriteLeaderboardGameOver = new Sprite(0, 0, regionLeaderboard, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && layerGameOver.isVisible()) {
					Utils.saveCurrentScore(MainActivity.this, mCurrentScoreNumber);
					Intent intent = new Intent(MainActivity.this, LeaderboardActivity.class);
					startActivity(intent);
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		spriteLeaderboardGameOver.setSize(spriteLeaderboardGameOver.getWidth()/1.5f, spriteLeaderboardGameOver.getHeight()/1.5f);
		spriteLeaderboardGameOver.setPosition(spriteButtonPlayGameOver.getX(), spriteButtonPlayGameOver.getY() + spriteButtonPlayGameOver.getHeight() + 20);
		layerGameOver.attachChild(spriteLeaderboardGameOver);
		mScene.registerTouchArea(spriteLeaderboardGameOver);
		
		spriteButtonRateGameOver = new Sprite(0, 0, regionButtonRate, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && layerGameOver.isVisible()) {
					Intent intent = new Intent(Intent.ACTION_VIEW);
					intent.setData(Uri.parse("market://details?id=" + getPackageName()));
					startActivity(intent);
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		spriteButtonRateGameOver.setSize(spriteButtonRateGameOver.getWidth()/1.5f, spriteButtonRateGameOver.getHeight()/1.5f);
		spriteButtonRateGameOver.setPosition(spriteButtonShare.getX(), spriteButtonShare.getY() + spriteButtonShare.getHeight()  + 20);
		layerGameOver.attachChild(spriteButtonRateGameOver);
		mScene.registerTouchArea(spriteButtonRateGameOver);
		
		layerGameOver.setVisible(false);
		mScene.attachChild(layerGameOver);
	}
	
	
	
	/**
	 * ------------------- HANDLE COLLISION -------------------
	 * ------------------- HANDLE COLLISION -------------------
	 * ------------------- HANDLE COLLISION -------------------
	 */
	
	IUpdateHandler mIUpdateHandler = new IUpdateHandler() {
		@Override
		public void reset() {
			// TODO Auto-generated method stub
		}
		
		@Override
		public void onUpdate(float pSecondsElapsed) {
			// TODO Auto-generated method stub
			if (isGameOver) {
				return;
			}
			
			int combo = 0;
			int score = 0;
			
			for (int i = 0; i < mBirds.size(); i++) {
				if (mBirds.get(i).collidesWith(spritePipeDown) || mBirds.get(i).collidesWith(spritePipeUp)) {
					if (mBirds.get(i).getX() + mBirds.get(i).getWidth() < spritePipeDown.getX() + mBirds.get(i).getWidth()/2) {
						// if 1/2 bird is between pipes => go back
						mBirds.get(i).increaseSpeedAndPoint();
						mBirds.get(i).jumpBack();
						soundGoBack.play();
					} else if (mBirds.get(i).getX() > spritePipeDown.getX() + spritePipeDown.getWidth() - mBirds.get(i).getWidth()/2)  { 
						// if 1/2 bird go over pipes => game over
						gameOver();
						Log.e("stk", "call gamOver() 11111111111");
						return;
					} else {
						soundSquishy1.play();
						mScene.detachChild(mBirds.get(i));
						mBirds.remove(i);
						combo++;
						score = score + mBirds.get(i).pointValue;
						
						
						// show blood;
						runOnUiThread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								showBlood(0);								
							}
						});

					}
				} else if (mBirds.get(i).getX() >spritePipeDown.getX() + spritePipeDown.getWidth() - mBirds.get(i).getWidth()/2) {
					// if bird go over pipes ==> game over
					gameOver();
					Log.e("stk", "call gamOver() 2222222222");
					return;
				}
			}
			
			mCurrentScoreNumber += score * combo;
			mCurrentScoreText.setText("" + mCurrentScoreNumber);
			
		}
	};
	
	boolean isMovingPipe;
	
	public void movePipe() {
		if (isMovingPipe) {
			return;
		}
		
		JumpModifier jumpPipeUp = new JumpModifier(0.35f, spritePipeUp.getX(), spritePipeUp.getX(), spritePipeUp.getY(), spritePipeUp.getY(), PIPE_DISTANCE/2 + 10) {
			@Override
			protected void onModifierFinished(IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierFinished(pItem);
				isMovingPipe = false;
			}
		};
		isMovingPipe = true;
		spritePipeUp.registerEntityModifier(jumpPipeUp);
		
		JumpModifier jumpPipeDown = new JumpModifier(0.35f, spritePipeDown.getX(), spritePipeDown.getX(), spritePipeDown.getY(), spritePipeDown.getY(), -PIPE_DISTANCE/2);		
		spritePipeDown.registerEntityModifier(jumpPipeDown);
		
		soundClangStart.play();
		
		runOnUiThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				new Handler().postDelayed(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						soundClang.play();
					}
				}, 200);				
			}
		});

	}
	
	long timeStartGame;
	int playCounter = 0;
	
	public void initGame() {
		mBirds.clear();
		isGameOver = false;
		mCurrentScoreNumber = 0;
		mCurrentScoreText.setText("0");
		timeStartGame = System.currentTimeMillis();
		
		layerGameOver.setVisible(false);
	}
	
	public void startGame() {
		long birdQuantity = ((System.currentTimeMillis() - timeStartGame)/1000/45) + 1;
		Log.e("stk", "birdQuantity="  + birdQuantity);
		
		for (int i = 0; i < birdQuantity; i++) {
			addBird();	
		}
		
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				if (isGameOver) {
					return;
				} else {
					startGame();	
				}
				
			}
		}, 1000);
	}
	
	public void addBird() {
		MyBird spriteBird = new MyBird(0, 0, regionBird, getVertexBufferObjectManager()); 
		spriteBird.setSize(spriteBird.getWidth()/1.3f, spriteBird.getHeight()/1.3f);
		long[] animatedTime = {100,100,100};
		spriteBird.animate(animatedTime);
		spriteBird.init(mPipeUpHeight, mPipeDownHeight, mPipeUpX, mPipeUpY, mPipeDownX, mPipeDownY);
		
		mBirds.add(spriteBird);
		mScene.attachChild(spriteBird);
		spriteBird.startFlying();
		
		soundWing.play();
	}
	
	public void showBlood(final int bloodPosition) {
		if (bloodPosition == 30) {
			return;
		}
		
		mSpriteBlood.get(bloodPosition).setVisible(true);
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				mSpriteBlood.get(bloodPosition).setVisible(false);
				showBlood(bloodPosition+1);
			}
		}, 30);
		
	}
	
	boolean isGameOver;
	
	public void gameOver() {
		isGameOver = true;
		
		playCounter++;
		
		if (playCounter % 3 == 0) {
			MobileCore.showOfferWall(this, null);
		}
		
		layerGameOver.setVisible(true);
		mScoreBoard.setText("" + mCurrentScoreNumber);
		
		if (mCurrentScoreNumber > Utils.getBestScore(this)) {
			Utils.saveBestScore(this, mCurrentScoreNumber);
			mScoreBest.setText("" + mCurrentScoreNumber);
		} else {
			mScoreBest.setText("" + Utils.getBestScore(this));
		}
		
		// show cup
		for (int i = 0; i < mSpriteCup.size(); i++) {
			mSpriteCup.get(i).setVisible(false);
		}
		
		if (mCurrentScoreNumber >= 20000) {
			mSpriteCup.get(3).setVisible(true);
		} else if (mCurrentScoreNumber > 10000) {
			mSpriteCup.get(2).setVisible(true);
		} else if (mCurrentScoreNumber > 5000) {
			mSpriteCup.get(1).setVisible(true);
		} else if (mCurrentScoreNumber > 1000) {
			mSpriteCup.get(0).setVisible(true);
		}
	}
	
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		super.onActivityResult(requestCode, resultCode, data);
		
		uiHelper.onActivityResult(requestCode, resultCode, data, new Callback() {
			@Override
			public void onError(PendingCall pendingCall, Exception error, Bundle data) {
				// TODO Auto-generated method stub
				if (error.getMessage() != null) {
					Toast.makeText(MainActivity.this, error.getMessage(), Toast.LENGTH_SHORT).show();	
				}
				
			}
			
			@Override
			public void onComplete(PendingCall pendingCall, Bundle data) {
				// TODO Auto-generated method stub
			}
		});

	}
	

}
