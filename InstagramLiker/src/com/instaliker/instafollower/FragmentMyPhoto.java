package com.instaliker.instafollower;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;

import com.idroid.lib.support.ServiceHelper;
import com.instaliker.instafollower.MainActivity.OnSpendCoinListener;

public class FragmentMyPhoto extends Fragment{
	
	Context mContext;
	View mainLayout;
	ProgressDialog mProgressDialog;
	
	MyPhotoAdapter mAdapter;
	GridView mGridView;
	
	OnSpendCoinListener mOnSpendCoinListener;
	
	public static FragmentMyPhoto getNewInstance(Context context, OnSpendCoinListener onSpendCoinListener) {
		FragmentMyPhoto fragmentGetLikes = new FragmentMyPhoto();
		fragmentGetLikes.setData(context, onSpendCoinListener);
		return fragmentGetLikes;
	}
	
	public void setData(Context context, OnSpendCoinListener onSpendCoinListener) {
		mContext = context;
		mOnSpendCoinListener = onSpendCoinListener;
		
		mProgressDialog = new ProgressDialog(mContext);
		mProgressDialog.setMessage("Loading...");
		mProgressDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mainLayout = inflater.inflate(R.layout.fragment_my_photo, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	public void initUI() {
		mGridView = (GridView) mainLayout.findViewById(R.id.grid_view);
		mAdapter = new MyPhotoAdapter(mContext);
		mGridView.setAdapter(mAdapter);
		mGridView.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
				// TODO Auto-generated method stub
				JSONObject imgJSON = (JSONObject) view.getTag(R.id.tag_img_data);
				mOnSpendCoinListener.spend(imgJSON);
			}
		});
		
		getData();
	}
	
	public void getData() {
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = "access_token=" +  Util.getAccessToken(mContext);
				final String apiResponse = ServiceHelper.get(NameSpace.API_GET_MY_IMAGE + params);
				
				((Activity)mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (apiResponse != null) {
							try {
								JSONArray data = new JSONObject(apiResponse).getJSONArray("data");
								mAdapter.setData(data);
								mAdapter.notifyDataSetChanged();
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						} else {
							DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() {
								@Override
								public void onClick(DialogInterface dialog, int which) {
									// TODO Auto-generated method stub
									getData();
								}
							};
							
							Util.showErrorDialog(mContext, "Load error!", "Try Again", onClickListener);
						}
					}
				});
			}
		}).start();
	}
}
