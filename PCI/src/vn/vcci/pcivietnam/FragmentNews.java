package vn.vcci.pcivietnam;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class FragmentNews extends Fragment {
	
	Activity mActivity;
	View mMainView;
	
	public static FragmentNews getInstance(Activity activity) {
		FragmentNews fragmentNews = new FragmentNews();
		fragmentNews.setData(activity);
		return fragmentNews;
	}
	
	public void setData(Activity activity) {
		mActivity = activity;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mMainView = inflater.inflate(R.layout.fragment_news, container, false);
		return mMainView;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	public void initUI() {
		WebView webView = (WebView) mMainView.findViewById(R.id.webview_news);
		webView.setWebViewClient(new WebViewClient() {
			@Override
			public void onPageStarted(WebView view, String url, Bitmap favicon) {
				// TODO Auto-generated method stub
				super.onPageStarted(view, url, favicon);
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mMainView.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
					}
				});
			}
			
			@Override
			public void onPageFinished(WebView view, String url) {
				// TODO Auto-generated method stub
				super.onPageFinished(view, url);
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mMainView.findViewById(R.id.pb_loading).setVisibility(View.GONE);
					}
				});
			}
		});
		
		if (Utils.getLanguage(mActivity).equals("1")) {
			webView.loadUrl("http://www.pcivietnam.org/index.php?lang=vi");	
		} else {
			webView.loadUrl("http://www.pcivietnam.org/index.php?lang=en");
		}
		
	}
	
	

}
