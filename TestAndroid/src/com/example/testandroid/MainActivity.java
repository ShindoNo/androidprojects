package com.example.testandroid;
import java.util.Random;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;


public class MainActivity extends Activity{

	@SuppressLint("NewApi")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		final SemiCircleProgressBarView semiCircleProgressBarView = (SemiCircleProgressBarView) findViewById(R.id.progress);
        semiCircleProgressBarView.setLayerType(View.LAYER_TYPE_SOFTWARE, null);
//        semiCircleProgressBarView.setClipping(10);
        
        findViewById(R.id.btn_test).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				semiCircleProgressBarView.setClipping(new Random().nextInt(100));
			}
		});
		
	}
	
}
