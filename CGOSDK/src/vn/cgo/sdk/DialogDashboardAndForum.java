package vn.cgo.sdk;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class DialogDashboardAndForum {
	
	Context mContext;
	Dialog mDialog;
	WebView mWebView;
	String mWebUrl;
	
	public DialogDashboardAndForum(Context context, String webUrl) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mWebUrl = webUrl;
		initDialog();
//		getSession();
	}
	
	public void initDialog() {
		mDialog = new Dialog(mContext, android.R.style.Theme_Black_NoTitleBar_Fullscreen);
		mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mDialog.setContentView(R.layout.dialog_dashboard_and_forum);
		
		mWebView = (WebView) mDialog.findViewById(R.id.webview);
		mWebView.setWebViewClient(new WebViewClient() {
			@Override
			public void onPageStarted(WebView view, String url, Bitmap favicon) {
				// TODO Auto-generated method stub
				super.onPageStarted(view, url, favicon);
				mDialog.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
				
			}
			
			@Override
			public boolean shouldOverrideUrlLoading(WebView view, String url) {
				// TODO Auto-generated method stub
				Log.e("cgo", "DialogDashboardAndForum url=" + url);
				return super.shouldOverrideUrlLoading(view, url);
			}
			
			@Override
			public void onPageFinished(WebView view, String url) {
				// TODO Auto-generated method stub
				super.onPageFinished(view, url);
				mDialog.findViewById(R.id.pb_loading).setVisibility(View.GONE);
//				if (url.startsWith(NameSpace.WEBVIEW_SET_SESSION)) {
//					mWebView.loadUrl(mWebUrl);
//				}
			}
		});
		
		mWebView.loadUrl(mWebUrl);
		
		mDialog.setOnKeyListener(new OnKeyListener() {
			@Override
			public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
				// TODO Auto-generated method stub
				if (keyCode == KeyEvent.KEYCODE_BACK && event.getAction() == KeyEvent.ACTION_UP) {
					if (mWebView.canGoBack()) {
						mWebView.goBack();
						return true;
					}
				}
				return false;
			}
		});
		
		mDialog.findViewById(R.id.img_close).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mDialog.dismiss();
			}
		});
		
		mDialog.show();
	}
	
//	/** Step 1 : Get Session */
//	public void getSession() {
//		mDialog.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
//		new Thread(new Runnable() {
//			@Override
//			public void run() {
//				// TODO Auto-generated method stub
//				final String response = ServiceHelper.get(NameSpace.API_GET_SESSION, Utils.getDefaultParams(mContext));
//				((Activity)mContext).runOnUiThread(new Runnable() {
//					@Override
//					public void run() {
//						// TODO Auto-generated method stub
//						if (response == null) {
//							Utils.checkInternetAndToast(mContext);
//							mDialog.dismiss();
//							return;
//						}
//						
//						// {"session_id":"138081754422880"}
//						mDialog.findViewById(R.id.pb_loading).setVisibility(View.GONE);
//						try {
//							String sessionId = new JSONObject(response).getString(NameSpace.session_id);
//							setSession(sessionId);
//						} catch (Exception e) {
//							// TODO: handle exception
//							e.printStackTrace();
//						}
//					}
//				});
//			}
//		}).start();
//		
//	}
//	
//	/** Step 2 : Set Session */
//	public void setSession(String sessionId) {
//		mWebView.loadUrl(NameSpace.WEBVIEW_SET_SESSION + Utils.getDefaultParams(mContext) + "&session_id=" + sessionId);
//	}
	
}
