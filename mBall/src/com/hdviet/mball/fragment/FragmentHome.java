package com.hdviet.mball.fragment;

import java.util.ArrayList;

import com.hdviet.mball.NewsDetailsActivity;
import com.hdviet.mball.R;
import com.hdviet.mball.VideoDetailsActivity;
import com.hdviet.mball.datacontrollers.ErrorCode;
import com.hdviet.mball.datacontrollers.NewsController;
import com.hdviet.mball.datacontrollers.VideoController;
import com.hdviet.mball.entity.News;
import com.hdviet.mball.entity.Video;
import com.hdviet.mball.util.MyLog;
import com.nostra13.universalimageloader.core.ImageLoader;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class FragmentHome extends Fragment{
	
	public static int ACTION_VIDEO_DETAILS = 0x111;
	public static int ACTION_NEWS_DETAILS = 0x222;
	
	boolean initDownload = false;
	
	int mCurrentVideoPage;
	boolean downloadingVideo;
	
	int mCurrentNewsPage;
	boolean downloadingNews;
	
	// handle callback
	Handler mHandleCallback;
	
	public static FragmentHome getInstance(Handler handleCallback) {
		FragmentHome fragmentHome = new FragmentHome();
		fragmentHome.init(handleCallback);
		return fragmentHome;
	}
	
	public void init(Handler handleCallback) {
		mHandleCallback = handleCallback;
		
	}
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		MyLog.log("FragmentHome onCreate()");
	}
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		MyLog.log("FragmentHome onDestroy()");
	}
	
	@Override
	public void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		MyLog.log("FragmentHome onResume()");
	}
	
	@Override
	public void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		MyLog.log("FragmentHome onPause()");
	}
	
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		return inflater.inflate(R.layout.fragment_home, container, false);
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}

	public void initUI() {
		
		getView().findViewById(R.id.tv_more_video).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				downloadVideo();
			}
		});
		
		getView().findViewById(R.id.tv_more_news).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				downloadNews();
			}
		});

	}
	
	public void checkInitData() {
		if (initDownload) {
			return;
		}
		
		initDownload = true;
		initDownload();
	}
	
	public void initDownload() {
		initDownload = true;
		
		mCurrentVideoPage = 1;
		downloadVideo();		
		
		mCurrentNewsPage = 1;
		downloadNews();
	}
	
	public void downloadVideo() {
		if (downloadingVideo) {
			return;
		}
		
		Handler handler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				// TODO Auto-generated method stub
				super.handleMessage(msg);
				downloadingVideo = false;
				getView().findViewById(R.id.pb_loading_video).setVisibility(View.GONE);
				
				if (msg.what == ErrorCode.FAIL) {
					Toast.makeText(getActivity(), (String)msg.obj, Toast.LENGTH_SHORT).show();
				} else if (msg.what == ErrorCode.SUCCESS) {
					addListVideo((ArrayList<Video>)msg.obj);
					// increase current page
					mCurrentVideoPage++;
				}
			}
		};
		
		downloadingVideo = true;
		getView().findViewById(R.id.pb_loading_video).setVisibility(View.VISIBLE);
		VideoController.getVideos(handler, mCurrentVideoPage);
	}
	
	public void addListVideo(ArrayList<Video> listVideo) {
		if (listVideo.size() == 0) {
			getView().findViewById(R.id.tv_more_video).setVisibility(View.GONE);
		} else {
			int start = 0;
			LayoutInflater inflater = LayoutInflater.from(getActivity());
			LinearLayout llVideoContainer = (LinearLayout) getView().findViewById(R.id.ll_video_container);
			if (mCurrentVideoPage == 1) {
				start = 1;
				// add first video => big big big
				View firstVideoView = inflater.inflate(R.layout.item_video_big, null);
				Video firstVideo = listVideo.get(0);
				ImageLoader.getInstance().displayImage(firstVideo.getImg(), (ImageView)firstVideoView.findViewById(R.id.img_video));
				((TextView)firstVideoView.findViewById(R.id.tv_title)).setText(firstVideo.getTitle());
				llVideoContainer.addView(firstVideoView);
				firstVideoView.setTag(R.id.tag_id, firstVideo.getId());
				firstVideoView.setOnClickListener(mOnShowVideoDetails);
			}
			
			for (int i = start; i < listVideo.size(); i++) {
				View videoView = inflater.inflate(R.layout.item_video, null);
				Video video = listVideo.get(i);
				ImageLoader.getInstance().displayImage(video.getImg(), (ImageView)videoView.findViewById(R.id.img_video));
				((TextView)videoView.findViewById(R.id.tv_title)).setText(video.getTitle());
				((TextView)videoView.findViewById(R.id.tv_tourname)).setText(video.getTourname());
				((TextView)videoView.findViewById(R.id.tv_time)).setText(video.getDateTime());
				llVideoContainer.addView(videoView);
				videoView.setTag(R.id.tag_id, video.getId());
				videoView.setOnClickListener(mOnShowVideoDetails);
			}
		}
	}
	
	public void downloadNews() {
		if (downloadingNews) {
			return;
		}
		
		Handler handler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				// TODO Auto-generated method stub
				super.handleMessage(msg);
				downloadingNews = false;
				getView().findViewById(R.id.pb_loading_news).setVisibility(View.GONE);
				
				if (msg.what == ErrorCode.FAIL) {
					Toast.makeText(getActivity(), (String)msg.obj, Toast.LENGTH_SHORT).show();
				} else if (msg.what == ErrorCode.SUCCESS) {
					addListNews((ArrayList<News>)msg.obj);
					mCurrentNewsPage++;
				}
			}
		};
		
		downloadingNews = true;
		getView().findViewById(R.id.pb_loading_news).setVisibility(View.VISIBLE);
		NewsController.getNews(handler, mCurrentNewsPage);
	}
	
	public void addListNews(ArrayList<News> listNews) {
		if (listNews.size() == 0) {
			getView().findViewById(R.id.tv_more_news).setVisibility(View.GONE);
		}
		
		LayoutInflater inflater = LayoutInflater.from(getActivity());
		LinearLayout llNewsContainer = (LinearLayout) getView().findViewById(R.id.ll_news_container);
		
		for (int i = 0; i < listNews.size(); i++) {
			View newsView = inflater.inflate(R.layout.item_news, null);
			News news = listNews.get(i);
			ImageLoader.getInstance().displayImage(news.getImg(), (ImageView)newsView.findViewById(R.id.img_news));
			((TextView)newsView.findViewById(R.id.tv_title)).setText(news.getTitle());
			((TextView)newsView.findViewById(R.id.tv_tourname)).setText(news.getTourname());
			((TextView)newsView.findViewById(R.id.tv_time)).setText(news.getDateTime());
			llNewsContainer.addView(newsView);
			newsView.setTag(R.id.tag_url, news.getUrl());
			newsView.setTag(R.id.tag_id, news.getId());
			newsView.setOnClickListener(mOnShowNewsDetails);
		}
	}
	
	
	OnClickListener mOnShowNewsDetails = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String newsId = v.getTag(R.id.tag_id).toString();
//			Message msg = new Message();
//			msg.what = ACTION_NEWS_DETAILS;
//			msg.obj = newsId;
//			mHandleCallback.sendMessage(msg);
			
			Intent intent = new Intent(getActivity(), NewsDetailsActivity.class);
			intent.putExtra(NewsDetailsActivity.INTENT_EXTRA_NEWS_ID, newsId);
			startActivity(intent);
		}
	};
	
	OnClickListener mOnShowVideoDetails = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String videoId = v.getTag(R.id.tag_id).toString();
//			Message msg = new Message();
//			msg.what = ACTION_VIDEO_DETAILS;
//			msg.obj = videoId;
//			mHandleCallback.sendMessage(msg);
			
			Intent intent = new Intent(getActivity(), VideoDetailsActivity.class);
			intent.putExtra(VideoDetailsActivity.INTENT_EXTRA_ID, videoId);
			startActivity(intent);
		}
	};
	
	
}
