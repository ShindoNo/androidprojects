package com.sologame.sdk;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.graphics.PixelFormat;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.widget.ImageView;

import com.sologame.sdk.SoloSDK.OnLogoutListener;

public class SupportButton {

	Activity mActivity;
	View supportButton;
	long timeTouchDown;
	float buttonSize = 50;
	OnLogoutListener mOnLogoutListener;
	WindowManager.LayoutParams params;

	boolean pendingShowSupportButton;
	int lastX;
	int lastY;

	public SupportButton(Activity activity, OnLogoutListener onLogoutListener) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mOnLogoutListener = onLogoutListener;
		buttonSize = buttonSize * mActivity.getResources().getDisplayMetrics().density;

		supportButton = new ImageView(mActivity);
		((ImageView) supportButton).setImageResource(R.drawable.ic_sologame);
		supportButton.setOnTouchListener(mOnTouchListener);
		supportButton.setVisibility(View.GONE);

		attachToWindow(0, 0);
	}

	private void attachToWindow(int defaultX, int defaultY) {
		try {
			params = new WindowManager.LayoutParams();
			params.width = (int) buttonSize;
			params.height = (int) buttonSize;
			params.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
			params.format = PixelFormat.TRANSLUCENT;

			params.gravity = Gravity.TOP | Gravity.LEFT;
			params.x = defaultX;
			params.y = defaultY;

			((WindowManager) mActivity.getSystemService(Activity.WINDOW_SERVICE)).addView(supportButton, params);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	private void dettachFromWindow() {
		try {
			((WindowManager) mActivity.getSystemService(Activity.WINDOW_SERVICE)).removeView(supportButton);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void showButton() {
		supportButton.setVisibility(View.VISIBLE);
	}

	public void hideButton() {
		supportButton.setVisibility(View.GONE);
	}

	public void onPause() {
		if (supportButton.getVisibility() == View.VISIBLE) {
			pendingShowSupportButton = true;
			supportButton.setVisibility(View.GONE);
		}
	}

	public void onResume() {
		if (pendingShowSupportButton) {
			supportButton.setVisibility(View.VISIBLE);
		}
	}

	public void onDestroy() {
		dettachFromWindow();
	}

	OnTouchListener mOnTouchListener = new OnTouchListener() {
		private int initialX;
		private int initialY;
		private float initialTouchX;
		private float initialTouchY;

		@Override
		public boolean onTouch(View v, MotionEvent event) {
			// TODO Auto-generated method stub
			switch (event.getAction()) {
			case MotionEvent.ACTION_DOWN:
				timeTouchDown = System.currentTimeMillis();
				initialX = params.x;
				initialY = params.y;
				initialTouchX = event.getRawX();
				initialTouchY = event.getRawY();
				return true;
			case MotionEvent.ACTION_UP:
				if (System.currentTimeMillis() - timeTouchDown < 100) {
					supportButton.setVisibility(View.GONE);
					// dettachFromWindow();

					DialogDashboard dashboard = new DialogDashboard(mActivity, mOnLogoutListener);
					dashboard.setOnDismissListener(new OnDismissListener() {
						@Override
						public void onDismiss(DialogInterface dialog) {
							// TODO Auto-generated method stub
							supportButton.setVisibility(View.VISIBLE);
							// attachToWindow(lastX, lastY);
						}
					});
				} else {
					lastX = (int) event.getRawX();
					lastY = (int) event.getRawY();
				}

				return true;
			case MotionEvent.ACTION_MOVE:
				params.x = initialX + (int) (event.getRawX() - initialTouchX);
				params.y = initialY + (int) (event.getRawY() - initialTouchY);
				((WindowManager) mActivity.getSystemService(Activity.WINDOW_SERVICE)).updateViewLayout(supportButton,
						params);
				return true;
			}
			return false;
		}
	};

}
