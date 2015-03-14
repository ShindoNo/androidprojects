package vn.cgo.sdk;

import org.json.JSONObject;

import vn.cgo.sdk.CGO.OnRequestFacebookListener;
import vn.cgo.sdk.utils.NameSpace;
import vn.cgo.sdk.utils.ServiceHelper;
import vn.cgo.sdk.utils.Utils;
import android.app.Activity;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.OvershootInterpolator;
import android.view.animation.Transformation;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;

public class SupportButton {
	
	Activity mActivity;
	View supportView;
	long timeTouchDown;
	
	float buttonSize = 50;
	int screenWidth, screenHeight;
	float deltaX, deltaY;
	
	int timeRequestNotify = 10 * 60 * 1000;
	
	boolean isDestroyed = false;
	
	OnRequestFacebookListener mOnRequestFacebookListener = null;
	
	int mContentTop = 0;
	
	public SupportButton(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		buttonSize = buttonSize * mActivity.getResources().getDisplayMetrics().density;
		screenWidth = mActivity.getResources().getDisplayMetrics().widthPixels;
		screenHeight = mActivity.getResources().getDisplayMetrics().heightPixels;
		initView();
		attachView();
		getNotify();
		mContentTop = mActivity.findViewById(android.R.id.content).getTop();
	}
	
	public SupportButton(Activity activity, OnRequestFacebookListener onRequestFacebookListener) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mOnRequestFacebookListener = onRequestFacebookListener;
		buttonSize = buttonSize * mActivity.getResources().getDisplayMetrics().density;
		screenWidth = mActivity.getResources().getDisplayMetrics().widthPixels;
		screenHeight = mActivity.getResources().getDisplayMetrics().heightPixels;
		initView();
		attachView();
		getNotify();
		mContentTop = mActivity.findViewById(android.R.id.content).getTop();
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
						
						if (mOnRequestFacebookListener != null) {
							CGO.showDashboard(mActivity, mOnRequestFacebookListener);
						} else {
							CGO.showDashboard(mActivity);	
						}
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
	
	public void getNotify() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				final String response = ServiceHelper.get(NameSpace.API_NOTIFY, Utils.getDefaultParams(mActivity));
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						if (response != null) {
							try {
								JSONObject notify = new JSONObject(response);
								int total = notify.getInt("total");
								if (total > 0) {
									supportView.findViewById(R.id.tv_notify).setVisibility(View.VISIBLE);
									((TextView)supportView.findViewById(R.id.tv_notify)).setText(total + "");
								} else {
									supportView.findViewById(R.id.tv_notify).setVisibility(View.GONE);
								}
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
							
							new Handler().postDelayed(new Runnable() {
								@Override
								public void run() {
									// TODO Auto-generated method stub
									if (!isDestroyed) {
										getNotify();
									}
								}
							}, timeRequestNotify);
						}
					}
				});
			}
		}).start();
	}
	
	
	
	
}
