package com.hdviet.mball.fragment;

import com.hdviet.mball.R;
import com.hdviet.mball.util.MyLog;
import com.hdviet.mball.util.Utils;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;

public class FragmentWebView extends Fragment{
	
	WebView mWebView;
	ProgressBar mProgressBarLoading;
	
	public static FragmentWebView getInstance() {
		FragmentWebView fragmentWebView = new FragmentWebView();
		fragmentWebView.init();
		return fragmentWebView;
	}
	
	public void init() {
			
	}
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		MyLog.log("FragmentWebView onCreate()");
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		return inflater.inflate(R.layout.fragment_webview, container, false);
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	@SuppressLint("SetJavaScriptEnabled")
	public void initUI() {
		mProgressBarLoading = (ProgressBar) getView().findViewById(R.id.pb_loading);
		mWebView = (WebView) getView().findViewById(R.id.webview);
		mWebView.getSettings().setJavaScriptEnabled(true);
		mWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
		mWebView.setWebViewClient(new WebViewClient() {
			@Override
			public void onPageStarted(WebView view, String url, Bitmap favicon) {
				// TODO Auto-generated method stub
				super.onPageStarted(view, url, favicon);
				MyLog.log("onPageStarted url=" + url);
				mProgressBarLoading.setVisibility(View.VISIBLE);
			}

			@Override
			public boolean shouldOverrideUrlLoading(WebView view, String url) {
				// TODO Auto-generated method stub
				if (url.contains("session_id"))
					return super.shouldOverrideUrlLoading(view, url);
				else {
					view.loadUrl(Utils.addSession(url));
					return true;
				}
			}

			@Override
			public void onPageFinished(WebView view, String url) {
				// TODO Auto-generated method stub
				super.onPageFinished(view, url);
				MyLog.log("onPageFinished url=" + url);
				mProgressBarLoading.setVisibility(View.GONE);
			}
		});
	}
	
	public void loadUrl(String url) {
		mWebView.loadUrl(url);
	}
	
	public String getCurrenturl() {
		return mWebView.getUrl();
	}
	
	public boolean canGoBack() {
		return mWebView.canGoBack();
	}
	
	public void goBack() {
		mWebView.goBack();
	}

}
