package com.idroid.poke.cookie;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
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
import org.andengine.entity.modifier.AlphaModifier;
import org.andengine.entity.modifier.RotationModifier;
import org.andengine.entity.modifier.ScaleAtModifier;
import org.andengine.entity.scene.Scene;
import org.andengine.entity.sprite.Sprite;
import org.andengine.entity.text.Text;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.font.Font;
import org.andengine.opengl.font.FontFactory;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.ui.activity.SimpleBaseGameActivity;
import org.andengine.util.color.Color;
import org.andengine.util.texturepack.TexturePack;
import org.andengine.util.texturepack.TexturePackLoader;
import org.andengine.util.texturepack.TexturePackTextureRegionLibrary;
import org.andengine.util.texturepack.exception.TexturePackParseException;

import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Window;

import com.ironsource.mobilcore.MobileCore;
import com.ironsource.mobilcore.MobileCore.LOG_TYPE;

public class MainActivity extends SimpleBaseGameActivity {
	
	public static final int CAMERA_WIDTH = 800;
	public static final int CAMERA_HEIGHT = 480;
	
	Scene mScene;
	TexturePack mTexturePack;
	TexturePackTextureRegionLibrary mTexturePackTextureRegionLibrary;
	
	Entity mLayerHome;
	ArrayList<Entity> mLayerHomeChild = new ArrayList<Entity>();
	
	Sprite spriteGuide;
	
	ArrayList<Sprite> mUnusedChild = new ArrayList<Sprite>();
	
	ArrayList<Sprite> scaleInThenFadeOutSprite = new ArrayList<Sprite>();
	
	Entity mLayerGameover;
	ArrayList<Sprite> mLayerGameoverChild = new ArrayList<Sprite>();
	Sprite medal1, medal2, medal3;
	
	Sprite cake1, cake2,bomb1, bomb2, dieLight;
	
	Font font1;
	Text pointText, timeCountdownText;
	Text scoreOnBoard, highScoreOnBoard;
	Text easyModeText, hardModeText;
	DecimalFormat decimalFormat = new DecimalFormat("#0.000");
	
	Sound soundBomb, soundCrack;
	
	/**
	 * Information
	 */
	long lastTimeResetCake;
	Random random = new Random(); // create random position cake and bomb
	int cakeNum; 				// number of cake to show (1 or 2)
	int destroyedCakeNum;		// number of destroyed cake
	int point;   				// user point
	boolean isGameOver = true;  // mark that game is over
	boolean enableBomb1 = false; // enable bomb
	boolean enableBomb2 = false;
	boolean clickedCake1; // mark that clicked cake 1
	boolean clickedCake2;  // mark that clicked cake 2
	
	float timeToClick = 0.75f;   // time to live
	String currentMode = Utils.EASY_MODE;
	
	CrossPromotionBottom mCrossPromotion;
	
	int playCount;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		mCrossPromotion = new CrossPromotionBottom(this);
		new ReadConfig(this, "http://dl.sohagame.vn/android/config/pokecookie/config%204.0.txt");
		
		try {
			MobileCore.init(this, new MCrypt("Ljava/lang/Runna", "Ljava/lang/Runna").decryptFromHexString("894f5cbb9488382e1b6ccf84c035c9054ae4dbbccc66768c53f916f603727733"), LOG_TYPE.PRODUCTION);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		showSplashScreen();
	}
	
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
				try {
					dialog.dismiss();	
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				} 
			}
		}, 1500);
	}	

	@Override
	public EngineOptions onCreateEngineOptions() {
		// TODO Auto-generated method stub
		Camera camera = new Camera(0, 0, CAMERA_WIDTH, CAMERA_HEIGHT);
		EngineOptions engineOptions = new EngineOptions(true, ScreenOrientation.LANDSCAPE_FIXED, new FillResolutionPolicy(), camera);
		engineOptions.getAudioOptions().setNeedsMusic(true).setNeedsSound(true);
		engineOptions.getTouchOptions().setNeedsMultiTouch(true);
		return engineOptions;
	}

	@Override
	protected void onCreateResources() {
		// TODO Auto-generated method stub
		try {
			mTexturePack = new TexturePackLoader(getAssets(), getTextureManager()).loadFromAsset("PokeACookie.xml", "");
			mTexturePack.loadTexture();
			mTexturePackTextureRegionLibrary = mTexturePack.getTexturePackTextureRegionLibrary();
			
		} catch (TexturePackParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	protected Scene onCreateScene() {
		// TODO Auto-generated method stub
		mScene = new Scene();
		
		loadFont();
		loadScreen();
		loadSound();
		
		return mScene;
	}
	
	public void loadScreen() {
		// background
		Sprite background = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.BACKGROUND_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		background.setSize(CAMERA_WIDTH, CAMERA_HEIGHT);
		mScene.attachChild(background);
		
		// layer home
		mLayerHome = new Entity();
		Sprite logo = getSprite(PokeACookie.LOGO_ID);
		logo.setPosition(CAMERA_WIDTH/2 - logo.getWidth()/2, 20);
		mLayerHome.attachChild(logo);
		mLayerHomeChild.add(logo);
		
		Sprite btnPlay = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.BTN_PLAY_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerHome.isVisible()) {
					soundCrack.play();
					showGuide();
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnPlay.setPosition(CAMERA_WIDTH/2 - btnPlay.getWidth()/2, logo.getY() + logo.getHeight() + 20);
		mLayerHomeChild.add(btnPlay);
		mScene.registerTouchArea(btnPlay);
		
		final Sprite light = getSprite(PokeACookie.LIGHT_ID);
		light.setPosition(btnPlay.getX() + btnPlay.getWidth()/2 - light.getWidth()/2, btnPlay.getY() + btnPlay.getHeight()/2 - light.getHeight()/2);
		mLayerHomeChild.add(light);
		rotateLight(light);

		mLayerHome.attachChild(light);
		mLayerHome.attachChild(btnPlay);
		
		final Sprite hand = getSprite(PokeACookie.HAND_ID);
		
		easyModeText = new Text(0, 0, font1, "Easy Mode", getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerHome.isVisible()) {
					soundCrack.play();
					hand.setPosition(easyModeText.getX() - 50, easyModeText.getY());
					timeToClick = 0.75f;
					currentMode = Utils.EASY_MODE;
					return true;
				}
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		easyModeText.setPosition(light.getX() + light.getWidth() - 50, light.getY() + light.getHeight()/2);
		mLayerHome.attachChild(easyModeText);
		mLayerHomeChild.add(easyModeText);
		mScene.registerTouchArea(easyModeText);

		hardModeText = new Text(0, 0, font1, "Hard Mode", getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerHome.isVisible()) {
					soundCrack.play();
					hand.setPosition(hardModeText.getX() - 50, hardModeText.getY());
					timeToClick = 0.5f;
					currentMode = Utils.HARD_MODE;
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		hardModeText.setPosition(easyModeText.getX(), easyModeText.getY() + 60);
		mLayerHome.attachChild(hardModeText);
		mLayerHomeChild.add(hardModeText);
		mScene.registerTouchArea(hardModeText);
		
		hand.setPosition(easyModeText.getX() - 50, easyModeText.getY());
		mLayerHome.attachChild(hand);
		mLayerHomeChild.add(hand);
		mScene.attachChild(mLayerHome);
		
		// layer guide
		spriteGuide = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.GUIDE_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && spriteGuide.isVisible() && isGameOver==true) {
					startGame(false);
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		spriteGuide.setPosition(CAMERA_WIDTH/2 - spriteGuide.getWidth()/2, CAMERA_HEIGHT/2 - spriteGuide.getHeight()/2);
		mScene.attachChild(spriteGuide);
		spriteGuide.setVisible(false);
		mScene.registerTouchArea(spriteGuide);
		
		// layer text point + countdown time
		pointText = new Text(0, 0, font1, "0123456789", getVertexBufferObjectManager());
		pointText.setText("0");
		pointText.setPosition(30, CAMERA_HEIGHT - 70);
		pointText.setVisible(false);
		mScene.attachChild(pointText);
		
		timeCountdownText = new Text(0, 0, font1, "0123456789.", getVertexBufferObjectManager());
		timeCountdownText.setText("0.000");
		timeCountdownText.setPosition(CAMERA_WIDTH - 30 - 130, CAMERA_HEIGHT-70);
		timeCountdownText.setVisible(false);
		mScene.attachChild(timeCountdownText);
		
		// layer play
		cake1 = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.COOKIE_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_DOWN && cake1.isVisible() && !clickedCake1 && !isGameOver) {
					clickedCake1 = true;
					destroyedCakeNum++;
					addPoint();
					soundCrack.play();
					
					showBreakCake(cake1.getX(), cake1.getY());
					
					if (destroyedCakeNum == cakeNum) {
						resetCake();	
					}
					return true;
				}
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		cake1.setVisible(false);
		mScene.attachChild(cake1);
		mScene.registerTouchArea(cake1);
		
		cake2 = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.COOKIE_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_DOWN && cake2.isVisible() && !clickedCake2 && !isGameOver) {
					clickedCake2 = true;
					destroyedCakeNum++;
					addPoint();
					soundCrack.play();
					
					showBreakCake(cake2.getX(), cake2.getY());
					
					if (destroyedCakeNum == cakeNum) {
						resetCake();
					}
					return true;
				}
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		cake2.setVisible(false);
		mScene.attachChild(cake2);
		mScene.registerTouchArea(cake2);
		
		bomb1 = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.BOOM_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_DOWN && bomb1.isVisible() && !isGameOver) {
					isGameOver = true;
					
					AlphaModifier fadeIn = new AlphaModifier(2, 0, 1) {
						@Override
						protected void onModifierFinished(IEntity pItem) {
							// TODO Auto-generated method stub
							super.onModifierFinished(pItem);
							gameOver();
						}
					};
					
					dieLight.setPosition(bomb1.getX() + bomb1.getWidth()/2 - dieLight.getWidth()/2, bomb1.getY() + bomb1.getHeight()/2 - dieLight.getHeight()/2);
					dieLight.setVisible(true);
					dieLight.registerEntityModifier(fadeIn);
					soundBomb.play();
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		bomb1.setVisible(false);
		mScene.attachChild(bomb1);
		mScene.registerTouchArea(bomb1);
		
		bomb2 = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.BOOM_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_DOWN && bomb1.isVisible() && !isGameOver) {
					isGameOver = true;
					
					AlphaModifier fadeIn = new AlphaModifier(2, 0, 1) {
						@Override
						protected void onModifierFinished(IEntity pItem) {
							// TODO Auto-generated method stub
							super.onModifierFinished(pItem);
							gameOver();
						}
					};
					
					dieLight.setPosition(bomb2.getX() + bomb2.getWidth()/2 - dieLight.getWidth()/2, bomb2.getY() + bomb2.getHeight()/2 - dieLight.getHeight()/2);
					dieLight.setVisible(true);
					dieLight.registerEntityModifier(fadeIn);
					soundBomb.play();
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		bomb2.setVisible(false);
		mScene.attachChild(bomb2);
		mScene.registerTouchArea(bomb2);		
		
		
		
		
		
		dieLight = getSprite(PokeACookie.DIE_LIGHT_ID);
		dieLight.setVisible(false);
		mScene.attachChild(dieLight);
		
		
		/**
		 * Layer game over
		 */
		mLayerGameover = new Entity();
		Sprite scoreBoard = getSprite(PokeACookie.SCORETABLE2_ID);
		scoreBoard.setSize(scoreBoard.getWidth()/1.5f, scoreBoard.getHeight()/1.5f);
		scoreBoard.setPosition(CAMERA_WIDTH/2 - scoreBoard.getWidth()/2, 0);
		mLayerGameover.attachChild(scoreBoard);
		mLayerGameoverChild.add(scoreBoard);
		
		scoreOnBoard = new Text(0, 0, font1, "0123456789", getVertexBufferObjectManager());
		scoreOnBoard.setText("0");
		scoreOnBoard.setColor(0.0f,0.0f,0.0f);
		scoreOnBoard.setPosition(scoreBoard.getWidth()/2-30, 32);
		scoreBoard.attachChild(scoreOnBoard);
		
		highScoreOnBoard = new Text(0, 0, font1, "0123456789", getVertexBufferObjectManager());
		highScoreOnBoard.setText("0");
		highScoreOnBoard.setColor(0,0,0);
		highScoreOnBoard.setPosition(scoreBoard.getWidth()/2, 115);
		scoreBoard.attachChild(highScoreOnBoard);
		
		medal1 = getSprite(PokeACookie.MEDAL1_ID);
		medal1.setSize(medal1.getWidth()/1.5f, medal1.getHeight()/1.5f);
		medal1.setPosition(scoreBoard.getWidth()/2 - medal1.getWidth()/2, 200);
		scoreBoard.attachChild(medal1);
		
		medal2 = getSprite(PokeACookie.MEDAL2_ID);
		medal2.setSize(medal2.getWidth()/1.5f, medal2.getHeight()/1.5f);
		medal2.setPosition(scoreBoard.getWidth()/2 - medal2.getWidth()/2, 200);
		scoreBoard.attachChild(medal2);
		
		medal3 = getSprite(PokeACookie.MEDAL3_ID);
		medal3.setSize(medal3.getWidth()/1.5f, medal3.getHeight()/1.5f);
		medal3.setPosition(scoreBoard.getWidth()/2 - medal3.getWidth()/2, 200);
		scoreBoard.attachChild(medal3);
		
		Sprite btnReplay = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.RELOADBUTTON_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGameover.isVisible()) {
					if (System.currentTimeMillis() - lastTimeGameOver < 1000) {
						return true;
					}
					
					mLayerGameover.setVisible(false);
					startGame(true);
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnReplay.setSize(86, 86);
		btnReplay.setPosition(scoreBoard.getX() + scoreBoard.getWidth() + 10, scoreBoard.getY() + scoreBoard.getHeight() - btnReplay.getHeight());
		mLayerGameover.attachChild(btnReplay);
		mLayerGameoverChild.add(btnReplay);
		mScene.registerTouchArea(btnReplay);
		
		Sprite btnHome = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.HOMEBUTTON_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGameover.isVisible()) {
					if (System.currentTimeMillis() - lastTimeGameOver < 1000) {
						return true;
					}
					
					mLayerGameover.setVisible(false);
					mLayerHome.setVisible(true);
					initGame();
					pointText.setVisible(false);
					timeCountdownText.setVisible(false);					
					
					AlphaModifier fadeIn = new AlphaModifier(2, 0, 1);
					for (int i = 0; i < mLayerHomeChild.size(); i++) {
						mLayerHomeChild.get(i).registerEntityModifier(fadeIn);
					}
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnHome.setSize(86, 86);
		btnHome.setPosition(scoreBoard.getX() + scoreBoard.getWidth() + 10, btnReplay.getY() - 10 - btnHome.getHeight());
		mLayerGameover.attachChild(btnHome);
		mLayerGameoverChild.add(btnHome);
		mScene.registerTouchArea(btnHome);
		
		Sprite btnLeaderboard = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.LEADERBOARD_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGameover.isVisible()) {
					if (System.currentTimeMillis() - lastTimeGameOver < 1000) {
						return true;
					}
					
					Intent intent = new Intent(MainActivity.this, LeaderboardActivity.class);
					startActivity(intent);
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnLeaderboard.setSize(86, 86);
		btnLeaderboard.setPosition(scoreBoard.getX() - btnLeaderboard.getWidth() - 10, scoreBoard.getY() + scoreBoard.getHeight() - btnLeaderboard.getHeight());
		mLayerGameover.attachChild(btnLeaderboard);
		mLayerGameoverChild.add(btnLeaderboard);
		mScene.registerTouchArea(btnLeaderboard);
		
		Sprite btnRate = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.RATE_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGameover.isVisible()) {
					if (System.currentTimeMillis() - lastTimeGameOver < 1000) {
						return true;
					}
					
					Intent intent = new Intent(Intent.ACTION_VIEW);
					intent.setData(Uri.parse("market://details?id="+ getPackageName()));
					startActivity(intent);
					return true;
				}
				
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnRate.setSize(86, 86);
		btnRate.setPosition(btnLeaderboard.getX(), btnLeaderboard.getY() - 10 - btnRate.getHeight());
		mLayerGameover.attachChild(btnRate);
		mLayerGameoverChild.add(btnRate);
		mScene.registerTouchArea(btnRate);
		
		Sprite btnMore = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(PokeACookie.COOKIE2_ID), getVertexBufferObjectManager()) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_UP && mLayerGameover.isVisible()) {
					mCrossPromotion.show();
					Log.e("stk", "SHOW CORSS PROMOTION xxxxx");
					return true;
				}
				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		btnMore.setPosition(10, CAMERA_HEIGHT - btnMore.getHeight() - 10);
		mLayerGameover.attachChild(btnMore);
		mLayerGameoverChild.add(btnMore);
		mScene.registerTouchArea(btnMore);
		
		mLayerGameover.setVisible(false);
		mScene.attachChild(mLayerGameover);
		
		// on update layer
		mScene.registerUpdateHandler(new IUpdateHandler() {
			@Override
			public void reset() {}
			
			@Override
			public void onUpdate(float pSecondsElapsed) {
				// TODO Auto-generated method stub
				if (isGameOver) {
					return;
				}
				
				float countDownTime = timeToClick - (System.currentTimeMillis() - lastTimeResetCake) * 1.0f / 1000;
				if (countDownTime < 0) {
					gameOver();
					countDownTime = 0;
				}
				timeCountdownText.setText(decimalFormat.format(countDownTime));
			}
		});
	}
	
	public Sprite getSprite(int spriteId) {
		return new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(spriteId), getVertexBufferObjectManager());
	}
	
	public void rotateLight(final Sprite light) {
		RotationModifier rotationModifier = new RotationModifier(15, 0, 360) {
			@Override
			protected void onModifierFinished(IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierFinished(pItem);
				rotateLight(light);
			}
		};
		light.registerEntityModifier(rotationModifier);
	}
	
	public void loadFont() {
		font1 = FontFactory.createFromAsset(getFontManager(), getTextureManager(), 256, 256, TextureOptions.BILINEAR, getAssets(), "fonts/angrybirds.ttf", 48, true, Color.WHITE_ABGR_PACKED_INT);
		font1.load();
	}
	
	public void loadSound() {
		try {
			soundBomb = SoundFactory.createSoundFromAsset(getSoundManager(), this, "sound/bomb.wav");
			soundCrack = SoundFactory.createSoundFromAsset(getSoundManager(), this, "sound/crack.m4a");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public void showGuide() {
		AlphaModifier fadeOut = new AlphaModifier(1, 1, 0) {
			@Override
			protected void onModifierFinished(IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierFinished(pItem);
				mLayerHome.setVisible(false);
			}
		};
		for (int i = 0; i < mLayerHomeChild.size(); i++) {
			mLayerHomeChild.get(i).registerEntityModifier(fadeOut);
		}
		
		AlphaModifier fadeIn = new AlphaModifier(1, 0, 1) {
			@Override
			protected void onModifierStarted(IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierStarted(pItem);
			}
			
			@Override
			protected void onModifierFinished(IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierFinished(pItem);
			}
		};
		spriteGuide.setVisible(true);
		spriteGuide.registerEntityModifier(fadeIn);
	}
	
	public void startGame(boolean isReplay) {
		initGame();
		
		Sprite ready = getSprite(PokeACookie.READY_ID);
		ready.setPosition(CAMERA_WIDTH/2 - ready.getWidth()/2, CAMERA_HEIGHT/2 - ready.getHeight()/2);
		ready.setVisible(false);
		mScene.attachChild(ready);
		mUnusedChild.add(ready);
		
		Sprite one = getSprite(PokeACookie.ONE_ID);
		one.setPosition(CAMERA_WIDTH/2 - one.getWidth()/2, CAMERA_HEIGHT/2 - one.getHeight()/2);
		one.setVisible(false);
		mScene.attachChild(one);
		mUnusedChild.add(one);
		
		Sprite two = getSprite(PokeACookie.TWO_ID);
		two.setPosition(CAMERA_WIDTH/2 - two.getWidth()/2, CAMERA_HEIGHT/2 - two.getHeight()/2);
		two.setVisible(false);
		mScene.attachChild(two);
		mUnusedChild.add(two);
		
		Sprite three = getSprite(PokeACookie.THREE_ID);
		three.setPosition(CAMERA_WIDTH/2 - three.getWidth()/2, CAMERA_HEIGHT/2 - three.getHeight()/2);
		three.setVisible(false);
		mScene.attachChild(three);
		mUnusedChild.add(three);
		
		scaleInThenFadeOutSprite.add(three);
		scaleInThenFadeOutSprite.add(two);
		scaleInThenFadeOutSprite.add(one);
		scaleInThenFadeOutSprite.add(ready);
		
		if (isReplay) {
			scaleInThenFadeOut();
		} else {
			AlphaModifier fadeOutSpriteGuide = new AlphaModifier(0.5f, 1, 0) {
				@Override
				protected void onModifierFinished(IEntity pItem) {
					// TODO Auto-generated method stub
					super.onModifierFinished(pItem);
					scaleInThenFadeOut();
					spriteGuide.setVisible(false);
				}
			};
			
			spriteGuide.registerEntityModifier(fadeOutSpriteGuide);
		}
	}
	
	public void scaleInThenFadeOut() {
		final Sprite sprite = scaleInThenFadeOutSprite.get(0);
		scaleInThenFadeOutSprite.remove(0);
		
		ScaleAtModifier scale = new ScaleAtModifier(0.5f, 1.0f, 1.2f, sprite.getWidth()/2, sprite.getY()/2) {
			@Override
			protected void onModifierFinished(IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierFinished(pItem);
				AlphaModifier fadeOut = new AlphaModifier(0.25f, 1, 0) {
					@Override
					protected void onModifierFinished(IEntity pItem) {
						// TODO Auto-generated method stub
						super.onModifierFinished(pItem);
						sprite.setVisible(false);
						if (scaleInThenFadeOutSprite.size() == 0) {
							resetCake();
						} else {
							scaleInThenFadeOut();
						}
					}
				};
				sprite.registerEntityModifier(fadeOut);
			}
		};
		
		sprite.setVisible(true);
		sprite.registerEntityModifier(scale);
	}
	
	public void initGame() {
		cakeNum = 1;
		point = 0;
		pointText.setText("0");
		pointText.setVisible(true);
		timeCountdownText.setVisible(true);
		timeCountdownText.setText(decimalFormat.format(timeToClick) + "");
		
		cake1.setVisible(false);
		cake2.setVisible(false);
		bomb1.setVisible(false);
		bomb2.setVisible(false);
		dieLight.setVisible(false);
		enableBomb1 = false;
		enableBomb2 = false;
	}
	
	public void resetCake() {
		Log.e("stk", "RESETCAKE xxxxx");
		lastTimeResetCake = System.currentTimeMillis();
		
		if (point == 4) {
			cakeNum = 2;
		}
		
		if (point == 10) {
			enableBomb1 = true;
		}
		
		if (point == 20) {
			enableBomb2 = true;
		}
		
		destroyedCakeNum = 0;
		clickedCake1 = false;
		clickedCake2 = false;
		isGameOver = false;
		
		cake1.setVisible(true);
		relocateCake1();
		
		if (cakeNum == 2) {
			cake2.setVisible(true);
			relocateCake2();
		}
		
		if (enableBomb1) {
			bomb1.setVisible(true);
			relocateBomb1();
		}
		
		if (enableBomb2) {
			bomb2.setVisible(true);
			relocateBomb2();
		}
	}
	
	int avoidAds = 30;
	
	public void relocateCake1() {
		cake1.setPosition(random.nextInt((int) (CAMERA_WIDTH - cake1.getWidth())), random.nextInt((int) (CAMERA_HEIGHT - cake1.getHeight() - avoidAds)));
	}
	
	public void relocateCake2() {
		cake2.setPosition(random.nextInt((int) (CAMERA_WIDTH - cake2.getWidth())), random.nextInt((int) (CAMERA_HEIGHT - cake2.getHeight() - avoidAds)));
		if (cake2.collidesWith(cake1)) {
			relocateCake2();
		}
	}
	
	public void relocateBomb1() {
		bomb1.setPosition(random.nextInt((int) (CAMERA_WIDTH - bomb1.getWidth())), random.nextInt((int) (CAMERA_HEIGHT - bomb1.getHeight())));
		if (bomb1.collidesWith(cake1) || bomb1.collidesWith(cake2)) {
			relocateBomb1();
		}
	}
	
	public void relocateBomb2() {
		bomb2.setPosition(random.nextInt((int) (CAMERA_WIDTH - bomb1.getWidth())), random.nextInt((int) (CAMERA_HEIGHT - bomb1.getHeight())));
		if (bomb2.collidesWith(cake1) || bomb2.collidesWith(cake2) || bomb2.collidesWith(bomb1)) {
			relocateBomb2();
		}		
	}
	
	public void addPoint() {
		point++;
		pointText.setText(point + "");
	}
	
	public void showBreakCake(float cakeX, float cakeY) {
		final Sprite breakCake = getSprite(PokeACookie.COOKIE_BREAK_ID);
		breakCake.setPosition(cakeX + cake1.getWidth()/2 - breakCake.getWidth()/2, cakeY + cake1.getHeight()/2 - breakCake.getHeight()/2);
		mScene.attachChild(breakCake);
		
		AlphaModifier fadeOut = new AlphaModifier(0.5f, 1, 0) {
			@Override
			protected void onModifierFinished(IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierFinished(pItem);
				breakCake.setVisible(false);
			}
		};
		breakCake.registerEntityModifier(fadeOut);
		mUnusedChild.add(breakCake);
	}
	
	long lastTimeGameOver;
	
	public void gameOver() {
		Log.e("stk", "GAME OVER xxxxx");
		
		playCount++;
		if (playCount % 4 == 0) {
			MobileCore.showOfferWall(this, null);
		}
		
		lastTimeGameOver = System.currentTimeMillis();
		isGameOver = true;
		
		// clear all unused child
		while (mUnusedChild.size() > 0) {
			mScene.detachChild(mUnusedChild.get(0));
			mUnusedChild.remove(0);
		}
		
		scoreOnBoard.setText(point + "");
		if (point > Utils.getBestScore(this, currentMode)) {
			Utils.saveBestScore(this, point, currentMode);
		}
		highScoreOnBoard.setText(Utils.getBestScore(this, currentMode) + "");
		
		medal1.setVisible(false);
		medal2.setVisible(false);
		medal3.setVisible(false);
		
		if (point > 20) {
			medal1.setVisible(true);
		}
		
		if (point > 100) {
			medal2.setVisible(true);
		}
		
		if (point > 200) {
			medal3.setVisible(true);
		}
		
		AlphaModifier fadeIn = new AlphaModifier(1, 0, 1);
		mLayerGameover.setVisible(true);
		
		for (int i = 0; i < mLayerGameoverChild.size(); i++) {
			mLayerGameoverChild.get(i).registerEntityModifier(fadeIn);
		}
		
	}
	
	@Override
	public void onBackPressed() {
		// TODO Auto-generated method stub
	}

}
