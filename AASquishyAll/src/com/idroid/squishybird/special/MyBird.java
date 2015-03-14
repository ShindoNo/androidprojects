package com.idroid.squishybird.special;

import java.util.Random;

import org.andengine.entity.IEntity;
import org.andengine.entity.modifier.JumpModifier;
import org.andengine.entity.sprite.AnimatedSprite;
import org.andengine.entity.sprite.Sprite;
import org.andengine.opengl.font.Font;
import org.andengine.opengl.texture.region.ITiledTextureRegion;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

public class MyBird extends AnimatedSprite {
	public static final int PIPE_DISTANCE = 240;
	
	int CAMERA_WIDTH = 480;
	int CAMERA_HEIGHT = 800;
	
	float jumpBackTime = 0.5f;
	float jumpTime = 0.5f;
	float jumpLength = 100;
	
	int pointValue = 1;	
	
	public MyBird(float pX, float pY, ITiledTextureRegion pTiledTextureRegion, VertexBufferObjectManager pVertexBufferObjectManager) {
		super(pX, pY, pTiledTextureRegion, pVertexBufferObjectManager);
		// TODO Auto-generated constructor stub
	}
	
	public void initPosition() {
		setPosition(-this.getWidth(), new Random().nextInt(SceneLayer.PIPE1_TO_TOP));
	}
	
	
	public void startFlying() {
		// at least jumpHeight 1/2 distance between pipe
		if (this.getX() > CAMERA_WIDTH) {
			return;
		}
		
		int jumpHeight = (int) (PIPE_DISTANCE/2 +  new Random().nextInt(PIPE_DISTANCE/2) - this.getHeight() - 10);
		JumpModifier jumpModifier = new JumpModifier(jumpTime, getX(), getX() + jumpLength + new Random().nextFloat() * 70, this.getY(), SceneLayer.PIPE2_TO_TOP - this.getHeight() - 10, jumpHeight) {
			@Override
			protected void onModifierFinished(IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierFinished(pItem);
				
				startFlying();
			}
		};
		
		this.registerEntityModifier(jumpModifier);
	}
	
	public void jumpBack() {
		this.clearEntityModifiers();
		JumpModifier jumpModifier = new JumpModifier(jumpBackTime, this.getX(), -100, this.getY(), new Random().nextFloat() * 480, 100) {
			@Override
			protected void onModifierFinished(IEntity pItem) {
				// TODO Auto-generated method stub
				super.onModifierFinished(pItem);
				startFlying();
			}
		};
		
		this.registerEntityModifier(jumpModifier);
	}
	
	public void increaseSpeedAndPoint() {
		jumpTime = jumpTime - jumpTime * 0.05f;
		pointValue = pointValue + 5;
	}

}
