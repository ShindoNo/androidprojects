package com.hdviet.mball.fragment;

import java.util.ArrayList;

import com.hdviet.mball.R;
import com.hdviet.mball.datacontrollers.ErrorCode;
import com.hdviet.mball.datacontrollers.VideoController;
import com.hdviet.mball.entity.Video;
import com.hdviet.mball.entity.VideoDetails;
import com.hdviet.mball.util.MyLog;
import com.nostra13.universalimageloader.core.ImageLoader;

import android.app.ProgressDialog;
import android.content.Intent;
import android.net.Uri;
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
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

public class FragmentVideoDetails extends Fragment{
	
	ProgressDialog mProgressDialog;
	
	int mCurrentPage;
	String mVideoId;
	
	public static FragmentVideoDetails getInstance(String videoId) {
		FragmentVideoDetails fragmentVideoDetails = new FragmentVideoDetails();
		fragmentVideoDetails.init(videoId);
		return fragmentVideoDetails;
	}
	
	public void init(String videoId) {
		mVideoId = videoId;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		return inflater.inflate(R.layout.fragment_video_details, container, false);
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
		loadData(mVideoId);
	}
	
	public void initUI() {
		mProgressDialog = new ProgressDialog(getActivity());
		mProgressDialog.setMessage("Loading...");
		
		getView().findViewById(R.id.tv_more_video).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				loadMore();
			}
		});
	}
	

	
	public void loadData(String videoId) {
		mCurrentPage = 1;
		mVideoId = videoId;
		Handler handler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				// TODO Auto-generated method stub
				super.handleMessage(msg);
				mProgressDialog.dismiss();
				
				if (msg.what == ErrorCode.FAIL) {
					Toast.makeText(getActivity(), (String)msg.obj, Toast.LENGTH_SHORT).show();
				} else if (msg.what == ErrorCode.SUCCESS) {
					displayData((VideoDetails)msg.obj);
				}
			}
		};
		
		mProgressDialog.show();
		VideoController.getVideoDetails(handler, videoId);
	}
	
	public void displayData(VideoDetails videoDetails) {
		LayoutInflater inflater = LayoutInflater.from(getActivity());
		
		// add video top
		LinearLayout llVideoTop = (LinearLayout) getView().findViewById(R.id.ll_video_top);
		llVideoTop.removeAllViews();
		View videoTop = inflater.inflate(R.layout.item_video_big, null);
		ImageLoader.getInstance().displayImage(videoDetails.getImage(), (ImageView)videoTop.findViewById(R.id.img_video));
		((TextView)videoTop.findViewById(R.id.tv_title)).setText(videoDetails.getTitle());
		llVideoTop.addView(videoTop);
		llVideoTop.setTag(R.id.tag_url, videoDetails.getUrlMp4());
		llVideoTop.setOnClickListener(mOnPlayVideoListner);
		
		// add video more
		LinearLayout llVideoMore = (LinearLayout) getView().findViewById(R.id.ll_video_more);
		llVideoMore.removeAllViews();
		addVideoMore(videoDetails.getOtherVideos());
		
		// scroll to top
		((ScrollView)getView().findViewById(R.id.sv_video_details)).post(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				((ScrollView)getView().findViewById(R.id.sv_video_details)).smoothScrollTo(0, 0);		
			}
		});
	}
	
	public void addVideoMore(ArrayList<Video> listVideoMore) {
		LinearLayout llVideoMore = (LinearLayout) getView().findViewById(R.id.ll_video_more);
		LayoutInflater inflater = LayoutInflater.from(getActivity());
		
		for (int i = 0; i < listVideoMore.size(); i++) {
			Video video = listVideoMore.get(i);
			View videoView = inflater.inflate(R.layout.item_video, null);
			ImageLoader.getInstance().displayImage(video.getImg(), (ImageView)videoView.findViewById(R.id.img_video));
			((TextView)videoView.findViewById(R.id.tv_title)).setText(video.getTitle());
			((TextView)videoView.findViewById(R.id.tv_tourname)).setText(video.getTourname());
			((TextView)videoView.findViewById(R.id.tv_time)).setText(video.getDateTime());
			llVideoMore.addView(videoView);
			llVideoMore.setTag(R.id.tag_id, video.getId());
			llVideoMore.setOnClickListener(mOnClickMore);
		}		
	}
	
	public void loadMore() {
		if (getView().findViewById(R.id.pb_loading_video).getVisibility() == View.VISIBLE) {
			return;
		}
		
		Handler handler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				// TODO Auto-generated method stub
				super.handleMessage(msg);
				getView().findViewById(R.id.pb_loading_video).setVisibility(View.GONE);
				
				if (msg.what == ErrorCode.FAIL) {
					Toast.makeText(getActivity(), (String)msg.obj, Toast.LENGTH_SHORT).show();
				} else if (msg.what == ErrorCode.SUCCESS) {
					ArrayList<Video> listVideoMore = (ArrayList<Video>)msg.obj;
					if (listVideoMore.size() == 0) {
						getView().findViewById(R.id.tv_more_video).setVisibility(View.GONE);
					} else {
						addVideoMore(listVideoMore);
						mCurrentPage++;
					}
				}
			}
		};
		
		getView().findViewById(R.id.pb_loading_video).setVisibility(View.VISIBLE);
		VideoController.getVideosRelated(handler, mCurrentPage+1, mVideoId);
	}
	
	public void displayMore() {
		
	}
	
	OnClickListener mOnPlayVideoListner = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String urlMp4 = v.getTag(R.id.tag_url).toString();
			Intent intent = new Intent(Intent.ACTION_VIEW);
			intent.setData(Uri.parse(urlMp4));
			startActivity(intent);
			MyLog.log(urlMp4);
		}
	};
	
	OnClickListener mOnClickMore = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String videoId = v.getTag(R.id.tag_id).toString();
			loadData(videoId);
		}
	};

}
