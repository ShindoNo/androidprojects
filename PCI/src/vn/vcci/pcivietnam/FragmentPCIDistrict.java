package vn.vcci.pcivietnam;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

public class FragmentPCIDistrict extends Fragment{
	
	Activity mActivity;
	JSONObject mPCIDistrictData;
	View mMainView;
	LayoutInflater mInflater;
	
	ListView mListView;
	PCIDistrictAdapter mAdapter;
	
	public static FragmentPCIDistrict getInstance(Activity activity, JSONObject pciDistrict) {
		FragmentPCIDistrict fragmentPCIDistrict = new FragmentPCIDistrict();
		fragmentPCIDistrict.setData(activity, pciDistrict);
		return fragmentPCIDistrict;
	}
	
	public void setData(Activity activity, JSONObject pciDistrictData) {
		mActivity = activity;
		mPCIDistrictData = pciDistrictData;
		mInflater = LayoutInflater.from(activity);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mMainView = inflater.inflate(R.layout.fragment_pci_district, container, false);
		return mMainView;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		
		try {
			String districtName = mPCIDistrictData.getString("thanhpho");
			Utils.sendBroardcastTitle(mActivity, districtName);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		initUI();
	}
	
	public void initUI() {
		// show back
		Utils.sendBroadcastMenuOrBack(mActivity, MainActivity.SHOW_BACK);
		
		mListView = (ListView) mMainView.findViewById(R.id.lv_pci_district);
		mAdapter = new PCIDistrictAdapter();
		mListView.setAdapter(mAdapter);
		
		try {
			mAdapter.setData(mPCIDistrictData.getJSONArray("nam"));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		mListView.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
				// TODO Auto-generated method stub
				String currentYear = (String) view.getTag(R.id.tag_year);
				FragmentPCIDistrictDetails fragmentPCIDistrictDetails = FragmentPCIDistrictDetails.getInstance(mActivity, mPCIDistrictData, currentYear);
				getFragmentManager().beginTransaction()
									.setCustomAnimations(R.anim.right_to_left_in, R.anim.right_to_left_out, R.anim.left_to_right_in, R.anim.left_to_right_out)
									.replace(R.id.main_container, fragmentPCIDistrictDetails)
									.addToBackStack(null)
									.commit();
			}
		});
	}
	
	class PCIDistrictAdapter extends BaseAdapter {
		JSONArray mPCIDistrictByYear;
		
		public void setData(JSONArray pciDistrictByYear) {
			mPCIDistrictByYear = pciDistrictByYear;
		}

		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			if (mPCIDistrictByYear == null)
				return 0;
			else 
				return mPCIDistrictByYear.length();
		}

		@Override
		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			// TODO Auto-generated method stub
			if (convertView == null) {
				convertView = mInflater.inflate(R.layout.row_pci_district, null);
			}
			
			try {
				((TextView)convertView.findViewById(R.id.tv_year)).setText(mPCIDistrictByYear.getJSONObject(position).getString("nam"));
				((TextView)convertView.findViewById(R.id.tv_rank)).setText(mPCIDistrictByYear.getJSONObject(position).getString("hang"));
				((TextView)convertView.findViewById(R.id.tv_pci)).setText(mPCIDistrictByYear.getJSONObject(position).getString("pci"));
				((TextView)convertView.findViewById(R.id.tv_group)).setText(mPCIDistrictByYear.getJSONObject(position).getString("nhom"));
				
				convertView.setTag(R.id.tag_year, mPCIDistrictByYear.getJSONObject(position).getString("nam"));
				convertView.setTag(R.id.tag_pci_district, mPCIDistrictByYear);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			if (position %2 == 0) {
				convertView.setBackgroundColor(Color.TRANSPARENT);
			} else {
				convertView.setBackgroundColor(Color.parseColor("#11000000"));
			}
			
			return convertView;
		}
	}
	

}
