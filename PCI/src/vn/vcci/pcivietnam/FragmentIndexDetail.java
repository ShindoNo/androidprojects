package vn.vcci.pcivietnam;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class FragmentIndexDetail extends Fragment{
	
	Activity mActivity;
	LayoutInflater mInflater;
	View mMainView;
	LinearLayout mIndexContainer;
	
	JSONObject mPCIDistrictData;
	String mCurrentYear;
	int mCurrentIndexPosition;
	
	ProgressDialog mProgressDialog;
	
	public static FragmentIndexDetail getInstance(Activity activity, JSONObject pciDistrictData, String currentYear, int currentIndexPosition) {
		FragmentIndexDetail fragmentIndexDetail = new FragmentIndexDetail();
		fragmentIndexDetail.setData(activity, pciDistrictData, currentYear, currentIndexPosition);
		return fragmentIndexDetail;
	}
	
	public void setData(Activity activity, JSONObject pciDistrictData, String currentYear, int currentIndexPosition) {
		mActivity = activity;
		mInflater = LayoutInflater.from(mActivity);
		mPCIDistrictData = pciDistrictData;
		mCurrentYear = currentYear;
		mCurrentIndexPosition = currentIndexPosition;
		
		mProgressDialog = new ProgressDialog(mActivity);
		mProgressDialog.setMessage("Loading...");
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mMainView = inflater.inflate(R.layout.fragment_index_details, container, false);
		mIndexContainer = (LinearLayout) mMainView.findViewById(R.id.ll_index_container);
		return mMainView;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		
		initUI();
	}
	
	public void initUI() {
		// init top view
		try {
			// get district name
			String districtName = mPCIDistrictData.getString("thanhpho");
			String districtId = mPCIDistrictData.getString("id_thanhpho");
			((TextView)mMainView.findViewById(R.id.tv_district_name)).setText(districtName);
			
			// get index name
			JSONObject pciCurrentYear = mPCIDistrictData.getJSONArray("nam").getJSONObject(Utils.getYearPosition(mActivity, mCurrentYear));
			String indexId = pciCurrentYear.getJSONArray("chiso").getJSONObject(mCurrentIndexPosition).getString("id_chiso");
			String indexName = pciCurrentYear.getJSONArray("chiso").getJSONObject(mCurrentIndexPosition).getString("ten_chiso");
			String indexValue = pciCurrentYear.getJSONArray("chiso").getJSONObject(mCurrentIndexPosition).getString("diem");
			
			Utils.sendBroardcastTitle(mActivity, indexName);
			((TextView)mMainView.findViewById(R.id.tv_index_value)).setText(indexValue);
			((TextView)mMainView.findViewById(R.id.tv_year)).setText(mCurrentYear);
			
			loadIndexDetails(districtId, indexId);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void loadIndexDetails(String cityId, String indexId) {
		final String apiUrl = NameSpace.API_PCI_INDEX_DETAILS + Utils.getDefaultParams(mActivity) 
						+ "&city=" + cityId
						+ "&index=" + indexId;
		
		if (Utils.getIndexDetails(mActivity, apiUrl).equals("")) {
			mProgressDialog.show();
			new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					final String indexDetailsData = ServiceHelper.get(apiUrl, "");
					
					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							
							if (indexDetailsData == null) {
								Toast.makeText(mActivity, "Download Error", Toast.LENGTH_SHORT).show();
							} else {
								Utils.saveIndexDetails(mActivity, apiUrl, indexDetailsData);
								showIndexDetails(indexDetailsData);
							}
						}
					});
				}
			}).start();
		} else {
			showIndexDetails(Utils.getIndexDetails(mActivity, apiUrl));
		}
	}
	
	public void showIndexDetails(String indexDetailsData) {
		try {
			JSONArray indexDetailsArray = new JSONObject(indexDetailsData).getJSONArray("data");
			
			for (int i = 0; i < indexDetailsArray.length(); i++) {
				JSONObject indexDetails = indexDetailsArray.getJSONObject(i);
				if (indexDetails.has("point") && !indexDetails.getString("point").equals("")) {
					String indexName = indexDetails.getString("name");
					String indexValue = indexDetails.getString("point");
					
					// add row of index 
					View rowIndexDetails = mInflater.inflate(R.layout.row_index_details, null);
					LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
					rowIndexDetails.setLayoutParams(lp);
					if (i%2 == 1) {
						rowIndexDetails.setBackgroundColor(Color.parseColor("#11000000"));
					}
					
					((TextView)rowIndexDetails.findViewById(R.id.tv_index_name)).setText(indexName);
					((TextView)rowIndexDetails.findViewById(R.id.tv_index_value)).setText(indexValue);
					
					mIndexContainer.addView(rowIndexDetails);
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	


}
