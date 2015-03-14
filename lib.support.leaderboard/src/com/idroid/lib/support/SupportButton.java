package com.idroid.lib.support;

import android.app.Activity;
import android.graphics.Rect;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.OvershootInterpolator;
import android.view.animation.Transformation;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;


public class SupportButton {
	Activity mActivity;
	View supportView;
	long timeTouchDown;
	
	float buttonSize = 70;
	float leftMargin = -1;
	float topMargin = -1;
	float rightMargin = -1;
	float bottomMargin = -1;
	int screenWidth, screenHeight;
	float deltaX, deltaY;
	
	DialogCrossPromotion mDialogCrossPromotion;
	
	public SupportButton(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		buttonSize = buttonSize * mActivity.getResources().getDisplayMetrics().density;
		screenWidth = mActivity.getResources().getDisplayMetrics().widthPixels;
		screenHeight = mActivity.getResources().getDisplayMetrics().heightPixels;
		initView();
		attachView();
		mDialogCrossPromotion = new DialogCrossPromotion(mActivity);
		
		Log.e("stk", "screen size=" + screenWidth + "x" + screenHeight);
		
		mActivity.findViewById(android.R.id.content).post(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				Rect rect = new Rect();
				mActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
				int statusBarHeight = rect.top;
				screenHeight = screenHeight - statusBarHeight;
			}
		});
	}
	
	public SupportButton(Activity activity, int buttonSize, int leftMargin, int topMargin, int rightMargin, int bottomMargin) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		float density = mActivity.getResources().getDisplayMetrics().density;
		
		this.buttonSize = buttonSize * density;
		
		if (leftMargin != -1) {
			this.leftMargin = leftMargin * density;	
		}
		
		if (topMargin != -1) {
			this.topMargin = topMargin * density;
		}
		
		if (rightMargin != -1) {
			this.rightMargin = rightMargin * density;
		}
		
		if (bottomMargin != -1) {
			this.bottomMargin = bottomMargin * density;	
		}
		
		screenWidth = mActivity.getResources().getDisplayMetrics().widthPixels;
		screenHeight = mActivity.getResources().getDisplayMetrics().heightPixels;
		initView();
		attachView();
		mDialogCrossPromotion = new DialogCrossPromotion(mActivity);
		
		mActivity.findViewById(android.R.id.content).post(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				Rect rect = new Rect();
				mActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
				int statusBarHeight = rect.top;
				screenHeight = screenHeight - statusBarHeight;
			}
		});
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
						mDialogCrossPromotion.show();
					}
					
					moveToEdge();
				}
				
				return true;
			}
		});
	}
	
	public void showButton() {
		supportView.setVisibility(View.VISIBLE);
	}
	
	public void hideButton() {
		supportView.setVisibility(View.GONE);
	}
	
	public void attachView() {
		((FrameLayout)mActivity.findViewById(android.R.id.content)).addView(supportView);
		
		if (leftMargin != -1) {
			((FrameLayout.LayoutParams)supportView.getLayoutParams()).leftMargin = (int) leftMargin;
		}
		
		if (topMargin != -1) {
			((FrameLayout.LayoutParams)supportView.getLayoutParams()).topMargin = (int) topMargin;
		}
		
		if (rightMargin != -1) {
			((FrameLayout.LayoutParams)supportView.getLayoutParams()).leftMargin = (int) (screenWidth - buttonSize - rightMargin);
		}
		
		if (bottomMargin != -1) {
			((FrameLayout.LayoutParams)supportView.getLayoutParams()).topMargin = (int) (screenHeight - buttonSize - bottomMargin);
		}
		
		supportView.requestLayout();
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
					((FrameLayout.LayoutParams)supportView.getLayoutParams()).topMargin = (int) ((screenHeight - (buttonSize + finalMinMargin) + finalMinMargin * interpolatedTime));
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
