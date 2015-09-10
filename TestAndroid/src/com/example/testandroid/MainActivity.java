package com.example.testandroid;

import org.jivesoftware.smack.tcp.XMPPTCPConnection;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;

public class MainActivity extends FragmentActivity {

	int REQUEST_CODE_VOICE = 111;
	int REQUEST_CODE_TAKE_PICTURE = 111;

	XMPPTCPConnection mConnection;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		String s = "<p>Quý khách đã đăng ký thành công gói: <strong class=\"uk-text-primary\">'.$packet_info->code.'</strong></p>"
	       + "<p>Nhận ngay <strong class=\"uk-text-primary font-size-24\">100000</strong> GOLD</p>"
	       + "<p>Tham gia dự đoán trúng thưởng 1 trận Được quyền xem nội dung từ <strong class=\"uk-text-primary\">BallBall</strong></p>";
		
		
		((TextView)findViewById(R.id.tv_test)).setText(Html.fromHtml(s));

		WebView webView = (WebView) findViewById(R.id.webview);
		webView.setWebViewClient(new WebViewClient());
		webView.getSettings().setJavaScriptEnabled(true);
		webView.loadUrl("https://www.dailymotion.com/embed/video/x3332ze");
	

	}

}
