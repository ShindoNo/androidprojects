package vn.vcci.pcivietnam;

import org.json.JSONObject;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.FrameLayout.LayoutParams;

public class FragmentPCIDistrictDetails extends Fragment{
	
	Activity mActivity;
	LayoutInflater mInflater;
	View mMainView;
	LinearLayout mIndexContainer;
	
	JSONObject mPCIDistrictData;
	String mCurrentYear;
	String mPreviousYear = null;
	
	
	public static FragmentPCIDistrictDetails getInstance(Activity activity, JSONObject pciDistrictData,String currentYear) {
		FragmentPCIDistrictDetails fragmentPCIDistrictDetails = new FragmentPCIDistrictDetails();
		fragmentPCIDistrictDetails.setData(activity, pciDistrictData, currentYear);
		return fragmentPCIDistrictDetails;
	}
	
	public void setData(Activity activity, JSONObject pciDistrictData, String currentYear) {
		mActivity = activity;
		mInflater = LayoutInflater.from(activity);
		mPCIDistrictData = pciDistrictData;
		mCurrentYear = currentYear;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mMainView = inflater.inflate(R.layout.fragment_pci_district_details, container, false);
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
		// setup top layout : rank, district name, group, pci value
		try {
			mMainView.findViewById(R.id.img_arrow).setVisibility(View.GONE);
			String districtName = mPCIDistrictData.getString("thanhpho");
			((TextView)mMainView.findViewById(R.id.tv_district_name)).setText(districtName);
			
			// show district name on title
			Utils.sendBroardcastTitle(mActivity, districtName);
			
			JSONObject pciCurrentYear = mPCIDistrictData.getJSONArray("nam").getJSONObject(Utils.getYearPosition(mActivity, mCurrentYear));
			String hang = pciCurrentYear.getString("hang");
			String nhom = pciCurrentYear.getString("nhom");
			String pci = pciCurrentYear.getString("pci");
			
			((TextView)mMainView.findViewById(R.id.tv_rank)).setText(hang);
			((TextView)mMainView.findViewById(R.id.tv_group)).setText(nhom);
			((TextView)mMainView.findViewById(R.id.tv_pci)).setText(pci);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		// check if exists index of previous year
		mPreviousYear = (Integer.parseInt(mCurrentYear) - 1) + "";
		if (Utils.getYearPosition(mActivity, mPreviousYear) == -1) { // doesn't exist
			mPreviousYear = null;
		}
		
		((TextView)mMainView.findViewById(R.id.tv_index_current_year)).setText(mCurrentYear);
		
		if (mPreviousYear != null) {
			((TextView)mMainView.findViewById(R.id.tv_index_previous_year)).setText(mPreviousYear);	
		}
		
		try {
			JSONObject pciCurrentYear = mPCIDistrictData.getJSONArray("nam").getJSONObject(Utils.getYearPosition(mActivity, mCurrentYear));
			JSONObject pciPreviousYear = null;
			if (mPreviousYear != null) {
				pciPreviousYear = mPCIDistrictData.getJSONArray("nam").getJSONObject(Utils.getYearPosition(mActivity, mPreviousYear));
			}
			
			// add row of each index
			for (int i = 0; i < pciCurrentYear.getJSONArray("chiso").length(); i++) {
				View rowIndex = mInflater.inflate(R.layout.row_index, null);
				LinearLayout.LayoutParams lpRow = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
				rowIndex.setLayoutParams(lpRow);
				
				// add index current year
				String idChiSo = pciCurrentYear.getJSONArray("chiso").getJSONObject(i).getString("id_chiso");
				String tenChiSo = pciCurrentYear.getJSONArray("chiso").getJSONObject(i).getString("ten_chiso");
				String diem = pciCurrentYear.getJSONArray("chiso").getJSONObject(i).getString("diem");
				
				((TextView)rowIndex.findViewById(R.id.tv_index_name)).setText(tenChiSo);
				((TextView)rowIndex.findViewById(R.id.tv_index_current_year)).setText(diem);
				
				// add index previous year (if have)
				if (mPreviousYear != null) {
					// find index which have same id with current year
					for (int k = 0; k < pciPreviousYear.getJSONArray("chiso").length(); k++) {
						if (idChiSo.equals(pciPreviousYear.getJSONArray("chiso").getJSONObject(k).getString("id_chiso"))) {
							String diemPreviousYear = pciPreviousYear.getJSONArray("chiso").getJSONObject(k).getString("diem");
							((TextView)rowIndex.findViewById(R.id.tv_index_previous_year)).setText(diemPreviousYear);
							break;
						}
					}
				}
				
				if (i%2 == 1) {
					rowIndex.setBackgroundColor(Color.parseColor("#11000000"));
				}
				mIndexContainer.addView(rowIndex);
				
				rowIndex.setTag(R.id.tag_index_position, i);
				rowIndex.setOnClickListener(mOnClickIndexListener);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	OnClickListener mOnClickIndexListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			int indexPosition = (Integer) v.getTag(R.id.tag_index_position);
			FragmentIndexDetail fragmentIndexDetail = FragmentIndexDetail.getInstance(mActivity, mPCIDistrictData, mCurrentYear, indexPosition);
			getFragmentManager().beginTransaction()
								.setCustomAnimations(R.anim.right_to_left_in, R.anim.right_to_left_out, R.anim.left_to_right_in, R.anim.left_to_right_out)
								.replace(R.id.main_container, fragmentIndexDetail)
								.addToBackStack(null)
								.commit();
		}
	};
	

}
