package com.idroid.squishybird.special;

import org.andengine.audio.sound.Sound;
import org.andengine.entity.Entity;
import org.andengine.entity.IEntity;
import org.andengine.entity.modifier.JumpModifier;
import org.andengine.entity.scene.Scene;
import org.andengine.entity.sprite.Sprite;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.util.texturepack.TexturePackTextureRegionLibrary;

public class SceneLayer {
	public static final int CAMERA_WIDTH = 480;
	public static final int CAMERA_HEIGHT = 800;
	
	/**
	 * Size Information
	 */
	// pipe
	public static int PIPE_WIDTH = 120;
	public static int PIPE_TO_LEFT = 330;
	public static int PIPE_DISTANCE = 240;
	public static int PIPE1_TO_TOP = 250;
	public static int PIPE2_TO_TOP = PIPE1_TO_TOP + PIPE_DISTANCE;
	
	// ground
	int groundHeight = 120;		

	Entity sceneLayer;
	public Sprite background;
	public Sprite pipe1;
	public Sprite pipe2;
	public Sprite land;
	
	Scene mScene;
	VertexBufferObjectManager mVertexBufferObjectManager;
	TexturePackTextureRegionLibrary mTexturePackTextureRegionLibrary;
	String mBirdName;
	
	Sound mSoundClang;
	
	boolean isGameOver = true;
	
	public SceneLayer(Scene scene, VertexBufferObjectManager vertexBufferObjectManager, TexturePackTextureRegionLibrary texturePackTextureRegionLibrary, String birdName, Sound soundClang) {
		// TODO Auto-generated constructor stub
		mScene = scene;
		mVertexBufferObjectManager = vertexBufferObjectManager;
		mTexturePackTextureRegionLibrary = texturePackTextureRegionLibrary;
		mBirdName = birdName;
		mSoundClang = soundClang;
		loadLayer();
		
	}
	
	public void loadLayer() {
		sceneLayer = new Entity();
		
		// create background
		Sprite flappyBirdbackground = getBackground(mBirdName + "_background1.png");
		flappyBirdbackground.setSize(CAMERA_WIDTH, CAMERA_HEIGHT);
		sceneLayer.attachChild(flappyBirdbackground);
		
		// create pipe
		pipe1 = getSprite(mBirdName + "_pipe1.png");
		float scalePipe1 = PIPE_WIDTH / pipe1.getWidth();
		pipe1.setSize(PIPE_WIDTH, pipe1.getHeight() * scalePipe1);
		pipe1.setPosition(PIPE_TO_LEFT, -pipe1.getHeight() + PIPE1_TO_TOP);
		sceneLayer.attachChild(pipe1);
		
		pipe2 = getSprite(mBirdName + "_pipe2.png");
		float scalePipe2 = PIPE_WIDTH / pipe2.getWidth();
		pipe2.setSize(PIPE_WIDTH, pipe2.getHeight() * scalePipe2);
		pipe2.setPosition(PIPE_TO_LEFT, PIPE2_TO_TOP);
		sceneLayer.attachChild(pipe2);
		
		// create land
		land = getSprite(mBirdName + "_ground.png");
		land.setSize(CAMERA_WIDTH, groundHeight);
		land.setPosition(0, CAMERA_HEIGHT - land.getHeight());
		sceneLayer.attachChild(land);
	}
	
	
	public Sprite getSprite(String spriteName) {
		return new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(spriteName), mVertexBufferObjectManager);
	}
	
	public Sprite getBackground(String spriteName) {
		Sprite background = new Sprite(0, 0, mTexturePackTextureRegionLibrary.get(spriteName), mVertexBufferObjectManager) {
			@Override
			public boolean onAreaTouched(TouchEvent pSceneTouchEvent, float pTouchAreaLocalX, float pTouchAreaLocalY) {
				// TODO Auto-generated method stub
				if (pSceneTouchEvent.getAction() == TouchEvent.ACTION_DOWN && !isGameOver) {
					movePipe();
					return true;
				} else {
					return false;
				}
				
//				return super.onAreaTouched(pSceneTouchEvent, pTouchAreaLocalX, pTouchAreaLocalY);
			}
		};
		mScene.registerTouchArea(background);
		return background;
	}
	
	boolean isMovingPipe;
	
	public void movePipe() {
		if (isMovingPipe) {
			return;
		}
		
		isMovingPipe = true;
		mSoundClang.play();
		
		JumpModifier jumpPipeDown = new JumpModifier(0.35f, pipe1.getX(), pipe1.getX(), pipe1.getY(), pipe1.getY(), -PIPE_DISTANCE/2);		
		pipe1.registerEntityModifier(jumpPipeDown);		
		
		JumpModifier jumpPipeUp = new JumpModifier(0.35f, pipe2.getX(), pipe2.getX(), pipe2.getY(), pipe2.getY(), PIPE_DISTANCE/2) {
			@Override
			protected void onModifierFinished(IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierFinished(pItem);
				isMovingPipe = false;
			}
		};
		pipe2.registerEntityModifier(jumpPipeUp);
	}
	
}
