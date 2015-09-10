package com.example.testcustomview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.support.v4.widget.SlidingPaneLayout.PanelSlideListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

public class MyView extends View {

	public MyView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
		super(context, attrs, defStyleAttr, defStyleRes);
		// TODO Auto-generated constructor stub
	}

	public MyView(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
		// TODO Auto-generated constructor stub
	}

	public MyView(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
	}

	public MyView(Context context) {
		super(context);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	protected void onSizeChanged(int w, int h, int oldw, int oldh) {
		// TODO Auto-generated method stub
		super.onSizeChanged(w, h, oldw, oldh);
		Log.e("stk", "onSizeChanged() " + w + "x" + h + "; old=" + oldw + "x" + oldh);
	}	

	@Override
	protected void onDraw(Canvas canvas) {
		// TODO Auto-generated method stub
		super.onDraw(canvas);
		
		Log.e("stk", "onDraw()");
		

		int width = getWidth();
		int height = getHeight();
		
		Log.e("stk", "size=" + width + "x" + height);

		// draw background
		Paint paint = new Paint();
		paint.setStyle(Paint.Style.FILL);
		paint.setColor(Color.GRAY);

		canvas.drawPaint(paint);

		

	}
	


}
