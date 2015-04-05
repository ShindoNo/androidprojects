package com.sologame.sdk;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.OvershootInterpolator;
import android.view.animation.Transformation;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

import com.sologame.sdk.SoloSDK.OnLogoutListener;
import com.sologame.sdk.util.MyLog;

public class SupportButton {
	
	Activity mActivity;
	View supportView;
	long timeTouchDown;
	
	float buttonSize = 50;
	int screenWidth, screenHeight;
	float deltaX, deltaY;
		
	int mContentTop = 0;
	
	OnLogoutListener mOnLogoutListener;
	
	public SupportButton(Activity activity, OnLogoutListener onLogoutListener) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mOnLogoutListener = onLogoutListener;
		buttonSize = buttonSize * mActivity.getResources().getDisplayMetrics().density;
		screenWidth = mActivity.getResources().getDisplayMetrics().widthPixels;
		screenHeight = mActivity.getResources().getDisplayMetrics().heightPixels;
		initView();
		attachView();
		mContentTop = mActivity.findViewById(android.R.id.content).getTop();
		MyLog.log("mContentTop=" + mContentTop);
	}
	
	public void initView() {
		supportView = LayoutInflater.from(mActivity).inflate(R.layout.support_button, null);
		supportView.setLayoutParams(new FrameLayout.LayoutParams((int)buttonSize, (int)buttonSize));
		supportView.setOnTouchListener(new OnTouchListener() {
			@Override
			public boolean onTouch(View v, MotionEvent event) {
				// TODO Auto-generated method stub
				if (event.getAction() == MotionEvent.ACTION_DOWN) {
					timeTouchDown = System.currentTimeMillis();
					deltaX = event.getX();
					deltaY = event.getY();
				} else if (event.getAction() == MotionEvent.ACTION_MOVE) {
					float marginLeft = event.getRawX() - deltaX;
					float marginTop = event.getRawY() - deltaY;
					
					marginTop = marginTop - mContentTop;
					
					if (marginLeft < 0) {
						marginLeft = 0;
					}
					if (marginLeft > screenWidth - buttonSize) {
						marginLeft = screenWidth - buttonSize;
					}
					
					if (marginTop < 0) {
						marginTop = 0;
					}
					if (marginTop > screenHeight - buttonSize) {
						marginTop = screenHeight - buttonSize;
					}
					
					FrameLayout.LayoutParams lp = (LayoutParams) supportView.getLayoutParams();
					lp.setMargins((int)marginLeft, (int)marginTop, 0, 0);
					supportView.setLayoutParams(lp);
					supportView.requestLayout();
				} else if (event.getAction() == MotionEvent.ACTION_UP) {
					if (System.currentTimeMillis() - timeTouchDown < 100) {
						supportView.findViewById(R.id.tv_notify).setVisibility(View.GONE);
						new DialogDashboard(mActivity, mOnLogoutListener);
					}
					
					moveToEdge();
				}
				
				return true;
			}
		});
		
		
	}
	
	public void attachView() {
		((FrameLayout)mActivity.findViewById(android.R.id.content)).addView(supportView);
	}
	
	public void moveToEdge() {
		FrameLayout.LayoutParams lp = (LayoutParams) supportView.getLayoutParams();
		int minMargin = lp.leftMargin;
		if (minMargin > lp.topMargin) {
			minMargin = lp.topMargin;
		}
		if (minMargin > screenWidth - lp.leftMargin - buttonSize) {
			minMargin = (int) (screenWidth - lp.leftMargin - buttonSize);
		}
		if (minMargin > screenHeight - lp.topMargin - buttonSize) {
			minMargin = (int) (screenHeight - lp.topMargin - buttonSize);
		}
		
		final int finalMinMargin = minMargin;
		Animation animation = null;
		
		if (finalMinMargin == lp.leftMargin) {
			animation  = new Animation() {
				@Override
				protected void applyTransformation(float interpolatedTime, Transformation t) {
					// TODO Auto-generated method stub
					super.applyTransformation(interpolatedTime, t);
					((FrameLayout.LayoutParams)supportView.getLayoutParams()).leftMargin = (int) (finalMinMargin * (1 - interpolatedTime));
					supportView.requestLayout();
				}
			};
		} else if (finalMinMargin == lp.topMargin) {
			animation  = new Animation() {
				@Override
				protected void applyTransformation(float interpolatedTime, Transformation t) {
					// TODO Auto-generated method stub
					super.applyTransformation(interpolatedTime, t);
					((FrameLayout.LayoutParams)supportView.getLayoutParams()).topMargin = (int) (finalMinMargin * (1 - interpolatedTime));
					supportView.requestLayout();
				}
			};			
		} else if (finalMinMargin == screenWidth - lp.leftMargin - buttonSize) {
			animation  = new Animation() {
				@Override
				protected void applyTransformation(float interpolatedTime, Transformation t) {
					// TODO Auto-generated method stub
					super.applyTransformation(interpolatedTime, t);
					((FrameLayout.LayoutParams)supportView.getLayoutParams()).leftMargin = (int) ((screenWidth - (buttonSize + finalMinMargin) + finalMinMargin * interpolatedTime));
					supportView.requestLayout();
				}
			};			
		} else if (minMargin == screenHeight - lp.topMargin - buttonSize) {
			animation  = new Animation() {
				@Override
				protected void applyTransformation(float interpolatedTime, Transformation t) {
					// TODO Auto-generated method stub
					super.applyTransformation(interpolatedTime, t);
					((FrameLayout.LayoutParams)supportView.getLayoutParams()).topMargin = (int) ((screenHeight - (buttonSize + mContentTop + finalMinMargin) + finalMinMargin * interpolatedTime));
					supportView.requestLayout();
				}
			};			
		}
		
		// start moving
		animation.setDuration(200);
		animation.setInterpolator(new OvershootInterpolator());
		supportView.startAnimation(animation);
	}
	
	
	
	
	
	
}
