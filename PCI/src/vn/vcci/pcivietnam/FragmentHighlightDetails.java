package vn.vcci.pcivietnam;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class FragmentHighlightDetails extends Fragment{
	
	Activity mActivity;
	View mMainView;
	String mHighlightContent;
	
	public static FragmentHighlightDetails getInstance(Activity activity, String highlightContent) {
		FragmentHighlightDetails fragmentHighlightDetails = new FragmentHighlightDetails();
		fragmentHighlightDetails.setData(activity, highlightContent);
		return fragmentHighlightDetails;
	}
	
	public void setData(Activity activity, String highlightContent) {
		mActivity = activity;
		mHighlightContent = highlightContent;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mMainView = inflater.inflate(R.layout.dialog_highlight_details, container, false);
		return mMainView;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		
		Utils.sendBroadcastMenuOrBack(mActivity, MainActivity.SHOW_BACK);
		
		WebView webView = (WebView) mMainView.findViewById(R.id.webview);
		webView.setWebViewClient(new WebViewClient());
		webView.loadDataWithBaseURL(null, mHighlightContent, "text/html", "utf-8", null);
	}
}
