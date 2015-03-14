package vn.vcci.pcivietnam;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.ListView;
import android.widget.TextView;

public class FragmentPCIResult extends Fragment {
	
	Activity mActivity;
	View mMainView;
	LayoutInflater mInflater;
	
	ListView mListViewPCI;
	PCIAdapter mAdapter;
	
	public static FragmentPCIResult mFragmentPCIResult;
	
	public static FragmentPCIResult getCurrent() {
		return mFragmentPCIResult;
	}
	
	public static FragmentPCIResult getInstance(Activity activity) {
		FragmentPCIResult fragmentPCIResult = new FragmentPCIResult();
		fragmentPCIResult.setData(activity);
		mFragmentPCIResult = fragmentPCIResult;
		return fragmentPCIResult;
	}
	
	public void setData(Activity activity) {
		mActivity = activity;
		mInflater = LayoutInflater.from(activity);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mMainView = inflater.inflate(R.layout.fragment_pci_result, container, false);
		Utils.sendBroardcastTitle(mActivity, getString(R.string.pci_result));
		Utils.sendBroadcastShowSort(mActivity);
		return mMainView;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		Utils.sendBroadcastMenuOrBack(mActivity, MainActivity.SHOW_MENU);
		initUI();
	}
	
	public void initUI() {
		mListViewPCI = (ListView) mMainView.findViewById(R.id.lv_pci);
		mAdapter = new PCIAdapter(mActivity);
		mListViewPCI.setAdapter(mAdapter);
		mListViewPCI.setOnItemClickListener(mOnItemClickListener);
		
		try {
			JSONObject data = new JSONObject(Utils.getPCIData(mActivity));
			JSONArray pciArray = data.getJSONArray("data");
			if (Utils.getYearPosition(mActivity, Utils.getYear(mActivity)) == -1) {
				return;
			}
			
			mAdapter.setData(pciArray);
			
			AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) mMainView.findViewById(R.id.tv_autocomplete);
			AutoCompleteAdapter autoCompleteAdapter = new AutoCompleteAdapter(mActivity, R.layout.row_autocomplete, pciArray);
			autoCompleteTextView.setAdapter(autoCompleteAdapter);
			autoCompleteTextView.setOnItemClickListener(new OnItemClickListener() {
				@Override
				public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
					// TODO Auto-generated method stub
					try {
						JSONObject pciDistrict = new JSONObject(view.getTag(R.id.tag_pci_district).toString());
						FragmentPCIDistrict fragmentPCIDistrict = FragmentPCIDistrict.getInstance(mActivity, pciDistrict);
						getFragmentManager().beginTransaction()
											.setCustomAnimations(R.anim.right_to_left_in, R.anim.right_to_left_out, R.anim.left_to_right_in, R.anim.left_to_right_out)
											.replace(R.id.main_container, fragmentPCIDistrict).addToBackStack(null).commit();
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
				}
			});
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			try {
				JSONObject pciDistrict = new JSONObject(Utils.getPCIData(mActivity)).getJSONArray("data").getJSONObject(position);
				
				FragmentPCIDistrict fragmentPCIDistrict = FragmentPCIDistrict.getInstance(mActivity, pciDistrict);
				getFragmentManager().beginTransaction()
									.setCustomAnimations(R.anim.right_to_left_in, R.anim.right_to_left_out, R.anim.left_to_right_in, R.anim.left_to_right_out)
									.replace(R.id.main_container, fragmentPCIDistrict).addToBackStack(null).commit();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	};
	
	
	class AutoCompleteAdapter extends ArrayAdapter<String> {
		JSONArray itemAll;
		JSONArray itemSuggestion;
		
		public AutoCompleteAdapter(Context context, int resource, JSONArray itemAll) {
			super(context, resource);
			// TODO Auto-generated constructor stub
			this.itemAll = itemAll;
			this.itemSuggestion = itemAll;
		}
		
		@Override
		public String getItem(int position) {
			// TODO Auto-generated method stub
			try {
				return itemSuggestion.getJSONObject(position).getString("thanhpho");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return super.getItem(position);
		}
		
		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			if (itemSuggestion == null) {
				return 0;
			} else {
				return itemSuggestion.length();
			}
		}
		
		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			// TODO Auto-generated method stub
			if (convertView == null) {
				convertView = mInflater.inflate(R.layout.row_autocomplete, parent, false);
			}
			
			try {
				String cityName = itemSuggestion.getJSONObject(position).getString("thanhpho");
				((TextView)convertView.findViewById(R.id.tv_city_name)).setText(cityName);
				convertView.setTag(R.id.tag_pci_district, itemSuggestion.getJSONObject(position));
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			return convertView;
		}
		
		@Override
		public Filter getFilter() {
			// TODO Auto-generated method stub
			return mFilter;
		}
		
		Filter mFilter = new Filter() {
			@Override
			protected void publishResults(CharSequence constraint, FilterResults results) {
				// TODO Auto-generated method stub
				notifyDataSetChanged();
			}
			
			@Override
			protected FilterResults performFiltering(CharSequence constraint) {
				// TODO Auto-generated method stub
				itemSuggestion = new JSONArray();
				if (constraint != null) {
					for (int i = 0; i < itemAll.length(); i++) {
						JSONObject city;
						try {
							city = itemAll.getJSONObject(i);
							String cityName = city.getString("thanhpho");
							if (cityName.toLowerCase().contains(constraint.toString().toLowerCase())) {
								itemSuggestion.put(city);
							}							
						} catch (JSONException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					FilterResults filterResults = new FilterResults();
					filterResults.values = itemSuggestion;
					filterResults.count = itemSuggestion.length();
					return filterResults;
				} else {
					return new FilterResults();
				}
			}
		};
	}
	
	
	
	
	
	class PCIAdapter extends BaseAdapter {
		JSONArray mPCIArray;
		LayoutInflater mInflater;
		int mCurrentYearPosition = 0;
		
		public PCIAdapter(Activity activity) {
			// TODO Auto-generated constructor stub
			mInflater = LayoutInflater.from(activity);
			mCurrentYearPosition = Utils.getYearPosition(activity, Utils.getYear(activity));
		}
		
		public void setData(JSONArray pciArray) {
			mPCIArray = pciArray;
			notifyDataSetChanged();
		}
		
		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			if (mPCIArray == null)
				return 0;
			else 
				return mPCIArray.length();
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
				convertView = mInflater.inflate(R.layout.row_pci_result, null);
			}
			
			try {
				JSONObject pci = mPCIArray.getJSONObject(position);
				((TextView)convertView.findViewById(R.id.tv_district_name)).setText(pci.getString("thanhpho"));
				
				JSONObject pciData = pci.getJSONArray("nam").getJSONObject(mCurrentYearPosition);
				
				((TextView)convertView.findViewById(R.id.tv_rank)).setText(pciData.getString("hang"));
				((TextView)convertView.findViewById(R.id.tv_group)).setText(pciData.getString("nhom"));
				((TextView)convertView.findViewById(R.id.tv_pci)).setText(pciData.getString("pci"));
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
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		Utils.sendBroadcastHideSort(mActivity);
		Log.e("stk", getClass().getName() + "-onDestroy()");
	}
	
	@Override
	public void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		Utils.sendBroadcastHideSort(mActivity);
		Log.e("stk", getClass().getName() + "-onPause()");
	}
	
	public static JSONArray sortByRank(Activity activity) {
		try {
			JSONObject currentPCIData = new JSONObject(Utils.getPCIData(activity));
			JSONArray listCity = currentPCIData.getJSONArray("data");
			
			for (int i = 0; i < listCity.length()-1; i++) {
				for (int j = i +1; j < listCity.length(); j++) {
					JSONObject currentCity = listCity.getJSONObject(i);
					int currentIndex = Integer.parseInt(currentCity.getJSONArray("nam").getJSONObject(Utils.getYearPosition(activity, Utils.getYear(activity))).getString("hang"));
					JSONObject nextCity = listCity.getJSONObject(j);
					int nextIndex = Integer.parseInt(nextCity.getJSONArray("nam").getJSONObject(Utils.getYearPosition(activity, Utils.getYear(activity))).getString("hang"));
					
					if (currentIndex > nextIndex) {
						listCity.put(i, nextCity);
						listCity.put(j, currentCity);
					}
				}
			}
			
			currentPCIData.put("data", listCity);
			Utils.savePCIData(activity, currentPCIData.toString());
			return listCity;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return new JSONArray();
		}
	}
	
	public static JSONArray sortByName(Activity activity) {
		try {
			JSONObject currentPCIData = new JSONObject(Utils.getPCIData(activity));
			JSONArray listCity = currentPCIData.getJSONArray("data");
			
			for (int i =0; i < listCity.length()-1; i++) {
				for (int j = i+1; j < listCity.length(); j++) {
					JSONObject currentCity = listCity.getJSONObject(i);
					String currentCityName = currentCity.getString("thanhpho");
					
					
					JSONObject nextCity = listCity.getJSONObject(j);
					String nextCityName = nextCity.getString("thanhpho");
					
					if (currentCityName.compareTo(nextCityName) > 0) {
						listCity.put(i, nextCity);
						listCity.put(j, currentCity);
					}
				}
			}
			
			currentPCIData.put("data", listCity);
			Utils.savePCIData(activity, currentPCIData.toString());
			return listCity;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return new JSONArray();
		}
	}
	

}
