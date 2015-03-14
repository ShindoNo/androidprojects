package vn.muachung.cod.muachungmobile;

import org.json.JSONObject;

import vn.muachung.cod.popup.PopupDealFilter;
import vn.muachung.cod.popup.PopupMenuAccount;
import vn.muachung.cod.popup.PopupMenuSearch;
import vn.muachung.cod.popup.PopupMenuWorksByDate;
import vn.muachung.cod.popup.PopupDealFilter.FilterListener;
import vn.muachung.cod.services.NameSpace;
import vn.muachung.cod.services.Tools;


import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;

public class MainActivity extends Activity {
	public static String SESSIONID = null;
	
	// system
	InputMethodManager mInputMethodManager;
	
	// view 
	View layoutFilter2;
	ListView mlvReports, mlvWorks;
	ReportsViewCreator reportsViewCreator;
	WorksViewCreator worksViewCreator;
	RadioGroup radioGroupTopMenu;

	// popup of menu
	PopupMenuSearch mPopupMenuSearch;
	PopupMenuWorksByDate mPopupMenuWorksByDay;
	PopupMenuAccount mPopupMenuAccount;
	PopupDealFilter mPopupDealFilter;

	// use this view to initialize anchor of popup
	View anchorForPopup;
	
	// data variables
	JSONObject mUser;
	String todayDate;
	String mUserId;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main_layout);
		
		getDataFromIntent();
		
		initialize();
	}
	
	public void getDataFromIntent() {
		// get userinfo and sessionid and current date from intent
		try {
			String userInfoString = getIntent().getStringExtra(NameSpace.ACCOUNT_INFO);
			mUser = new JSONObject(userInfoString);
			SESSIONID = mUser.getString(NameSpace.SESSIONID);
			String loginTime = mUser.getString(NameSpace.LOGINTIME);
			todayDate = loginTime.substring(0, loginTime.indexOf(' '));
			mUserId = mUser.getString(NameSpace.USER_ID);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}	
	}
	

	public void initialize() {
		// system
		mInputMethodManager = (InputMethodManager) getSystemService(INPUT_METHOD_SERVICE);
		
		// init popup with anchor, change anchor for popup later
		anchorForPopup = findViewById(R.id.rb_search);

		mPopupMenuWorksByDay = new PopupMenuWorksByDate(anchorForPopup, mOnClickDateListener);
		
		mPopupMenuAccount = new PopupMenuAccount(anchorForPopup);
		mPopupMenuAccount.setData(mUser); // data of account from intent
		mPopupMenuAccount.setOnClickExit(onClickExit);
		
		mPopupMenuSearch = new PopupMenuSearch(anchorForPopup);
		mPopupMenuSearch.setListener(onClickSearch);
		
		
		
		// when dissmiss, clear check of radio group
		mPopupMenuWorksByDay.setOnDismissListener(mOnDismissPopupMenu);
		mPopupMenuAccount.setOnDismissListener(mOnDismissPopupMenu);
		mPopupMenuSearch.setOnDismissListener(mOnDismissPopupMenu);
		
		// init other views
		layoutFilter2 = findViewById(R.id.layout_filter_2);
		layoutFilter2.findViewById(R.id.btn_filter_ship).setOnClickListener(onClickFilterButton2);
		layoutFilter2.findViewById(R.id.btn_filter_type).setOnClickListener(onClickFilterButton2);
		layoutFilter2.findViewById(R.id.btn_filter_streets).setOnClickListener(onClickFilterButton2);
		
		mlvWorks = (ListView) findViewById(R.id.lv_works);
		worksViewCreator = new WorksViewCreator(mlvWorks);
		worksViewCreator.setDate(todayDate);
		// start download all data for workview
		
		mlvReports = (ListView) findViewById(R.id.lv_reports);
		reportsViewCreator = new ReportsViewCreator(mlvReports, onClickReportDate);
		
		radioGroupTopMenu = (RadioGroup) findViewById(R.id.rg_top);
		setRadioButtonsOfTopMenu();
		
		mPopupDealFilter = new PopupDealFilter(anchorForPopup, mFilterListener, mUserId, worksViewCreator.mapDateToData);
		
	}
	
	public void setRadioButtonsOfTopMenu() {
		((RadioButton) findViewById(R.id.rb_search)).setOnCheckedChangeListener(onCheckedChangeRadioButtonTopMenu);
		((RadioButton) findViewById(R.id.rb_reports)).setOnCheckedChangeListener(onCheckedChangeRadioButtonTopMenu);
		((RadioButton) findViewById(R.id.rb_works_by_date)).setOnCheckedChangeListener(onCheckedChangeRadioButtonTopMenu);
		((RadioButton) findViewById(R.id.rb_account)).setOnCheckedChangeListener(onCheckedChangeRadioButtonTopMenu);
	}

	
	
	
	
	
	
	/* ------------------- Listener Implementation ------------------- */
	/* ------------------- Listener Implementation ------------------- */
	/* ------------------- Listener Implementation ------------------- */
	
	OnClickListener mOnClickDateListener = new OnClickListener() {
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String date = v.getTag().toString();
			worksViewCreator.mWorksAdapter.setWorkViewDisplayMode(NameSpace.WORK_DISPLAY_DATE);
			worksViewCreator.setDate(date);
			mPopupMenuWorksByDay.dismiss();
			mPopupDealFilter.clearCheckedButton();
		}
	};	
	
	OnClickListener onClickFilterButton2 = new OnClickListener() {
		public void onClick(View v) {
			// TODO Auto-generated method stub
			mPopupDealFilter.setAnchor(v);
			mPopupDealFilter.setCurrentDateForCounting(worksViewCreator.mWorksAdapter.getDate());
			
			switch (v.getId()) {
			case R.id.btn_filter_ship:
				mPopupDealFilter.setFilterGroup(NameSpace.FILTER_GROUP_SHIP);
				break;
			case R.id.btn_filter_type:
				mPopupDealFilter.setFilterGroup(NameSpace.FILTER_GROUP_TYPE);
				break;
			case R.id.btn_filter_streets:
				mPopupDealFilter.setFilterGroup(NameSpace.FILTER_GROUP_STREETS);
				mPopupDealFilter.setCurrentDateForShowingStreet(worksViewCreator.mWorksAdapter.getDate());
				break;
			default:
				break;
			}
			
			mPopupDealFilter.showLikeQuickAction();
		}
	};
	
	FilterListener mFilterListener = new FilterListener() {
		public void filter(String filterValue) {
			// TODO Auto-generated method stub
			worksViewCreator.filter(filterValue);
		}
	};

	OnCheckedChangeListener onCheckedChangeRadioButtonTopMenu = new OnCheckedChangeListener() {
		public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
			// TODO Auto-generated method stub
			if (!isChecked) return;
			int buttonId = buttonView.getId();

			if (buttonId == R.id.rb_reports) {
				mlvReports.setVisibility(View.VISIBLE);
				mlvWorks.setVisibility(View.GONE);
				layoutFilter2.setVisibility(View.GONE);
				if (!reportsViewCreator.downloaded) reportsViewCreator.startDownload();
			} else {
				layoutFilter2.setVisibility(View.VISIBLE);
				mlvWorks.setVisibility(View.VISIBLE);
				mlvReports.setVisibility(View.GONE);
			}

			if (buttonId == R.id.rb_search) {
				mPopupMenuSearch.setAnchor(buttonView);
				mPopupMenuSearch.showLikeQuickAction();
				mInputMethodManager.toggleSoftInput(0, 0);
			} else if (buttonId == R.id.rb_works_by_date) {
				mPopupMenuWorksByDay.setAnchor(buttonView);
				mPopupMenuWorksByDay.showLikePopDownMenu();
			}  else if (buttonId == R.id.rb_account) {
				mPopupMenuAccount.setAnchor(buttonView);
				mPopupMenuAccount.showLikeQuickAction();
			}
		}
	};

	OnDismissListener mOnDismissPopupMenu = new OnDismissListener() {
		public void onDismiss() {
			// TODO Auto-generated method stub
			radioGroupTopMenu.clearCheck();
		}
	};
	
	OnClickListener onClickSearch = new OnClickListener() {
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String searchValue = mPopupMenuSearch.searchValue.toString();
			if (searchValue.trim().length() < 3) {
				Tools.toast(getApplicationContext(), "Nhập ít nhất 3 ký tự");
				return;
			}
			
			mPopupMenuSearch.dismiss();
			
			String searchType = NameSpace.SEARCH_ALL;
			if (v.getId() == R.id.btn_all) searchType = NameSpace.SEARCH_ALL;
			else if (v.getId() == R.id.btn_ticket) searchType = NameSpace.SEARCH_TICKETS;
			else if (v.getId() == R.id.btn_good) searchType = NameSpace.SEARCH_GOODS;
			else if (v.getId() == R.id.btn_solo) searchType = NameSpace.SEARCH_SOLO;			
			worksViewCreator.mSearchHelper.search(searchValue, searchType, false);
		}
	};
	
	OnItemClickListener onClickReportDate= new OnItemClickListener() {
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			String date = (String) view.getTag(R.id.date);
			mlvReports.setVisibility(View.GONE);
			mlvWorks.setVisibility(View.VISIBLE);
			layoutFilter2.setVisibility(View.VISIBLE);
			worksViewCreator.setDate(date);
			radioGroupTopMenu.clearCheck();
		}
	};
	
	OnClickListener onClickExit = new OnClickListener() {
		public void onClick(View v) {
			// TODO Auto-generated method stub
			SharedPreferences sharedPreferences = getSharedPreferences(NameSpace.SP_NAME, Context.MODE_PRIVATE);
			SharedPreferences.Editor editor = sharedPreferences.edit();
			editor.putString(NameSpace.USERNAME, "");
			editor.putString(NameSpace.PASSWORD, "");
			editor.commit();
			finish();
		}
	};	
	
	@Override
	protected void onDestroy() {
		super.onDestroy();
		SESSIONID = null;
		worksViewCreator.onDestroy();
	};
}
