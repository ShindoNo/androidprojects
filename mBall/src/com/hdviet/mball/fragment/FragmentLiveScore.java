package com.hdviet.mball.fragment;

import java.util.ArrayList;

import com.hdviet.mball.MatchDetailsActivity;
import com.hdviet.mball.R;
import com.hdviet.mball.datacontrollers.ErrorCode;
import com.hdviet.mball.datacontrollers.LiveScoreController;
import com.hdviet.mball.entity.Match;
import com.hdviet.mball.entity.MatchList;
import com.hdviet.mball.entity.MatchStatus;
import com.hdviet.mball.util.MyLog;
import com.nostra13.universalimageloader.core.ImageLoader;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class FragmentLiveScore extends Fragment {
	
	boolean initData;
	boolean isDownloadingData;
	
	public static FragmentLiveScore getIntance() {
		FragmentLiveScore fragmentLiveScore = new FragmentLiveScore();
		fragmentLiveScore.init();
		return fragmentLiveScore;
	}
	
	public void init() {
		
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		return inflater.inflate(R.layout.fragment_livescore, container, false);
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		
		initUI();
		
	}
	
	public void initUI() {
		
	}
	
	public void checkInitData() {
//		if (initedData) {
//			return;
//		} else {
//			initData();
//		}
		
		initData();
	}
	
	public void initData() {
		if (isDownloadingData) {
			return;
		}
		
		Handler handler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				// TODO Auto-generated method stub
				super.handleMessage(msg);
				getView().findViewById(R.id.pb_loading_livescore).setVisibility(View.GONE);
				isDownloadingData = false;
				
				if (msg.what == ErrorCode.FAIL) {
					Toast.makeText(getActivity(), (String)msg.obj, Toast.LENGTH_SHORT).show();
				} else if (msg.what == ErrorCode.SUCCESS) {
					initData = true;
					displayData((ArrayList<MatchList>)msg.obj);
				}
			}
		};
		
		getView().findViewById(R.id.pb_loading_livescore).setVisibility(View.VISIBLE);
		isDownloadingData = true;
		LiveScoreController.getMatchList(handler);
	}
	
	public void displayData(ArrayList<MatchList> listMatchList) {
		LayoutInflater inflater = LayoutInflater.from(getActivity());
		LinearLayout llLiveScore = (LinearLayout) getView().findViewById(R.id.ll_livescore_container);
		llLiveScore.removeAllViews();
		
		for (int i = 0; i < listMatchList.size(); i++) {
			MatchList matchList = listMatchList.get(i);
			// add title
			View titleView = inflater.inflate(R.layout.title_livescore, null);
			((TextView) titleView.findViewById(R.id.tv_title)).setText(matchList.getTitle());
			llLiveScore.addView(titleView);
			
			// add matches
			for (int k = 0; k < matchList.getList().size(); k++) {
				Match match = matchList.getList().get(k);
				View matchView = inflater.inflate(R.layout.item_match, null);
				ImageLoader.getInstance().displayImage(match.getLogoHome(), (ImageView)matchView.findViewById(R.id.img_flag_home));
				((TextView)matchView.findViewById(R.id.tv_teamname_home)).setText(match.getTeamHomeName());
				((TextView)matchView.findViewById(R.id.tv_goal_home)).setText(match.getGoalHome());
				
				((TextView)matchView.findViewById(R.id.tv_teamname_away)).setText(match.getTeamAwayName());
				((TextView)matchView.findViewById(R.id.tv_goal_away)).setText(match.getGoalAway());
				ImageLoader.getInstance().displayImage(match.getLogoAway(), (ImageView)matchView.findViewById(R.id.img_flag_away));
								
				// display time
				if (match.getStatus().equals("7")) {
					((TextView)matchView.findViewById(R.id.tv_match_status)).setText(Html.fromHtml("<b>FT</b>"));
				} else if (match.getStatus().equals("2")) {
					((TextView)matchView.findViewById(R.id.tv_match_status)).setText(Html.fromHtml("<b>HT</b>"));
				} else if (match.getStatus().equals("0")) {
					String text = "<b>" + match.getKickOff().replace(" ", "</b> ");
					((TextView)matchView.findViewById(R.id.tv_match_status)).setText(Html.fromHtml(text));					
				} else {
					((TextView)matchView.findViewById(R.id.tv_match_status)).setText(Html.fromHtml("<b>" + match.getCurrentMinute() + "</b>"));
				}
				
				// display goal				
				if (match.getStatus().equals("0")) {
					matchView.findViewById(R.id.tv_goal_home).setVisibility(View.GONE);
					matchView.findViewById(R.id.tv_goal_away).setVisibility(View.GONE);					
				} else {
					matchView.findViewById(R.id.tv_goal_home).setVisibility(View.VISIBLE);
					matchView.findViewById(R.id.tv_goal_away).setVisibility(View.VISIBLE);					
				}
				
				// display action
				if (match.getStatus().equals("0")) {
					((TextView)matchView.findViewById(R.id.tv_view_rate_clip)).setText(getString(R.string.view_rate));
					((TextView)matchView.findViewById(R.id.tv_view_rate_clip)).setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_view_rate, 0, 0, 0);					
				} else if (match.getStatus().equals("7")) {
					((TextView)matchView.findViewById(R.id.tv_view_rate_clip)).setText(getString(R.string.view_clip));
					((TextView)matchView.findViewById(R.id.tv_view_rate_clip)).setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_view_video, 0, 0, 0);
					if (match.getIdVideo().equals("")) {
						matchView.findViewById(R.id.tv_view_rate_clip).setVisibility(View.INVISIBLE);
					}
				} else {
					((TextView)matchView.findViewById(R.id.tv_view_rate_clip)).setText(getString(R.string.view_report));
					((TextView)matchView.findViewById(R.id.tv_view_rate_clip)).setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_view_rate, 0, 0, 0);
				}
				
				llLiveScore.addView(matchView);
				matchView.setOnClickListener(mOnClickMatchListener);
			}
		}
		
	}
	
	OnClickListener mOnClickMatchListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			Intent intent = new Intent(getActivity(), MatchDetailsActivity.class);
			startActivity(intent);
			
		}
	};
	
	

}
