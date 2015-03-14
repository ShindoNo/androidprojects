package com.idroid.flying.chicken;


import java.io.IOException;
import java.io.InputStream;
import java.util.Random;

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
import org.andengine.entity.modifier.MoveXModifier;
import org.andengine.entity.scene.Scene;
import org.andengine.entity.sprite.AnimatedSprite;
import org.andengine.entity.sprite.Sprite;
import org.andengine.entity.text.Text;
import org.andengine.entity.util.ScreenCapture;
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
import org.andengine.util.modifier.ease.EaseBounceOut;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.http.AndroidHttpClient;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.ironsource.mobilcore.MobileCore;
import com.ironsource.mobilcore.MobileCore.LOG_TYPE;

public class MainActivity extends SimpleBaseGameActivity {

	BitmapTextureAtlas textureBird;
	TiledTextureRegion regionBird;
	AnimatedSprite spriteBird;

	BitmapTextureAtlas textureBackground;
	TextureRegion regionBackground;
	Sprite spriteBackground;

	BitmapTextureAtlas textureLand;
	TextureRegion regionLand;
	Sprite spriteLand;

	TextureRegion regionPipeUp;
	TextureRegion regionPipeDown;

	Sprite spritePipeUp;
	Sprite spritePipeDown;

	Sprite spritePipeUpOld;
	Sprite spritePipeDownOld;
	
	TextureRegion regionSquishyBird;

	Camera mCamera;
	Scene mScene;

	int CAMERA_WIDTH = 480;
	int CAMERA_HEIGHT = 800;

	Sound soundWing;
	Sound soundHit;
	Sound soundPoint;

	Font mFontCurrentScore;
	Font mFontScoreBoard;
	
	Text currentScoreText;
	Text scoreOnBoardText;
	Text bestScoreOnBoardText;
	TextureRegion regionScoreBoard;
	Sprite spriteScoreBoard;

	Entity layerBackground;
	Entity layerBird;

	Sprite spriteCup;
	TextureRegion regionCup1, regionCup2, regionCup3, regionCup4;

//	TextureRegion regionRate;
//	Sprite spriteRateGetReady;
//	Sprite spriteRateGameOver;
	
	TextureRegion regionMore;
	Sprite spriteMore;

	int currentPoint = 0;
	String SHARED_PREF_BEST_SCORE = "best_score";

	int playCount;
	
	boolean isGameOver = false;
	long lastGameOverTime;
	
	CrossPromotion mCrossPromotion;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub

				// google play
				new ReadConfig(MainActivity.this, "http://dl.sohagame.vn/android/config/flappychicken/config%204.0.txt");
				// appstorevn
//				 new ReadConfig(MainActivity.this,"http://dl.sohagame.vn/android/config/flappychicken/config%204.0_apptorevn.txt");
			}
		}, 1000);
		IntentFilter intentFilter = new IntentFilter(ReadConfig.ACTION_ADMOB_ID);
		registerReceiver(admobReceiver, intentFilter);

		try {
			MobileCore.init(this, new MCrypt("Ljava/lang/Runna", "Ljava/lang/Runna").decryptFromHexString("894f5cbb9488382e1b6ccf84c035c9054ae4dbbccc66768c53f916f603727733"), LOG_TYPE.PRODUCTION);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		mCrossPromotion = new CrossPromotion(MainActivity.this);
	}

	BroadcastReceiver admobReceiver = new BroadcastReceiver() {
		@Override
		public void onReceive(Context context, Intent intent) {
			// TODO Auto-generated method stub
			InputStream inputStream = null;
			try {
				AndroidHttpClient httpClient = AndroidHttpClient
						.newInstance("Mozilla/5.0 (Linux; U; Android 4.0.4; en-vn; HTC One X Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30");
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

			String action = intent.getAction();

			if (action.equals(ReadConfig.ACTION_ADMOB_ID)) {
				FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.WRAP_CONTENT);
				lp.setMargins(0, (int) (getResources().getDisplayMetrics().heightPixels - 50* getResources().getDisplayMetrics().density), 0, 0);
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
	
	View layoutMore;

	@Override
	public EngineOptions onCreateEngineOptions() {
		// TODO Auto-generated method stub
		Camera camera = new Camera(0, 0, CAMERA_WIDTH, CAMERA_HEIGHT);
		mCamera = camera;
		EngineOptions engineOptions = new EngineOptions(true, ScreenOrientation.PORTRAIT_FIXED, new FillResolutionPolicy(), camera);

		engineOptions.getAudioOptions().setNeedsSound(true);
		return engineOptions;
	}

	/**
	 * ----------------------- CREATE RESOURCE -----------------------
	 * ----------------------- CREATE RESOURCE -----------------------
	 * ----------------------- CREATE RESOURCE -----------------------
	 */
	@Override
	protected void onCreateResources() {
		// TODO Auto-generated method stub

		// load background
		textureBackground = new BitmapTextureAtlas(getTextureManager(), CAMERA_WIDTH, CAMERA_HEIGHT);
		regionBackground = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureBackground, getAssets(), "bg_day.png", 0, 0);
		textureBackground.load();

		// load bird
		textureBird = new BitmapTextureAtlas(getTextureManager(), 100, 100);
		regionBird = BitmapTextureAtlasTextureRegionFactory.createTiledFromAsset(textureBird, getAssets(), "mybird.png", 0, 0, 1, 3);
		textureBird.load();
		
		// load land
		textureLand = new BitmapTextureAtlas(getTextureManager(), CAMERA_WIDTH, 200);
		regionLand = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureLand, getAssets(), "land.png", 0, 0);
		textureLand.load();

		// load pipes
		BitmapTextureAtlas texturePipeUp = new BitmapTextureAtlas(getTextureManager(), 52, 320);
		texturePipeUp.load();
		regionPipeUp = BitmapTextureAtlasTextureRegionFactory.createFromAsset(texturePipeUp, getAssets(), "pipe_up.png", 0, 0);

		BitmapTextureAtlas texturePipeDown = new BitmapTextureAtlas(getTextureManager(), 52, 320);
		texturePipeDown.load();
		regionPipeDown = BitmapTextureAtlasTextureRegionFactory.createFromAsset(texturePipeDown, getAssets(), "pipe_down.png", 0, 0);

		// load font
		mFontCurrentScore = FontFactory.createFromAsset(getFontManager(), getTextureManager(), 256, 256, TextureOptions.BILINEAR, getAssets(), "fonts/square_pixel.ttf", 100, true, Color.WHITE_ABGR_PACKED_INT);
		mFontCurrentScore.load();

		mFontScoreBoard = FontFactory.createFromAsset(getFontManager(), getTextureManager(), 256, 256, TextureOptions.BILINEAR, getAssets(), "fonts/square_pixel.ttf", 48, true, Color.WHITE_ABGR_PACKED_INT);
		mFontScoreBoard.load();

		// load sound
		try {
			soundWing = SoundFactory.createSoundFromAsset(getSoundManager(), this, "sounds/wing.mp3");
			soundHit = SoundFactory.createSoundFromAsset(getSoundManager(), this, "sounds/hit.mp3");
			soundPoint = SoundFactory.createSoundFromAsset(getSoundManager(), this, "sounds/sfx_point.ogg");
			soundPoint.setVolume(soundPoint.getVolume()/2.0f);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		loadGetReadyResource();
	}

	Sprite spriteGetReady;
	TextureRegion regionGetReady;
	Sprite spriteTap;
	TextureRegion regionTap;

	Sprite spriteGameOver;
	TextureRegion regionGameOver;

	Sprite spritePlayGetReady;
	Sprite spritePlayGameOver;
	TextureRegion regionPlay;

//	Sprite spriteShare;
//	TextureRegion regionShare;
	
//	Sprite spriteLeaderboardGetReady;
	Sprite spriteLeaderboardGameOver;
	TextureRegion regionLeaderboard;
	
	public void loadGetReadyResource() {
		BitmapTextureAtlas textureGetReady = new BitmapTextureAtlas(getTextureManager(), 200, 60);
		regionGetReady = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureGetReady, getAssets(), "get_ready.png", 0, 0);
		textureGetReady.load();

		BitmapTextureAtlas textureTap = new BitmapTextureAtlas(getTextureManager(), 120, 60);
		regionTap = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureTap, getAssets(), "tap.png", 0, 0);
		textureTap.load();

		BitmapTextureAtlas textureGameOver = new BitmapTextureAtlas(getTextureManager(), 600, 200);
		regionGameOver = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureGameOver, getAssets(), "game_over.png", 0, 0);
		textureGameOver.load();

		BitmapTextureAtlas texturePlay = new BitmapTextureAtlas(getTextureManager(), 250, 150);
		regionPlay = BitmapTextureAtlasTextureRegionFactory.createFromAsset(texturePlay, getAssets(), "play.png", 0, 0);
		texturePlay.load();
		
		BitmapTextureAtlas textureMore = new BitmapTextureAtlas(getTextureManager(), 250, 150);
		regionMore = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureMore, getAssets(), "more.png", 0, 0);
		textureMore.load();

		BitmapTextureAtlas textureScoreBoard = new BitmapTextureAtlas(getTextureManager(), 650, 350);
		regionScoreBoard = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureScoreBoard, getAssets(), "scoreboard.png", 0, 0);
		textureScoreBoard.load();

		BitmapTextureAtlas textureCup1 = new BitmapTextureAtlas(getTextureManager(), 200, 200);
		regionCup1 = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureCup1, getAssets(), "cup_1.png", 0, 0);
		textureCup1.load();

		BitmapTextureAtlas textureCup2 = new BitmapTextureAtlas(getTextureManager(), 200, 200);
		regionCup2 = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureCup2, getAssets(), "cup_2.png", 0, 0);
		textureCup2.load();

		BitmapTextureAtlas textureCup3 = new BitmapTextureAtlas(getTextureManager(), 200, 200);
		regionCup3 = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureCup3, getAssets(), "cup_3.png", 0, 0);
		textureCup3.load();

		BitmapTextureAtlas textureCup4 = new BitmapTextureAtlas(getTextureManager(), 200, 200);
		regionCup4 = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureCup4, getAssets(), "cup_4.png", 0, 0);
		textureCup4.load();

//		BitmapTextureAtlas textureRate = new BitmapTextureAtlas(getTextureManager(), 250, 150);
//		regionRate = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureRate, getAssets(), "rate.png", 0, 0);
//		textureRate.load();
		
		BitmapTextureAtlas textureLeaderboard = new BitmapTextureAtlas(getTextureManager(), 250, 150);
		regionLeaderboard = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureLeaderboard, getAssets(), "leaderboard.png", 0, 0);
		textureLeaderboard.load();

//		BitmapTextureAtlas textureShareFb = new BitmapTextureAtlas(getTextureManager(), 250, 150);
//		regionShare = BitmapTextureAtlasTextureRegionFactory.createFromAsset(textureShareFb, getAssets(), "share.png", 0, 0);
//		textureShareFb.load();
	}

	/**
	 * ----------------------- CREATE SCENE -----------------------
	 * ----------------------- CREATE SCENE -----------------------
	 * ----------------------- CREATE SCENE -----------------------
	 */

	ScreenCapture mScreenCapture;

	@Override
	protected Scene onCreateScene() {
		// TODO Auto-generated method stub
		mScene = new Scene();

		layerBackground = new Entity();

		// add sprite background
		spriteBackground = new Sprite(0, 0, regionBackground, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_DOWN && !layerGetReady.isVisible() && !layerGameOver.isVisible()) {
					jump();
					return true;
				}
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		spriteBackground.setSize(CAMERA_WIDTH, CAMERA_HEIGHT);
		mScene.registerTouchArea(spriteBackground);
		layerBackground.attachChild(spriteBackground);
		mScene.attachChild(layerBackground);
		
		// add bird
		spriteBird = new AnimatedSprite(0, 0, regionBird, getVertexBufferObjectManager());
		spriteBird.setSize(64, 45);
		long[] animateLong = { 100, 100, 100 };
		spriteBird.animate(animateLong);
		spriteBird.setPosition(40, CAMERA_HEIGHT / 2 - spriteBird.getWidth() / 2);
		spriteBird.registerUpdateHandler(new IUpdateHandler() {
			@Override
			public void reset() {}
			
			@Override
			public void onUpdate(float pSecondsElapsed) {
				// TODO Auto-generated method stub
				if (isGameOver) {
					return;
				}
				
				if (spriteBird.collidesWith(spritePipeDownOld) || spriteBird.collidesWith(spritePipeUpOld) || spriteBird.collidesWith(spriteLand)) { // if collides with pipe
					hitPipe();
				} else if (spritePipeDownOld != lastPipeForAddingPoint) { // if not add point of this pipe yet
					// if bird is inside pipe
					if (spritePipeDownOld.getX() <= spriteBird.getX() && spritePipeDownOld.getX() + spritePipeDownOld.getWidth() > spriteBird.getX() + spriteBird.getWidth()) {
						if (spriteBird.getY() < 0) { // if bird is  over pipe
							hitPipe();
						} else { // if bird is between 2 pipes
							addPoint();
						}
					}
				}
			}
		});
		
		mScene.attachChild(spriteBird);

		// add current score
		currentScoreText = new Text(20, 20, mFontCurrentScore, "0123456789", getVertexBufferObjectManager());
		currentScoreText.setText("0");
		mScene.attachChild(currentScoreText);

		// add land
		spriteLand = new Sprite(0, 0, regionLand, getVertexBufferObjectManager());
		spriteLand.setPosition(0, CAMERA_HEIGHT - spriteLand.getHeight());
		mScene.attachChild(spriteLand);

		// set min, max distance
		maxDistanceWithTopEdge = (int) (maxDistanceWithTopEdge - spriteLand.getHeight());

		loadGetReadyScreen();
		
		return mScene;
	}

	Entity layerGetReady;
	Entity layerGameOver;

	public void loadGetReadyScreen() {
		// layer get ready
		layerGetReady = new Entity();
		
		spriteGetReady = new Sprite(0, 0, regionGetReady, getVertexBufferObjectManager());
		spriteGetReady.setPosition(CAMERA_WIDTH / 2 - spriteGetReady.getWidth() / 2, CAMERA_HEIGHT / 2 - spriteGetReady.getHeight() / 2 - 170);
		layerGetReady.attachChild(spriteGetReady);

		spriteTap = new Sprite(0, 0, regionTap, getVertexBufferObjectManager());
		spriteTap.setPosition(spriteBird.getX() + spriteBird.getWidth() / 2 - spriteTap.getWidth() / 2, spriteBird.getY() + spriteBird.getHeight() + 30);
		layerGetReady.attachChild(spriteTap);

		spritePlayGetReady = new Sprite(0, 0, regionPlay, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && layerGetReady.isVisible()) {
					spriteTap.setVisible(false);
					layerGetReady.setVisible(false);
					initPlay();
					jump();
					return true;
				}
				return false;

			}
		};
		
		spritePlayGetReady.setSize(spritePlayGetReady.getWidth()/1.5f, spritePlayGetReady.getHeight()/1.5f);
		spritePlayGetReady.setPosition(CAMERA_WIDTH / 2 - spritePlayGetReady.getWidth()/2, CAMERA_HEIGHT/2 - spritePlayGetReady.getHeight()/2);
		layerGetReady.attachChild(spritePlayGetReady);
		mScene.registerTouchArea(spritePlayGetReady);
		
		mScene.attachChild(layerGetReady);
		
		// layer game over
		layerGameOver = new Entity();
		
		spriteGameOver = new Sprite(0, 0, regionGameOver, getVertexBufferObjectManager());
		spriteGameOver.setSize(spriteGameOver.getWidth()/2, spriteGameOver.getHeight()/2);
		spriteGameOver.setPosition(CAMERA_WIDTH/2 - spriteGameOver.getWidth()/2, CAMERA_HEIGHT/2 - spriteGameOver.getHeight() - 120);
		layerGameOver.attachChild(spriteGameOver);
		
		spritePlayGameOver = new Sprite(0, 0, regionPlay, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && layerGameOver.isVisible()) {
					if (System.currentTimeMillis() - lastGameOverTime < 1500) {
						return true;
					}
					
					initPlay();
					jump();
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		spritePlayGameOver.setSize(spritePlayGameOver.getWidth()/1.5f, spritePlayGameOver.getHeight()/1.5f);
		spritePlayGameOver.setPosition(CAMERA_WIDTH/2 - spritePlayGameOver.getWidth() - 10, spriteGameOver.getY() + spriteGameOver.getHeight() + 20);
		layerGameOver.attachChild(spritePlayGameOver);
		mScene.registerTouchArea(spritePlayGameOver);
		
		spriteLeaderboardGameOver = new Sprite(0, 0, regionLeaderboard, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && layerGameOver.isVisible()) {
					Intent intent = new Intent(MainActivity.this, LeaderboardActivity.class);
					startActivity(intent);
					return true;
				}
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		spriteLeaderboardGameOver.setSize(spriteLeaderboardGameOver.getWidth()/1.5f, spriteLeaderboardGameOver.getHeight()/1.5f);
		spriteLeaderboardGameOver.setPosition(CAMERA_WIDTH/2 + 10, spritePlayGameOver.getY());
		mScene.registerTouchArea(spriteLeaderboardGameOver);
		layerGameOver.attachChild(spriteLeaderboardGameOver);
		
		spriteMore = new Sprite(0, 0, regionMore, getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && layerGameOver.isVisible()) {
					if (mCrossPromotion != null) {
						mCrossPromotion.showCrossPromotion();
					}
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		spriteMore.setSize(spriteMore.getWidth()/1.5f, spriteMore.getHeight()/1.5f);
		spriteMore.setPosition(CAMERA_WIDTH/2 - spriteMore.getWidth()/2, spriteLeaderboardGameOver.getY() + spriteLeaderboardGameOver.getHeight() + 20);
		layerGameOver.attachChild(spriteMore);
		mScene.registerTouchArea(spriteMore);
		
		spriteScoreBoard = new Sprite(0, 0, regionScoreBoard, getVertexBufferObjectManager());
		spriteScoreBoard.setSize(spriteScoreBoard.getWidth()/2, spriteScoreBoard.getHeight()/2);
		spriteScoreBoard.setPosition(CAMERA_WIDTH/2 - spriteScoreBoard.getWidth()/2, spriteMore.getY() + spriteMore.getHeight() + 20);
		layerGameOver.attachChild(spriteScoreBoard);
		
		scoreOnBoardText = new Text(0, 0, mFontScoreBoard, "0123456789", getVertexBufferObjectManager());
		scoreOnBoardText.setPosition(30, 35);
		scoreOnBoardText.setColor(0.5f, 0.5f, 0.5f);
		scoreOnBoardText.setText("0");
		spriteScoreBoard.attachChild(scoreOnBoardText);
		
		bestScoreOnBoardText = new Text(0, 0, mFontScoreBoard, "0123456789", getVertexBufferObjectManager());
		bestScoreOnBoardText.setText("0");
		bestScoreOnBoardText.setColor(0.5f, 0.5f, 0.5f);
		bestScoreOnBoardText.setPosition(30, 87);
		spriteScoreBoard.attachChild(bestScoreOnBoardText);
		
		layerGameOver.setVisible(false);
		
		mScene.attachChild(layerGameOver);
	}
	
	public void initPlay() {
		// init bird
		long[] animateLong = { 100, 100, 100};
		spriteBird.setRotation(0);
		spriteBird.animate(animateLong);
		spriteBird.setPosition(40, CAMERA_HEIGHT / 2 - spriteBird.getWidth() / 2);
		
		// remove pipe
		if (spritePipeDown != null) {
			spritePipeDown.setVisible(false);
		}

		if (spritePipeDownOld != null) {
			spritePipeDownOld.setVisible(false);
		}

		if (spritePipeUp != null) {
			spritePipeUp.setVisible(false);
		}

		if (spritePipeUpOld != null) {
			spritePipeUpOld.setVisible(false);
		}
		
		spriteBackground.detachChild(spritePipeDown);
		spriteBackground.detachChild(spritePipeDownOld);
		spriteBackground.detachChild(spritePipeUp);
		spriteBackground.detachChild(spritePipeUpOld);

		// hide game over layero
		layerGameOver.setVisible(false);

		// init other params
		isGameOver = false;
		initPipe = false;
		
		// init core
		currentPoint = 0;
		currentScoreText.setText("0");
		
		// create pipe
		createPipes();
	}
	
	float jumpUpTime = 0.2f;
	float jumpDownTime = 2.5f;
	int jumpStep = 80;

	JumpModifier jumpUp;
	JumpModifier jumpDown;

	public void jump() {
		// play sound wing
		soundWing.play();

		// remove current animation
		spriteBird.unregisterEntityModifier(jumpUp);
		spriteBird.unregisterEntityModifier(jumpDown);
		
		// jump up
		jumpUp = new JumpModifier(jumpUpTime, spriteBird.getX(), spriteBird.getX(), spriteBird.getY(), spriteBird.getY() - jumpStep, 20) {
			@Override
			protected void onModifierFinished(IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierFinished(pItem);

				float jumpTime = (CAMERA_HEIGHT - spriteBird.getY()) * 1.0f / CAMERA_HEIGHT * jumpDownTime;
				jumpDown = new JumpModifier(jumpTime, spriteBird.getX(), spriteBird.getX(), spriteBird.getY(), CAMERA_HEIGHT - spriteBird.getHeight() - spriteLand.getHeight() + 7, 0, EaseBounceOut.getInstance());
				spriteBird.registerEntityModifier(jumpDown);

			}
		};

		// start animation
		spriteBird.registerEntityModifier(jumpUp);
	}

	boolean initPipe = false;
	float timeMovingPipes = 5.0f;
	int distanceBetweenPipes = 170;
	int minDistanceWidthTopEdge = 120;
	int maxDistanceWithTopEdge = CAMERA_HEIGHT - minDistanceWidthTopEdge - distanceBetweenPipes;

	public void createPipes() {
		spritePipeUpOld = spritePipeUp;
		spritePipeDownOld = spritePipeDown;

		int randomDistancewithTopEdge = minDistanceWidthTopEdge + new Random().nextInt(maxDistanceWithTopEdge - minDistanceWidthTopEdge);

		spritePipeUp = new Sprite(0, 0, regionPipeUp, getVertexBufferObjectManager());
		spritePipeUp.setSize(spritePipeUp.getWidth() * 1.5f, spritePipeUp.getHeight() * 1.5f);
		spritePipeUp.setPosition(CAMERA_WIDTH, randomDistancewithTopEdge + distanceBetweenPipes);
		
		spritePipeDown = new Sprite(0, 0, regionPipeDown, getVertexBufferObjectManager());
		spritePipeDown.setSize(spritePipeDown.getWidth() * 1.5f, spritePipeDown.getHeight() * 1.5f);
		spritePipeDown.setPosition(CAMERA_WIDTH, -spritePipeUp.getHeight() + randomDistancewithTopEdge);

		spriteBackground.attachChild(spritePipeUp);
		spriteBackground.attachChild(spritePipeDown);

		MoveXModifier moveXModifier = new MoveXModifier(timeMovingPipes, CAMERA_WIDTH, 0 - spritePipeUp.getWidth()) {
			@Override
			protected void onModifierFinished(final IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierFinished(pItem);

				getEngine().runOnUpdateThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						pItem.setVisible(false);
						pItem.detachSelf();
					}
				});
			}
		};

		spritePipeUp.registerEntityModifier(moveXModifier);
		spritePipeDown.registerEntityModifier(moveXModifier);

		runOnUiThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				new Handler().postDelayed(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						if (!isGameOver) {
							createPipes();
						}
					}
				}, 1300);
			}
		});

	}

	
	Sprite lastPipeForAddingPoint;
	public void addPoint() {
		soundPoint.play();
		currentPoint++;
		currentScoreText.setText(currentPoint + "");
		lastPipeForAddingPoint = spritePipeDownOld;
	}

	public void hitPipe() {
		// set some params
		isGameOver = true;
		lastGameOverTime = System.currentTimeMillis();
		
		// stop pipe animations
		if (spritePipeUpOld != null) {
			spritePipeUpOld.clearEntityModifiers();
		}
		if (spritePipeDownOld != null) {
			spritePipeDownOld.clearEntityModifiers();
		}
		if (spritePipeUp != null) {
			spritePipeUp.clearEntityModifiers();
		}
		if (spritePipeDown != null) {
			spritePipeDown.clearEntityModifiers();
		}
		
		// play hit sound
		soundHit.play();

		// stop flying bird
		long[] animationTime = { 100,0,0 };
		spriteBird.animate(animationTime);

		// show game over
		layerGameOver.setVisible(true);

		// show scoreboard
		int bestScore = Utils.getBestScore(this);
		if (bestScore < currentPoint) {
			bestScore = currentPoint;
			Utils.saveBestScore(this, bestScore);
		}
		bestScoreOnBoardText.setText(bestScore + "");
		scoreOnBoardText.setText(currentPoint + "");

		if (spriteCup != null) {
			if (currentPoint < 5) {
				spriteCup.setVisible(false);
			} else {
				spriteCup.setVisible(true);
			}
		}

		if (currentPoint >= 200) {
			spriteCup = new Sprite(190, 33, regionCup4, getVertexBufferObjectManager());
			spriteCup.setSize(spriteCup.getWidth()/2, spriteCup.getHeight()/2);
			spriteScoreBoard.attachChild(spriteCup);
		} else if (currentPoint >= 100) {
			spriteCup = new Sprite(190, 33, regionCup2, getVertexBufferObjectManager());
			spriteCup.setSize(spriteCup.getWidth()/2, spriteCup.getHeight()/2);
			spriteScoreBoard.attachChild(spriteCup);
		} else if (currentPoint >= 50) {
			spriteCup = new Sprite(190, 33, regionCup2, getVertexBufferObjectManager());
			spriteCup.setSize(spriteCup.getWidth()/2, spriteCup.getHeight()/2);
			spriteScoreBoard.attachChild(spriteCup);
		} else if (currentPoint >= 10) {
			spriteCup = new Sprite(190, 33, regionCup1, getVertexBufferObjectManager());
			spriteCup.setSize(spriteCup.getWidth()/2, spriteCup.getHeight()/2);
			spriteScoreBoard.attachChild(spriteCup);
		}

		playCount++;
		if (playCount % 5 == 0) {
			MobileCore.showOfferWall(this, null);
		}
	}

	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		unregisterReceiver(admobReceiver);
		System.exit(0);
	}
	
	@Override
	public void onBackPressed() {
		// TODO Auto-generated method stub
		
	}


}
