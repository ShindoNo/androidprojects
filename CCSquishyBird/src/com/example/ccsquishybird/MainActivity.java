package com.example.ccsquishybird;

import org.cocos2d.actions.interval.IntervalAction;
import org.cocos2d.actions.interval.MoveTo;
import org.cocos2d.layers.Layer;
import org.cocos2d.nodes.Director;
import org.cocos2d.nodes.Scene;
import org.cocos2d.nodes.Sprite;
import org.cocos2d.nodes.TextureManager;
import org.cocos2d.opengl.CCGLSurfaceView;
import org.cocos2d.types.CCSize;

import android.os.Bundle;
import android.app.Activity;
import android.util.Log;
import android.view.Menu;
import android.view.Window;
import android.view.WindowManager;

public class MainActivity extends Activity {
	
	CCGLSurfaceView mGLSurfaceView;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		Log.e("stk", "onCreate()");
		
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);

		mGLSurfaceView = new CCGLSurfaceView(this);
		
		setContentView(mGLSurfaceView);
		
		
	}
	
	@Override
	protected void onStart() {
		// TODO Auto-generated method stub
	 	super.onStart();
	 	Log.e("stk", "onStart()");
	 	
	 	
	 	
	 	Director.sharedDirector().attachInView(mGLSurfaceView);
	 	Director.sharedDirector().setLandscape(false);
	 	Director.sharedDirector().setDisplayFPS(true);
	 	Director.sharedDirector().setAnimationInterval(1.0f/60);
	 	
	 	DemoLayer layer = new DemoLayer();
	 	Scene scene = Scene.node();
	 	scene.addChild(layer);
	 	
	 	CCSize s = Director.sharedDirector().winSize();
	 	
	 	
	 	
	 	IntervalAction move = MoveTo.action(3, s.width-50, s.height-50);
	 	mBird.runAction(move);
	 	
	 	Director.sharedDirector().runWithScene(scene);
	 	
	}
	
	Sprite mBird;
	Layer mLayer;
	
	class DemoLayer extends Layer {
		
		public DemoLayer() {
			// TODO Auto-generated constructor stub
			CCSize s = Director.sharedDirector().winSize();
			mBird = Sprite.sprite("bird1_ip@2x.png");
			addChild(mBird, 1);
			
			mBird.setPosition(50, s.height/2);
		}
		
	}
	
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		Log.e("stk", "onPause()");
		Director.sharedDirector().pause();
	}
	
	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		Log.e("stk", "Resumse()");
		Director.sharedDirector().resume();
	}
	
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		Log.e("stk", "onDestroy()");
		TextureManager.sharedTextureManager().removeAllTextures();
	}
	
	
	

}
