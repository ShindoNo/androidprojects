package vn.cgo.sdk;

import org.json.JSONObject;

import vn.cgo.sdk.utils.NameSpace;
import vn.cgo.sdk.utils.Utils;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;

public class DialogPayment {

	public static final String PAYMENT_INTERFACE = "PaymentInterface";

	Context mContext;
	Dialog dialogPayment;
	WebView webviewPayment;
	OnPayListener mOnPayListener = null;

	public DialogPayment(Context context) {
		// TODO Auto-generated constructor stub
		mContext = context;
	}
	
	public DialogPayment(Context context, OnPayListener onPayListener) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mOnPayListener = onPayListener;
	}	

	public void showDialogPayment() {
		dialogPayment = new Dialog(mContext, android.R.style.Theme_Light_NoTitleBar_Fullscreen);
		dialogPayment.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialogPayment.setContentView(R.layout.dialog_payment);
		webviewPayment = (WebView) dialogPayment.findViewById(R.id.webview_payment);
		
		dialogPayment.findViewById(R.id.img_close).setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialogPayment.dismiss();
			}
		});
		
		dialogPayment.setOnKeyListener(new OnKeyListener() {
			@Override
			public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
				// TODO Auto-generated method stub
				if (keyCode == KeyEvent.KEYCODE_BACK && event.getAction() == KeyEvent.ACTION_UP) {
					if (webviewPayment.canGoBack()) {
						webviewPayment.goBack();
						return true;
					}
				}
				return false;
			}
		});
		
		dialogPayment.show();

//		getSession();
		initDialogPayment();
	}

//	public void getSession() {
//		new Thread(new Runnable() {
//			@Override
//			public void run() {
//				// TODO Auto-generated method stub
//				final String response = ServiceHelper.get(NameSpace.API_GET_SESSION, Utils.getDefaultParams(mContext));
//				((Activity) mContext).runOnUiThread(new Runnable() {
//					@Override
//					public void run() {
//						// TODO Auto-generated method stub
//						if (response == null) {
//							Utils.checkInternetAndToast(mContext);
//							return;
//						}
//
//						try {
//							JSONObject responseJSON = new JSONObject(response);
//							String sessionId = responseJSON.getString(NameSpace.session_id);
//							initDialogPayment(sessionId);
//						} catch (Exception e) {
//							// TODO: handle exception
//							e.printStackTrace();
//						}
//					}
//				});
//			}
//		}).start();
//	}
	
	long lastPaySuccessfulTime;
	
	@SuppressLint({ "JavascriptInterface", "SetJavaScriptEnabled" })
	public void initDialogPayment() {
		webviewPayment.getSettings().setJavaScriptEnabled(true);
		webviewPayment.addJavascriptInterface(new PaymentJSInterface(), PAYMENT_INTERFACE);

		webviewPayment.setWebViewClient(new WebViewClient() {
			@Override
			public void onPageStarted(WebView view, String url, Bitmap favicon) {
				// TODO Auto-generated method stub
				Log.e("cgo", "DialogPayment onPageStarted; url=" + url);
				
				 if (url.startsWith(NameSpace.REDIRECT_URI_1)) {
					 String params = Utils.getDefaultParams(mContext) + "&redirect_uri=" + NameSpace.REDIRECT_URI_2;
					 view.loadUrl(NameSpace.WEBVIEW_PAYMENT_LISTPACKAGE + params);					 
				 } else if (url.startsWith(NameSpace.REDIRECT_URI_2)) {
					 if (System.currentTimeMillis() - lastPaySuccessfulTime > 5000) { // avoid double load this one : url=http://redirect_finish_2/?amount=100+xu&status=received
						 lastPaySuccessfulTime = System.currentTimeMillis();
						 
						 if (url.contains("status")) {
							 	Uri uri = Uri.parse(url);
							 	String status = uri.getQueryParameter("status");
							 	if (status != null && status.equals("received")) {
							 		String amount = uri.getQueryParameter("amount");
							 		if (amount != null) {
							 			// pay successful
							 			if (mOnPayListener != null) {
							 				String orderId = uri.getQueryParameter("order_id");
							 				if (orderId != null) {
							 					mOnPayListener.onPaySuccessful(orderId);
							 				}
							 			}
							 			Toast.makeText(mContext, mContext.getString(R.string.pay_successful_you_received) + " " + amount, Toast.LENGTH_SHORT).show();
							 		}
							 	} else if (status != null && status.equals("failed")) { 
							 		if (mOnPayListener != null) {
							 			mOnPayListener.onPayFailed();
							 		}
							 		
							 		String errorMessage = uri.getQueryParameter("error_message");
							 		if (errorMessage != null) {
							 			Toast.makeText(mContext, errorMessage, Toast.LENGTH_SHORT).show();
							 		} else {
							 			Toast.makeText(mContext, mContext.getString(R.string.pay_failed), Toast.LENGTH_SHORT).show();
							 		}
							 	} else {
							 		if (mOnPayListener != null) {
							 			mOnPayListener.onPayFailed();
							 		}							 		
							 		
							 		Toast.makeText(mContext, mContext.getString(R.string.pay_failed), Toast.LENGTH_SHORT).show();
							 	}
							 	
							 	dialogPayment.dismiss();
							 	return;
						 }
					 }
				 } else {
						super.onPageStarted(view, url, favicon);
						dialogPayment.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);					 
				 }
			}

			@Override
			public boolean shouldOverrideUrlLoading(WebView view, String url) {
				// TODO Auto-generated method stub
				return super.shouldOverrideUrlLoading(view, url);
			}

			@Override
			public void onPageFinished(WebView view, String url) {
				// TODO Auto-generated method stub
				super.onPageFinished(view, url);
//				Log.e("cgo", "DialogPayment onPageFinished; url=" + url);

				view.loadUrl("javascript:function CGOJSExecute(method, orderInfo) {var orderText = JSON.stringify(orderInfo); PaymentInterface.sohapay(orderText);}");
				dialogPayment.findViewById(R.id.pb_loading).setVisibility(View.GONE);
			}
		});

		webviewPayment.setWebChromeClient(new WebChromeClient() {
			@Override
			public boolean onJsConfirm(WebView view, String url, String message, final JsResult result) {
				// TODO Auto-generated method stub
				Log.e("cgo", "onJsConfirm");
				Log.e("cgo", "url=" + url);
				Log.e("cgo", "message=" + message);

				new AlertDialog.Builder(mContext).setMessage(message).setPositiveButton(mContext.getString(R.string.confirm_yes), new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						result.confirm();
					}
				}).setNegativeButton(mContext.getString(R.string.confirm_no), new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						result.cancel();
					}
				}).create().show();

				return true;
			}
		});

		 String params = Utils.getDefaultParams(mContext) + "&redirect_uri=" + NameSpace.REDIRECT_URI_2;
		 webviewPayment.loadUrl(NameSpace.WEBVIEW_PAYMENT_LISTPACKAGE + params);
	}

//	@SuppressLint({ "JavascriptInterface", "SetJavaScriptEnabled" })
//	public void initDialogPayment(String sessionId) {
//		webviewPayment.getSettings().setJavaScriptEnabled(true);
//		webviewPayment.addJavascriptInterface(new PaymentJSInterface(), PAYMENT_INTERFACE);
//
//		webviewPayment.setWebViewClient(new WebViewClient() {
//			@Override
//			public void onPageStarted(WebView view, String url, Bitmap favicon) {
//				// TODO Auto-generated method stub
//				Log.e("cgo", "DialogPayment onPageStarted; url=" + url);
//				
//				 if (url.startsWith(NameSpace.REDIRECT_URI_1)) {
//					 String params = Utils.getDefaultParams(mContext) + "&redirect_uri=" + NameSpace.REDIRECT_URI_2;
//					 view.loadUrl(NameSpace.WEBVIEW_PAYMENT_LISTPACKAGE + params);					 
//				 } else if (url.startsWith(NameSpace.REDIRECT_URI_2)) {
//					 if (System.currentTimeMillis() - lastPaySuccessfulTime > 5000) { // avoid double load this one : url=http://redirect_finish_2/?amount=100+xu&status=received
//						 lastPaySuccessfulTime = System.currentTimeMillis();
//						 
//						 if (url.contains("status")) {
//							 	Uri uri = Uri.parse(url);
//							 	String status = uri.getQueryParameter("status");
//							 	if (status != null && status.equals("received")) {
//							 		String amount = uri.getQueryParameter("amount");
//							 		if (amount != null) {
//							 			Toast.makeText(mContext, mContext.getString(R.string.pay_successful_you_received) + " " + amount, Toast.LENGTH_SHORT).show();
//							 		}
//							 	} else {
//							 		Toast.makeText(mContext, mContext.getString(R.string.pay_failed), Toast.LENGTH_SHORT).show();
//							 	}
//							 	dialogPayment.dismiss();
//							 	return;
//						 }
//					 }
//				 } else {
//						super.onPageStarted(view, url, favicon);
//						dialogPayment.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);					 
//				 }
//			}
//
//			@Override
//			public boolean shouldOverrideUrlLoading(WebView view, String url) {
//				// TODO Auto-generated method stub
//				return super.shouldOverrideUrlLoading(view, url);
//			}
//
//			@Override
//			public void onPageFinished(WebView view, String url) {
//				// TODO Auto-generated method stub
//				super.onPageFinished(view, url);
////				Log.e("cgo", "DialogPayment onPageFinished; url=" + url);
//
//				view.loadUrl("javascript:function CGOJSExecute(method, orderInfo) {var orderText = JSON.stringify(orderInfo); PaymentInterface.sohapay(orderText);}");
//				dialogPayment.findViewById(R.id.pb_loading).setVisibility(View.GONE);
//			}
//		});
//
//		webviewPayment.setWebChromeClient(new WebChromeClient() {
//			@Override
//			public boolean onJsConfirm(WebView view, String url, String message, final JsResult result) {
//				// TODO Auto-generated method stub
//				Log.e("cgo", "onJsConfirm");
//				Log.e("cgo", "url=" + url);
//				Log.e("cgo", "message=" + message);
//
//				new AlertDialog.Builder(mContext).setMessage(message).setPositiveButton(mContext.getString(R.string.confirm_yes), new DialogInterface.OnClickListener() {
//					@Override
//					public void onClick(DialogInterface dialog, int which) {
//						// TODO Auto-generated method stub
//						result.confirm();
//					}
//				}).setNegativeButton(mContext.getString(R.string.confirm_no), new DialogInterface.OnClickListener() {
//					@Override
//					public void onClick(DialogInterface dialog, int which) {
//						// TODO Auto-generated method stub
//						result.cancel();
//					}
//				}).create().show();
//
//				return true;
//			}
//		});
//
//		 webviewPayment.loadUrl(NameSpace.WEBVIEW_SET_SESSION +
//				 				Utils.getDefaultParams(mContext) + "&session_id=" + sessionId +
//				 				"&redirect_uri=" + NameSpace.REDIRECT_URI_1);
//	}

	class PaymentJSInterface {

		ProgressDialog mProgressDialog;
		String orderText;

		public void sohapay(final String orderText) {
			this.orderText = orderText;
			Log.e("cgo", "orderText=" + orderText);
			
			((Activity) mContext).runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					loadPaymentTransfer();		
				}
			});
		}
		
		public void loadPaymentTransfer() {
			try {
				JSONObject orderJSON = new JSONObject(orderText);
				String orderInfo = orderJSON.getString(NameSpace.order_info);

				String params = Utils.getDefaultParams(mContext) + 
								"&order_info=" + orderInfo + 
								"&redirect_uri=" + NameSpace.REDIRECT_URI_2;
				webviewPayment.loadUrl(NameSpace.WEBVIEW_PAYMENT_TRANSFER + params);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	public interface OnPayListener {
		public void onPaySuccessful(String orderId);
		public void onPayFailed();
	}
	

}
