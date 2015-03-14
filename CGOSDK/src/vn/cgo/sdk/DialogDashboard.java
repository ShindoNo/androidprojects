package vn.cgo.sdk;

import java.io.File;
import java.util.ArrayList;
import java.util.Random;

import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.json.JSONArray;
import org.json.JSONObject;

import vn.cgo.sdk.CGO.OnRequestFacebookListener;
import vn.cgo.sdk.imagepicker.DialogPickImage;
import vn.cgo.sdk.imagepicker.DialogPickImage.OnSelectImageListener;
import vn.cgo.sdk.utils.NameSpace;
import vn.cgo.sdk.utils.ServiceHelper;
import vn.cgo.sdk.utils.Utils;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.graphics.Bitmap;
import android.net.LocalSocketAddress.Namespace;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.nostra13.universalimageloader.core.ImageLoader;

public class DialogDashboard {

	Activity mActivity;
	View currentPage;
	
	String pageForum = "about:blank";
	String pageFanpage = "about:blank";
	String pageSupport = "http://id.cgo.vn/support";
	Dialog mDialog;
	OnRequestFacebookListener mOnRequestFacebookListener = null;
	
	String jsInterfaceName = "JsInterface";
	String jsCommand = "javascript:function CGOJSExecute(command, info) " +
						"{" +
							"if (command == 'sendFriendRequest')  JsInterface.sendFriendRequest(); " +
							"if (command == 'selectPhoto')  JsInterface.selectPhoto(); " +
							"if (command == 'uploadPhoto')  JsInterface.uploadPhoto(); " +
						"}";
	
	ArrayList<String> mSelectedImages;
	
	ProgressDialog mProgressDialog;
	
	class JavaScriptInterface {
		@JavascriptInterface
		public void sendFriendRequest() {
			mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					new CGO(mActivity).sendFacbookRequest(new OnRequestFacebookListener() {
						@Override
						public void onSucessful() {
							// TODO Auto-generated method stub
							Toast.makeText(mActivity, "Invite Successful", Toast.LENGTH_SHORT).show();
							if (mOnRequestFacebookListener != null) {
								mOnRequestFacebookListener.onSucessful();
							}
						}
						
						@Override
						public void onFailed() {
							// TODO Auto-generated method stub
							Toast.makeText(mActivity, "Invite Failed", Toast.LENGTH_SHORT).show();
							if (mOnRequestFacebookListener != null) {
								mOnRequestFacebookListener.onFailed();
							}							
						}
					});					
				}
			});
		}
		
		@JavascriptInterface
		public void selectPhoto() {
			mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					new DialogPickImage(mActivity, mOnSelectImageListener);
				}
			});
		}
		
		@JavascriptInterface
		public void uploadPhoto() {
			mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					if (mSelectedImages == null || mSelectedImages.size() == 0) {
						Toast.makeText(mActivity, mActivity.getResources().getString(R.string.please_select_image), Toast.LENGTH_SHORT).show();
					} else {
						mProgressDialog.setMessage("Uploading...");
						mProgressDialog.show();
						new Thread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								MultipartEntity multipartEntity = new MultipartEntity();
								for (int i = 0; i < mSelectedImages.size(); i++) {
									FileBody fileBody = new FileBody(new File(mSelectedImages.get(i)));
									multipartEntity.addPart("file[]", fileBody);
								}
								
								final String response = ServiceHelper.post(NameSpace.API_UPLOAD_IMAGE, multipartEntity);
								mActivity.runOnUiThread(new Runnable() {
									@Override
									public void run() {
										// TODO Auto-generated method stub
										mProgressDialog.dismiss();
										
										if (response == null) {
											Toast.makeText(mActivity, "Upload Failed", Toast.LENGTH_SHORT).show();
										} else {
											try {
												JSONObject responseJSON = new JSONObject(response);
												JSONArray listLink = responseJSON.getJSONArray("data");
												Log.e("cgo", "listLink=" + listLink.toString());
												String javascriptFillLink = "javascript: fill_image('" + listLink.toString() + "')";
												((WebView)mDialog.findViewById(R.id.webview)).loadUrl(javascriptFillLink);
												mDialog.findViewById(R.id.ll_selected_images).setVisibility(View.GONE);
											} catch (Exception e) {
												// TODO: handle exception
												e.printStackTrace();
											}
										}
									}
								});
							}
						}).start();
					}
				}
			});
		}
	}
	
	public DialogDashboard(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		initDashboard();
		loadDashboard();
	}
	
	public DialogDashboard(Activity activity, OnRequestFacebookListener onRequestFacebookListener) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mOnRequestFacebookListener = onRequestFacebookListener;
		initDashboard();
		loadDashboard();
	}	
	
	public void loadDashboard() {
		((WebView)mDialog.findViewById(R.id.webview)).loadUrl(pageForum);
	}
	
	@SuppressLint("SetJavaScriptEnabled")
	public void initDashboard() {
		try {
			mProgressDialog = new ProgressDialog(mActivity);
			JSONObject gameInfoJSON = new JSONObject(Utils.getGameInfo(mActivity));
			pageForum = gameInfoJSON.getString("forum_link");
			pageFanpage = gameInfoJSON.getString("facebook_url");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		mDialog  = new Dialog(mActivity, android.R.style.Theme_Light_NoTitleBar_Fullscreen);
		mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mDialog.setContentView(R.layout.dialog_dashboard);
		
		mDialog.findViewById(R.id.tv_page1).setSelected(true);
		currentPage = mDialog.findViewById(R.id.tv_page1);
		
		mDialog.findViewById(R.id.tv_page1).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				((WebView)mDialog.findViewById(R.id.webview)).loadUrl(pageForum);
				currentPage.setSelected(false);
				currentPage = v;
				currentPage.setSelected(true);
				((WebView)mDialog.findViewById(R.id.webview)).clearHistory();
			}
		});
		
		mDialog.findViewById(R.id.tv_page2).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				((WebView)mDialog.findViewById(R.id.webview)).loadUrl(pageFanpage);
				currentPage.setSelected(false);
				currentPage = v;
				currentPage.setSelected(true);
				((WebView)mDialog.findViewById(R.id.webview)).clearHistory();
			}
		});		
		
		mDialog.findViewById(R.id.tv_page3).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				((WebView)mDialog.findViewById(R.id.webview)).loadUrl(pageSupport);
				currentPage.setSelected(false);
				currentPage = v;
				currentPage.setSelected(true);
				((WebView)mDialog.findViewById(R.id.webview)).clearHistory();
			}
		});	
		
		mDialog.findViewById(R.id.img_close).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mDialog.dismiss();
			}
		});
		
		final WebView webView = (WebView) mDialog.findViewById(R.id.webview);
		webView.getSettings().setJavaScriptEnabled(true);
		webView.addJavascriptInterface(new JavaScriptInterface(), jsInterfaceName);
		webView.setWebViewClient(new WebViewClient() {
			@Override
			public void onPageStarted(WebView view, String url, Bitmap favicon) {
				// TODO Auto-generated method stub
				if (url.contains(Utils.getDefaultParams(mActivity))) {
					super.onPageStarted(view, url, favicon);	
				} else {
					if (url.contains("?")) {
						url = url + "&" + Utils.getDefaultParams(mActivity);
					} else {
						url = url + "?" + Utils.getDefaultParams(mActivity);
					}					
					view.loadUrl(url);
				}
				
				mDialog.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
				Log.e("cgo", "DialogDashboard url=" + url);
			}
			
			@Override
			public boolean shouldOverrideUrlLoading(WebView view, String url) {
				// TODO Auto-generated method stub
				Log.e("cgo", "shouldOverrideUrlLoading url=" + url);
				return super.shouldOverrideUrlLoading(view, url);
			}
			
			@Override
			public void onPageFinished(WebView view, String url) {
				// TODO Auto-generated method stub
				super.onPageFinished(view, url);
				mDialog.findViewById(R.id.pb_loading).setVisibility(View.GONE);
				view.loadUrl(jsCommand);
			}
		});
		
		mDialog.setOnKeyListener(new OnKeyListener() {
			@Override
			public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
				// TODO Auto-generated method stub
				if (keyCode == KeyEvent.KEYCODE_BACK && event.getAction() == KeyEvent.ACTION_UP) {
					if (webView.canGoBack()) {
						webView.goBack();
					}
					return true;
				}
				
				return false;
			}
		});
		
		mDialog.show();
	}
	
	OnSelectImageListener mOnSelectImageListener = new OnSelectImageListener() {
		@Override
		public void onSelected(ArrayList<String> selectedImages) {
			// TODO Auto-generated method stub
			
			if (selectedImages.size() >0) {
				mSelectedImages = selectedImages;
			}
			
			showSelectedImages();
		}
	};
	
	public void showSelectedImages() {
		LinearLayout llSelectedImages = (LinearLayout) mDialog.findViewById(R.id.ll_selected_images);
		llSelectedImages.setVisibility(View.VISIBLE);
		llSelectedImages.removeAllViews();
		
		LayoutInflater inflater = LayoutInflater.from(mActivity);
		for (int i = 0; i < mSelectedImages.size(); i++) {
			View rowSelectedImage = inflater.inflate(R.layout.row_selected_image, null);
			rowSelectedImage.setId(new Random().nextInt());
			llSelectedImages.addView(rowSelectedImage);
			ImageLoader.getInstance().displayImage("file://" + mSelectedImages.get(i), (ImageView)rowSelectedImage.findViewById(R.id.img_selected));
			rowSelectedImage.findViewById(R.id.img_deselect).setTag(R.id.tag_selected_image_path, mSelectedImages.get(i));
			rowSelectedImage.findViewById(R.id.img_deselect).setTag(R.id.tag_view, rowSelectedImage);
			rowSelectedImage.findViewById(R.id.img_deselect).setOnClickListener(mOnDeselectImage);
		}
	}
	
	OnClickListener mOnDeselectImage = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			((View)v.getTag(R.id.tag_view)).setVisibility(View.GONE);
			String imagePath = v.getTag(R.id.tag_selected_image_path).toString();
			mSelectedImages.remove(imagePath);
		}
	};
	
}
