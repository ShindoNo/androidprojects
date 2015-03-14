package vn.muachung.cod.popup;
import vn.muachung.cod.muachungmobile.R;
import java.util.HashMap;

import org.example.qberticus.quickactions.BetterPopupWindow;
import org.json.JSONArray;
import org.json.JSONObject;

import vn.muachung.cod.services.ServiceHelper;
import vn.muachung.cod.services.NameSpace;
import vn.muachung.cod.services.Tools;

import android.app.Activity;
import android.app.ProgressDialog;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.RadioGroup.OnCheckedChangeListener;

public class PopupDealFilter extends BetterPopupWindow {
	LayoutInflater mLayoutInflater;
	ProgressDialog mProgressDialog;
	FilterListener mFilterListener;
	View popupView;
	RadioGroup rgFilterShip, rgFilterType;
	LinearLayout streetContainer;
	
	String mFilterGroupName;
	
	HashMap<String, JSONObject> mMapDateToData;
	HashMap<String, JSONArray> mMapDateToStreets;
	String mCurrentDate;
	String mUserId;
	
	public PopupDealFilter(View anchor, FilterListener filterListener, String userId, HashMap<String, JSONObject> mapDateToData) {
		super(anchor);
		// TODO Auto-generated constructor stub
		mFilterListener = filterListener;
		mUserId = userId;
		mMapDateToStreets = new HashMap<String, JSONArray>();
		mLayoutInflater = LayoutInflater.from(anchor.getContext());
		mMapDateToData = mapDateToData;
	}
	
	public void setFilterGroup(String filterGroupName) {
		mFilterGroupName = filterGroupName;
	}
	
	public void clearCheckedButton() {
		rgFilterShip.clearCheck();
		rgFilterType.clearCheck();
	}
	
	public void setCurrentDateForCounting(String date) {
		mCurrentDate = date;
	}
	
	public void setCurrentDateForShowingStreet(String date) {
		streetContainer.removeAllViews();
		mCurrentDate = date;
		if (!mMapDateToStreets.containsKey(mCurrentDate)) {
			mProgressDialog = ProgressDialog.show(anchor.getContext(), "", "Loading...");
			new Thread(new GetStreetRunnable(mCurrentDate)).start();
		} else {
			displayStreets(date);
		}
	}
	
	@Override
	protected void onCreate() {
		// TODO Auto-generated method stub
		LayoutInflater inflater = LayoutInflater.from(anchor.getContext());
		popupView = inflater.inflate(R.layout.popup_deal_filter, null);
		rgFilterShip = (RadioGroup) popupView.findViewById(R.id.rg_filter_ship_state);
		rgFilterType = (RadioGroup) popupView.findViewById(R.id.rg_filter_type);
		streetContainer = (LinearLayout) popupView.findViewById(R.id.street_container);
		
		rgFilterShip.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			public void onCheckedChanged(RadioGroup group, int checkedId) {
				// TODO Auto-generated method stub
				if (checkedId == -1) { // when clear selection
					return;
				}
				
				RadioButton radioButton = (RadioButton) popupView.findViewById(checkedId);
				if (!radioButton.isChecked()) {
					return;
				}
				
				dismiss();
				
				if (checkedId == R.id.rb_filter_ship_no) {
					mFilterListener.filter(NameSpace.FILTER_SHIP_NO);
				} else if (checkedId == R.id.rb_filter_ship_yes) {
					mFilterListener.filter(NameSpace.FILTER_SHIP_YES);
				} else if (checkedId == R.id.rb_filter_ship_reship) {
					mFilterListener.filter(NameSpace.FILTER_SHIP_REWORK);
				} else if (checkedId == R.id.rb_filter_ship_all) {
					mFilterListener.filter(NameSpace.FILTER_ALL);
				}
				
				rgFilterType.clearCheck();
			}
		});
		
		rgFilterType.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			public void onCheckedChanged(RadioGroup group, int checkedId) {
				// TODO Auto-generated method stub
				if (checkedId == -1) {
					return;
				}
				
				RadioButton radioButton = (RadioButton) popupView.findViewById(checkedId);
				if (!radioButton.isChecked()) {
					return;
				}
				
				dismiss();				
				
				if (checkedId == R.id.rb_filter_ticket) {
					mFilterListener.filter(NameSpace.FILTER_TYPE_TICKET);
				} else if (checkedId == R.id.rb_filter_goods) {
					mFilterListener.filter(NameSpace.FILTER_TYPE_GOOD);
				} else if (checkedId == R.id.rb_filter_solo) {
					mFilterListener.filter(NameSpace.FILTER_TYPE_SOLO);
				} else if (checkedId == R.id.rb_filter_type_all) {
					mFilterListener.filter(NameSpace.FILTER_ALL);
				}
				
				rgFilterShip.clearCheck();
			}
		});
		
		setContentView(popupView);
	}
	
	@Override
	protected void onShow() {
		// TODO Auto-generated method stub
		if (mFilterGroupName.equals(NameSpace.FILTER_GROUP_SHIP)) {
			rgFilterShip.setVisibility(View.VISIBLE);
			rgFilterType.setVisibility(View.GONE);
			streetContainer.setVisibility(View.GONE);
			countFilterShip();
		} else if (mFilterGroupName.equals(NameSpace.FILTER_GROUP_TYPE)) {
			rgFilterShip.setVisibility(View.GONE);
			rgFilterType.setVisibility(View.VISIBLE);
			streetContainer.setVisibility(View.GONE);
			countFilterType();
		} else if (mFilterGroupName.equals(NameSpace.FILTER_GROUP_STREETS)) {
			rgFilterShip.setVisibility(View.GONE);
			rgFilterType.setVisibility(View.GONE);
			streetContainer.setVisibility(View.VISIBLE);
		}
	}
	
	public void countFilterShip() {
		if (!mMapDateToData.containsKey(mCurrentDate)) {
			return;
		}
		
		try {
			JSONArray works = mMapDateToData.get(mCurrentDate).getJSONArray(NameSpace.WORK);
			int shipAll = works.length();
			int shipNo = 0;
			int shipYes = 0;
			
			for (int i = 0; i < works.length(); i++) {
				JSONObject work = works.getJSONObject(i);
				String numShip = work.getString(NameSpace.NUM_SHIP);
				if (numShip.equals("null")) {
					shipNo++;
				} else {
					shipYes++;
				}
			}
			
			((RadioButton)popupView.findViewById(R.id.rb_filter_ship_all)).setText("Tất cả (" + shipAll + ")");
			((RadioButton)popupView.findViewById(R.id.rb_filter_ship_no)).setText("Chưa giao (" + shipNo + ")");
			((RadioButton)popupView.findViewById(R.id.rb_filter_ship_yes)).setText("Đã giao (" + shipYes + ")");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void countFilterType() {
		if (!mMapDateToData.containsKey(mCurrentDate)) {
			return;
		}
		
		try {
			JSONArray works = mMapDateToData.get(mCurrentDate).getJSONArray(NameSpace.WORK);
			int typeAll = works.length();
			int typeTicket = 0;
			int typeGoods = 0;
			int typeSolo = 0;
			
			for (int i = 0; i < works.length(); i++) {
				JSONObject work = works.getJSONObject(i);
				String type = work.getString(NameSpace.TYPE);
				if (type.equals(NameSpace.DEAL_TYPE_TICKET)) {
					typeTicket++;
				} else if (type.equals(NameSpace.DEAL_TYPE_GOOD)) {
					typeGoods++;
				} else if (type.equals(NameSpace.DEAL_TYPE_SOLO)) {
					typeSolo++;
				}
			}
			
			((RadioButton)popupView.findViewById(R.id.rb_filter_type_all)).setText("Tất cả (" + typeAll + ")");
			((RadioButton)popupView.findViewById(R.id.rb_filter_ticket)).setText("Phiếu (" + typeTicket + ")");
			((RadioButton)popupView.findViewById(R.id.rb_filter_goods)).setText("Hàng (" + typeGoods + ")");
			((RadioButton)popupView.findViewById(R.id.rb_filter_solo)).setText("Solo (" + typeSolo + ")");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}	
	
	public void displayStreets(String date) {
		streetContainer.removeAllViews();
		try {
			JSONArray streets = mMapDateToStreets.get(date);
			for (int i = 0; i < streets.length(); i++) {
				JSONObject street = streets.getJSONObject(i);
				String streetId = street.getString(NameSpace.STREET_ID);
				String streetName = street.getString(NameSpace.STREET_NAME);
				
				View streetLayout = mLayoutInflater.inflate(R.layout.row_street, null);
				TextView tvStreet = (TextView) streetLayout.findViewById(R.id.tv_street);
				tvStreet.setText(streetName);
				tvStreet.setTag(R.id.tag_id, streetId);
				tvStreet.setOnClickListener(onClickStreetListener);
				streetContainer.addView(streetLayout);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	OnClickListener onClickStreetListener = new OnClickListener() {
		public void onClick(View v) {
			// TODO Auto-generated method stub
			dismiss();
			String streetId = (String) v.getTag(R.id.tag_id);
			mFilterListener.filter(NameSpace.FILTER_STREET + " " + streetId);
			clearCheckedButton();
		} 
	};
	
	class GetStreetRunnable implements Runnable{
		
		String date;
		
		public GetStreetRunnable(String date) {
			// TODO Auto-generated constructor stub
			this.date = date;
		}

		public void run() {
			// TODO Auto-generated method stub
			String apiUrl = String.format(NameSpace.API_LIST_STREETS, NameSpace.CLIENT_ID, mUserId, date);
			final JSONArray apiResponse = (JSONArray) ServiceHelper.downloadJsonData(apiUrl, false);
			((Activity) anchor.getContext()).runOnUiThread(new Runnable() {
				public void run() {
					// TODO Auto-generated method stub
					mProgressDialog.dismiss();
					if (apiResponse != null) {
						mMapDateToStreets.put(date, apiResponse);
						displayStreets(date);
					} else {
						Tools.checkInternetAndToast(anchor.getContext());
					}
				}
			});
		}
	}
	
	public interface FilterListener {
		public void filter(String filterValue);
	}
}
