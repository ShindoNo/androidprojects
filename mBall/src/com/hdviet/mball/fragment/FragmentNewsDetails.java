package com.hdviet.mball.fragment;

import java.util.ArrayList;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import com.hdviet.mball.R;
import com.hdviet.mball.datacontrollers.ErrorCode;
import com.hdviet.mball.datacontrollers.NewsController;
import com.hdviet.mball.entity.News;
import com.hdviet.mball.entity.NewsDetails;
import com.nostra13.universalimageloader.core.ImageLoader;

public class FragmentNewsDetails extends Fragment{
	
	ProgressDialog mProgressDialog;
	
	String mNewsId;
	int mCurrentPage;
	
	public static FragmentNewsDetails getInstance(String newsId) {
		FragmentNewsDetails fragmentNewsDetails = new FragmentNewsDetails();
		fragmentNewsDetails.init(newsId);
		return fragmentNewsDetails;
	}
	
	public void init(String newsId) {
		mNewsId = newsId;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		return inflater.inflate(R.layout.fragment_news_details, container, false);
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
		loadNews(mNewsId);
	}
	
	@SuppressLint("SetJavaScriptEnabled")
	public void initUI() {
		mProgressDialog = new ProgressDialog(getActivity());
		mProgressDialog.setMessage("Loading...");
		
		WebView webview = (WebView)getView().findViewById(R.id.webview_content);
		webview.getSettings().setJavaScriptEnabled(true);
		webview.setWebViewClient(new WebViewClient());
		webview.setOnTouchListener(new OnTouchListener() {
			@Override
			public boolean onTouch(View v, MotionEvent event) {
				// TODO Auto-generated method stub
				return (event.getAction() == MotionEvent.ACTION_MOVE);
			}
		});
		
		
		getView().findViewById(R.id.tv_more_news).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				loadMore();
			}
		});
	}
	
	public void loadNews(String newsId) {
		mCurrentPage = 1;
		mNewsId = newsId;
		
		Handler handler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				// TODO Auto-generated method stub
				super.handleMessage(msg);
				mProgressDialog.dismiss();
				
				if (msg.what == ErrorCode.FAIL) {
					Toast.makeText(getActivity(), (String)msg.obj, Toast.LENGTH_SHORT).show();
				} else if (msg.what == ErrorCode.SUCCESS) {
					displayData((NewsDetails)msg.obj);
				}
			}
		};
		
		mProgressDialog.show();
		NewsController.getNewsDetails(handler, newsId);
	}
	
	public void displayData(NewsDetails newsDetails) {
		LayoutInflater inflater = LayoutInflater.from(getActivity());
		
		// add news top
		LinearLayout llNewsTop = (LinearLayout) getView().findViewById(R.id.ll_news_top);
		llNewsTop.removeAllViews();
		View newsTop = inflater.inflate(R.layout.item_news, null);
		ImageLoader.getInstance().displayImage(newsDetails.getImg(), (ImageView)newsTop.findViewById(R.id.img_news));
		((TextView)newsTop.findViewById(R.id.tv_title)).setText(newsDetails.getTitle());
		((TextView)newsTop.findViewById(R.id.tv_tourname)).setText(newsDetails.getTourname());
		((TextView)newsTop.findViewById(R.id.tv_time)).setText(newsDetails.getDatetime());
		llNewsTop.addView(newsTop);
		
		// add content
		((WebView)getView().findViewById(R.id.webview_content)).loadDataWithBaseURL("", newsDetails.getContent(),
																			"text/html", "utf-8", "");
		
		// add news more
		LinearLayout llNewsMore = (LinearLayout) getView().findViewById(R.id.ll_news_more);
		llNewsMore.removeAllViews();
		addNewsMore(newsDetails.getOtherNews());
		
		// scroll to top
		((ScrollView)getView().findViewById(R.id.sv_news_details)).post(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				((ScrollView)getView().findViewById(R.id.sv_news_details)).smoothScrollTo(0, 0);		
			}
		});		
	}
	
	public void addNewsMore(ArrayList<News> listNewsMore) {
		LayoutInflater inflater = LayoutInflater.from(getActivity());
		LinearLayout llNewsMore = (LinearLayout) getView().findViewById(R.id.ll_news_more);
		for (int i = 0; i < listNewsMore.size(); i++) {
			News news = listNewsMore.get(i);
			View newsView = inflater.inflate(R.layout.item_news, null);
			ImageLoader.getInstance().displayImage(news.getImg(), (ImageView)newsView.findViewById(R.id.img_news));
			((TextView)newsView.findViewById(R.id.tv_title)).setText(news.getTitle());
			((TextView)newsView.findViewById(R.id.tv_tourname)).setText(news.getTourname());
			((TextView)newsView.findViewById(R.id.tv_time)).setText(news.getDateTime());
			llNewsMore.addView(newsView);
			newsView.setTag(R.id.tag_id, news.getId());
			newsView.setOnClickListener(mOnClickNewsMore);
		}
	}
	
	public void loadMore() {
		if (getView().findViewById(R.id.pb_loading_news).getVisibility() == View.VISIBLE) {
			return;
		}
		
		Handler handler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				// TODO Auto-generated method stub
				super.handleMessage(msg);
				getView().findViewById(R.id.pb_loading_news).setVisibility(View.GONE);
				if (msg.what == ErrorCode.FAIL) {
					Toast.makeText(getActivity(), (String)msg.obj, Toast.LENGTH_SHORT).show();
				} else if (msg.what == ErrorCode.SUCCESS) {
					ArrayList<News> listNewsMore = (ArrayList<News>)msg.obj;
					if (listNewsMore.size() == 0) {
						getView().findViewById(R.id.tv_more_news).setVisibility(View.GONE);
					} else {
						addNewsMore(listNewsMore);
						mCurrentPage++;						
					}
				}
			}
		};
		
		getView().findViewById(R.id.pb_loading_news).setVisibility(View.VISIBLE);
		NewsController.getNewsRelated(handler, mCurrentPage+1, mNewsId);
	}
	
	OnClickListener mOnClickNewsMore = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String newsId = v.getTag(R.id.tag_id).toString();
			loadNews(newsId);
		}
	};
	
	

}
