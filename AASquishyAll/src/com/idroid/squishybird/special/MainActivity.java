 package com.idroid.squishybird.special;

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
import org.andengine.entity.modifier.AlphaModifier;
import org.andengine.entity.scene.Scene;
import org.andengine.entity.sprite.Sprite;
import org.andengine.entity.text.Text;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.font.Font;
import org.andengine.opengl.font.FontFactory;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.region.TiledTextureRegion;
import org.andengine.ui.activity.SimpleBaseGameActivity;
import org.andengine.util.color.Color;
import org.andengine.util.texturepack.TexturePack;
import org.andengine.util.texturepack.TexturePackLoader;
import org.andengine.util.texturepack.TexturePackTextureRegion;
import org.andengine.util.texturepack.TexturePackTextureRegionLibrary;
import org.andengine.util.texturepack.exception.TexturePackParseException;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Window;

import com.idroid.lib.support.ReadConfig;
import com.ironsource.mobilcore.CallbackResponse;
import com.ironsource.mobilcore.MobileCore;

public class MainActivity extends SimpleBaseGameActivity {
	
	public static final String ACTION_CHANGE_SCENE = "action_change_scene";
	public static final String EXTRA_CHANGE_SCENE = "extra_change_scene";
	
	public static final int CAMERA_WIDTH = 480;
	public static final int CAMERA_HEIGHT = 800;
	Scene mScene;
	
	ArrayList<MyBird> mBirds;
	ArrayList<Sprite> mSpriteBlood;
	
	CrossPromotion mCrossPromotion;
	
	Entity mLayerGetReady;
	Entity mLayerGameOver;
	
	Font mCurrentScoreFont;
	Font mScoreBoardFont;
	Text mCurrentScore;
	Text mScoreOnBoard;
	Text mScoreBestOnBoard;
	
	int mCurrentScoreNumber;
	
	Sprite cup1,cup2,cup3,cup4;
	
	DialogSettings mDialogSettings;
	
	boolean isGameOver;
	long lastGameOverTime;
	
	Sprite logo, btnPlay, btnLeaderboard, btnMore, btnMore2; // layer get ready
	Sprite gameOver, btnPlayGameover, btnRate, btnBack, scoreBoard; // layer game over
	
	Handler mHandler;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		mHandler = new Handler();
		mBirds = new ArrayList<MyBird>();
		if (Utils.getCurrentBird(this).equals("")) {
			Utils.setCurrentBird(this, "chickflying");
		}
		
		if (Utils.getCurrentScene(this).equals("")) {
			Utils.setCurrentScene(this, "chickflying");
		}
		
		mDialogSettings = new DialogSettings(this);
		
		new ReadConfig(this, "http://dl.sohagame.vn/android/config/games/squishybird/config5.0.txt");
		
		IntentFilter intentFilter = new IntentFilter(ACTION_CHANGE_SCENE);
		registerReceiver(mBroadcastReceiver, intentFilter);
	}
	
	BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() {
		@Override
		public void onReceive(Context context, Intent intent) {
			// TODO Auto-generated method stub
			changeScene();
		}
	};
	
	public void showSplashScreen() {
		final Dialog dialog = new Dialog(this, android.R.style.Theme_Black_NoTitleBar_Fullscreen);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.getWindow().getAttributes().windowAnimations = R.style.DialogSplash;
		dialog.setContentView(R.layout.dialog_splash);
		dialog.show();
		
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		}, 1500);
	}
	
	public void changeScene() {
		mScene.unregisterTouchArea(mCurrentSceneLayer.background);
		mCurrentSceneLayer.sceneLayer.setVisible(false);
		mScene.detachChild(mCurrentSceneLayer.sceneLayer);
		mCurrentSceneLayer = new SceneLayer(mScene, getVertexBufferObjectManager(), mTexturePackTextureRegionLibrary, Utils.getCurrentScene(this), soundClang);
		mScene.attachChild(mCurrentSceneLayer.sceneLayer);
		reAttach();
	}
	
	public void reAttach() {
		for (int i = 0; i < mSpriteBlood.size(); i++) {
			mScene.detachChild(mSpriteBlood.get(i));
			mScene.attachChild(mSpriteBlood.get(i));
		}
		
		mScene.detachChild(mLayerGetReady);
		mScene.attachChild(mLayerGetReady);
		
		mScene.detachChild(mLayerGameOver);
		mScene.attachChild(mLayerGameOver);
		
		mScene.detachChild(mCurrentScore);
		mScene.attachChild(mCurrentScore);
	}
	
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		System.exit(0);
		
		try {
			unregisterReceiver(mBroadcastReceiver);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	@Override
	public EngineOptions onCreateEngineOptions() {
		// TODO Auto-generated method stub
		Camera camera = new Camera(0, 0, CAMERA_WIDTH, CAMERA_HEIGHT);
		EngineOptions engineOptions = new EngineOptions(true, ScreenOrientation.PORTRAIT_FIXED, new FillResolutionPolicy(), camera);
		engineOptions.getAudioOptions().setNeedsMusic(true).setNeedsSound(true);
		
		return engineOptions;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * -------------------LOAD RESOURCE -------------------
	 * -------------------LOAD RESOURCE -------------------
	 * -------------------LOAD RESOURCE ------------------- 
	 */

	TexturePackTextureRegionLibrary mTexturePackTextureRegionLibrary;
	TexturePack mTexturePack;
	
	@Override
	protected void onCreateResources() {
		// TODO Auto-generated method stub
		try {
			mTexturePack = new TexturePackLoader(getAssets(), getTextureManager()).loadFromAsset("Map.xml", "");
			mTexturePack.loadTexture();
			mTexturePackTextureRegionLibrary = mTexturePack.getTexturePackTextureRegionLibrary();
			
		} catch (TexturePackParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		loadSound();
		loadFont();
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
	
	public void loadFont() {
		mCurrentScoreFont = FontFactory.createFromAsset(getFontManager(), getTextureManager(), 256, 256, TextureOptions.BILINEAR, getAssets(), "fonts/square_pixel.ttf", 100, true, Color.WHITE_ABGR_PACKED_INT);
		mCurrentScoreFont.load();
		
		mScoreBoardFont = FontFactory.createFromAsset(getFontManager(), getTextureManager(), 256, 256, TextureOptions.BILINEAR, getAssets(), "fonts/square_pixel.ttf", 48, true, Color.WHITE_ABGR_PACKED_INT);
		mScoreBoardFont.load();
	}
	
	
	
	
	
	
	
	
	
	/**
	 * -------------------LOAD SCENE -------------------
	 * -------------------LOAD SCENE -------------------
	 * -------------------LOAD SCENE -------------------
	 */
	@Override
	protected Scene onCreateScene() {
		// TODO Auto-generated method stub
		mScene = new Scene();
		
		createPlayScene();
		createSettingScene();
		
		mScene.registerUpdateHandler(mIUpdateHandler);
		return mScene;
	}
	
	SceneLayer mCurrentSceneLayer;
	
	public void createPlayScene() {
		// create scene
		mCurrentSceneLayer = new SceneLayer(mScene, getVertexBufferObjectManager(), mTexturePackTextureRegionLibrary, Utils.getCurrentScene(this), soundClang);
		mScene.attachChild(mCurrentSceneLayer.sceneLayer);
		
		// create blood
		mSpriteBlood = new ArrayList<Sprite>();
		for (int i = 1; i <= 30; i++) {
			Sprite blood = getSprite("blood_" + i + "_ip@2x.png");
			blood.setSize(blood.getWidth()*4f, blood.getHeight()*4f);
			blood.setPosition(mCurrentSceneLayer.pipe1.getX() + SceneLayer.PIPE_WIDTH/2 - blood.getWidth()/2, SceneLayer.PIPE1_TO_TOP + SceneLayer.PIPE_DISTANCE/2);
			blood.setVisible(false);
			mScene.attachChild(blood);
			mSpriteBlood.add(blood);
		}
		
		// create score
		mCurrentScore = new Text(0, 0, mCurrentScoreFont, "0123456789", getVertexBufferObjectManager());
		mCurrentScore.setText("0");
		mCurrentScore.setPosition(20, 20);
		mScene.attachChild(mCurrentScore);
	}
	
	
	public void createSettingScene() {
		mLayerGetReady = new Entity();
		// create get ready layer
		logo = getSprite(Map.TXT_LOGO_ID);
		logo.setPosition(CAMERA_WIDTH/2 - logo.getWidth()/2, CAMERA_HEIGHT/2 - logo.getHeight() - 150);
		mLayerGetReady.attachChild(logo);
		
		btnMore = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(Map.BTN_MORE_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGetReady.isVisible()) {
					runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mDialogSettings.mDialog.show();		
						}
					});
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnMore.setPosition(CAMERA_WIDTH/2 - btnMore.getWidth()/2, mCurrentSceneLayer.land.getY()-btnMore.getHeight());
		mLayerGetReady.attachChild(btnMore);	
		mScene.registerTouchArea(btnMore);
		
		btnPlay = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(Map.BTN_START_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGetReady.isVisible()) {
					initGame();
					startGame();
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnPlay.setSize(btnPlay.getWidth()*1.5f, btnPlay.getHeight()*1.5f);
		btnPlay.setPosition(CAMERA_WIDTH/2 - btnPlay.getWidth()/2, btnMore.getY() - btnPlay.getHeight() - 20);
		mLayerGetReady.attachChild(btnPlay);
		mScene.registerTouchArea(btnPlay);
		
		btnLeaderboard = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(Map.BTN_LEADERBOARD_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGetReady.isVisible()) {
					Intent intent = new Intent(MainActivity.this, LeaderboardActivity.class);
					startActivity(intent);
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnLeaderboard.setPosition(CAMERA_WIDTH/2 + 10, btnMore.getY() - btnLeaderboard.getHeight() - 20);
		mLayerGetReady.attachChild(btnLeaderboard);
		btnLeaderboard.setVisible(false);
//		mScene.registerTouchArea(btnLeaderboard);
		
		mScene.attachChild(mLayerGetReady);
		
		// create game over layer
		mLayerGameOver = new Entity();
		gameOver = getSprite(Map.TXT_GAMEOVER_ID);
		gameOver.setPosition(CAMERA_WIDTH/2 - gameOver.getWidth()/2, CAMERA_HEIGHT/2 - gameOver.getHeight() - 150);
		mLayerGameOver.attachChild(gameOver);
		
		btnPlayGameover = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(Map.BTN_START_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGameOver.isVisible()) {
					if (System.currentTimeMillis() - lastGameOverTime < 1000) {
						return true;
					}
					
					initGame();
					startGame();
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnPlayGameover.setPosition(CAMERA_WIDTH/2 - btnPlayGameover.getWidth() - 10 , mCurrentSceneLayer.land.getY() - btnPlayGameover.getHeight());
		mLayerGameOver.attachChild(btnPlayGameover);
		mScene.registerTouchArea(btnPlayGameover);
		
		btnRate = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(Map.BTN_RATE_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGameOver.isVisible()) {
					if (System.currentTimeMillis() - lastGameOverTime < 1000) {
						return true;
					}
					
					Intent intent = new Intent();
					intent.setData(Uri.parse("market://details?id=" + getPackageName()));
					startActivity(intent);
					
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnRate.setPosition(CAMERA_WIDTH/2 + 10, mCurrentSceneLayer.land.getY() - btnPlayGameover.getHeight());
		mLayerGameOver.attachChild(btnRate);
		mScene.registerTouchArea(btnRate);
		
		btnBack = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(Map.BTN_BACK_SMALL_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGameOver.isVisible()) {
					if (System.currentTimeMillis() - lastGameOverTime < 1000) {
						return true;
					}
					
					mLayerGameOver.setVisible(false);
					mLayerGetReady.setVisible(true);
					
					AlphaModifier alphaModifier = new AlphaModifier(2, 0, 1);
					logo.registerEntityModifier(alphaModifier);
					btnPlay.registerEntityModifier(alphaModifier);
					btnLeaderboard.registerEntityModifier(alphaModifier);
					btnMore.registerEntityModifier(alphaModifier);
					
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnBack.setSize(btnBack.getWidth()*1.5f, btnBack.getHeight()*1.5f);
		btnBack.setPosition(CAMERA_WIDTH/2 - btnBack.getWidth()/2, btnPlayGameover.getY() - btnBack.getHeight() - 20);
//		mLayerGameOver.attachChild(btnBack);
//		mScene.registerTouchArea(btnBack);
		
		btnMore2 = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(Map.BTN_MORE_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGameOver.isVisible()) {
					runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mDialogSettings.mDialog.show();		
						}
					});
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnMore2.setPosition(CAMERA_WIDTH/2 - btnBack.getWidth()/2, btnPlayGameover.getY() - btnMore2.getHeight() - 20);
		mLayerGameOver.attachChild(btnMore2);	
		mScene.registerTouchArea(btnMore2);		
		
		// create scoreboard (inside gameover layer)
		scoreBoard = getSprite(Map.SCORE_TABLE_ID);
		scoreBoard.setPosition(CAMERA_WIDTH/2 - scoreBoard.getWidth()/2, gameOver.getY() + gameOver.getHeight() + 20);
		mLayerGameOver.attachChild(scoreBoard);
		
		mScoreOnBoard = new Text(0, 0, mScoreBoardFont, "0123456789", getVertexBufferObjectManager());
		mScoreOnBoard.setText("0");
		mScoreOnBoard.setColor(0.5f, 0.5f, 0.5f);
		mScoreOnBoard.setPosition(25, 35);
		scoreBoard.attachChild(mScoreOnBoard);
		
		mScoreBestOnBoard = new Text(0, 0, mScoreBoardFont, "0123456789", getVertexBufferObjectManager());
		mScoreBestOnBoard.setText("0");
		mScoreBestOnBoard.setColor(0.5f, 0.5f, 0.5f);
		mScoreBestOnBoard.setPosition(25, 90);
		scoreBoard.attachChild(mScoreBestOnBoard);
		
		cup1 = getSprite(Map.CUP_1_ID);
//		cup1.setSize(cup1.getWidth()/2, cup1.getHeight()/2);
		cup1.setPosition(180, 33);
		scoreBoard.attachChild(cup1);
		
		cup2 = getSprite(Map.CUP_2_ID);
//		cup2.setSize(cup2.getWidth()/2, cup2.getHeight()/2);
		cup2.setPosition(180, 33);
		scoreBoard.attachChild(cup2);
		
		cup3 = getSprite(Map.CUP_3_ID);
//		cup3.setSize(cup3.getWidth()/2, cup3.getHeight()/2);
		cup3.setPosition(180, 33);
		scoreBoard.attachChild(cup3);
		
		cup4 = getSprite(Map.CUP_4_ID);
//		cup4.setSize(cup4.getWidth()/2, cup4.getHeight()/2);
		cup4.setPosition(180, 33);
		scoreBoard.attachChild(cup4);			
		
		mLayerGameOver.setVisible(false);
		mScene.attachChild(mLayerGameOver);
	}
	
	public Sprite getSprite(int spriteID) {
		return new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(spriteID), getVertexBufferObjectManager());
	}
	
	public Sprite getSprite(String spriteName) {
		return new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(spriteName), getVertexBufferObjectManager());
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
				if (mBirds.get(i).collidesWith(mCurrentSceneLayer.pipe1) || mBirds.get(i).collidesWith(mCurrentSceneLayer.pipe2)) {
					if (mBirds.get(i).getX() + mBirds.get(i).getWidth() < mCurrentSceneLayer.pipe1.getX() + mBirds.get(i).getWidth()/2) {
						// if 1/2 bird is between pipes => go back
						mBirds.get(i).increaseSpeedAndPoint();
						mBirds.get(i).jumpBack();
						soundGoBack.play();
					} else if (mBirds.get(i).getX() > mCurrentSceneLayer.pipe1.getX() + mCurrentSceneLayer.pipe1.getWidth() - mBirds.get(i).getWidth()/2)  { 
						// if 1/2 bird go over pipes => game over
						gameOver();
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
								showBlood(new Handler(), 0);								
							}
						});

					}
				} else if (mBirds.get(i).getX() > mCurrentSceneLayer.pipe1.getX() + mCurrentSceneLayer.pipe1.getWidth() - mBirds.get(i).getWidth()/2) {
					// if bird go over pipes ==> game over
					gameOver();
					return;
				}
			}
			
			mCurrentScoreNumber += score * combo;
			mCurrentScore.setText("" + mCurrentScoreNumber);
			
		}
	};
	
	long timeStartGame;
	int playCounter = 0;
	
	public void initGame() {
		Log.e("stk", "GAME START xxxxxxxxxx");
		
		mLayerGetReady.setVisible(false);
		mLayerGameOver.setVisible(false);
		
		mBirds.clear();
		isGameOver = false;
		mCurrentSceneLayer.isGameOver = false;
		timeStartGame = System.currentTimeMillis();
		mCurrentScoreNumber = 0;
		mCurrentScore.setText("0");
	}
	
	public void startGame() {
		long birdQuantity = ((System.currentTimeMillis() - timeStartGame)/1000/45) + 1;
		
		for (int i = 0; i < birdQuantity; i++) {
			mHandler.postDelayed(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					addBird();
				}
			}, i * 300);
		}
		
		runOnUiThread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
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
		});
	}
	
	// BIRD SIZE DEFAULT = 76 x 54
	
	public void addBird() {
		soundWing.play();
		
		MyBird spriteBird = new MyBird(0, 0, getBirdTextureRegion(), getVertexBufferObjectManager());
		float scale = 54 / spriteBird.getHeight();
		
		String currentBird = Utils.getCurrentBird(this);
		if (currentBird.equals("citybird") || currentBird.equals("flyingbieber")  
			|| currentBird.equals("flyingcyrus") || currentBird.equals("flyingdrizzy") 
			|| currentBird.equals("gangnamstyle") ) {
			spriteBird.setSize(64, 64);
		} else if (currentBird.equals("ironman") || currentBird.equals("superman")) {
			spriteBird.setSize(spriteBird.getWidth()*2, spriteBird.getHeight()*2);
		} else {
			spriteBird.setSize(spriteBird.getWidth() * scale, 54);	
		}
		
		Log.e("stk", "bird size=" + spriteBird.getWidth() + "x" + spriteBird.getHeight());
		
		spriteBird.animate(100);
		spriteBird.initPosition();
		
		mBirds.add(spriteBird);
		mScene.attachChild(spriteBird);
		spriteBird.startFlying();
	}
	
	public TiledTextureRegion getBirdTextureRegion() {
		TexturePackTextureRegion tptr = mTexturePackTextureRegionLibrary.get(Utils.getCurrentBird(this) + "_bird.png");
		
		return TiledTextureRegion.create(mTexturePack.getTexture(),
				 (int)tptr.getTextureX(), (int)tptr.getTextureY(),
				 (int)tptr.getWidth(), (int)tptr.getHeight(),
				 3, 1);
	}
	
	
	public void showBlood(final Handler handler, final int bloodPosition) {
		if (bloodPosition == 30) {
			return;
		}
		
		mSpriteBlood.get(bloodPosition).setVisible(true);
		handler.postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				mSpriteBlood.get(bloodPosition).setVisible(false);
				showBlood(handler, bloodPosition+1);
			}
		}, 30);
		
	}
	

	
	public void gameOver() {
		Log.e("stk", "GAME OVER xxxxxxxxxxx");
		
		isGameOver = true;
		mCurrentSceneLayer.isGameOver = true;
		lastGameOverTime = System.currentTimeMillis();
		
		mLayerGameOver.setVisible(true);
		AlphaModifier alphaModifier = new AlphaModifier(2, 0, 1);
		gameOver.registerEntityModifier(alphaModifier);
		scoreBoard.registerEntityModifier(alphaModifier);
		btnPlayGameover.registerEntityModifier(alphaModifier);
		btnRate.registerEntityModifier(alphaModifier);
		btnBack.registerEntityModifier(alphaModifier);
		
		
		playCounter++;
		
		if (playCounter % 3 == 0) {
			MobileCore.showOfferWall(this, null);
		}
		
		mScoreOnBoard.setText("" + mCurrentScoreNumber);
		
		if (mCurrentScoreNumber > Utils.getBestScore(this)) {
			Utils.saveBestScore(this, mCurrentScoreNumber);
			mScoreBestOnBoard.setText("" + mCurrentScoreNumber);
		} else {
			mScoreBestOnBoard.setText("" + Utils.getBestScore(this));
		}
		
		// show cup
		cup1.setVisible(false);
		cup2.setVisible(false);
		cup3.setVisible(false);
		cup4.setVisible(false);
		
		if (mCurrentScoreNumber >= 20000) {
			cup4.setVisible(true);
		} else if (mCurrentScoreNumber > 10000) {
			cup3.setVisible(true);
		} else if (mCurrentScoreNumber > 5000) {
			cup2.setVisible(true);
		} else if (mCurrentScoreNumber > 1000) {
			cup1.setVisible(true);
		}
	}
	
	@Override
	public void onBackPressed() {
		// TODO Auto-generated method stub
		MobileCore.showOfferWall(this, new CallbackResponse() {
			@Override
			public void onConfirmation(TYPE arg0) {
				// TODO Auto-generated method stub
				finish();
			}
		});
	}

}
