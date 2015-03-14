package vn.muachung.cod.popup;

import org.example.qberticus.quickactions.BetterPopupWindow;
import org.json.JSONArray;
import org.json.JSONObject;

import vn.muachung.cod.services.ServiceHelper;
import vn.muachung.cod.services.NameSpace;
import vn.muachung.cod.services.Tools;

import vn.muachung.cod.muachungmobile.R;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class PopupMenuWorksByDate extends BetterPopupWindow {
	
	View popupView;
	OnClickListener mOnClickDateListener;
	ProgressDialog progressDialog;
	Context context;
	
	JSONObject mListDates;
	
	public PopupMenuWorksByDate(View anchor, OnClickListener onClickDateListener) {
		super(anchor);
		// TODO Auto-generated constructor stub
		mListDates = null;
		mOnClickDateListener = onClickDateListener;
	}
	
	@Override
	protected void onCreate() {
		// TODO Auto-generated method stub
		context = anchor.getContext();
		LayoutInflater inflater = LayoutInflater.from(anchor.getContext());
		popupView = inflater.inflate(R.layout.popup_menu_works_by_date, null);
		setContentView(popupView);
	}
	
	@Override
	protected void onShow() {
		// TODO Auto-generated method stub
		if (mListDates == null) {
			progressDialog = ProgressDialog.show(anchor.getContext(), "", "Loading..", true, true);
			new Thread(downloadDataRunnable).start();
		}
	}
	
	Runnable downloadDataRunnable = new Runnable() {
		public synchronized void run() {
			// TODO Auto-generated method stub
			String apiUrl = String.format(NameSpace.API_LIST_DATES, NameSpace.CLIENT_ID);
			final JSONObject apiResponse = (JSONObject) ServiceHelper.downloadJsonData(apiUrl, true);
			progressDialog.dismiss();
			
			((Activity)anchor.getContext()).runOnUiThread(new Runnable() {
				public void run() {
					// TODO Auto-generated method stub
					if (apiResponse != null) {
						mListDates = apiResponse;
						setupView();
					} else {
						if (!Tools.checkInternet(context)) 
							Tools.toast(context, "Không có kết nối");
						else
							Tools.toast(context, "Lỗi tải dữ liệu");
					}
				}
			});
		}
	};
	
	public void setupView() {
		LayoutInflater inflater = LayoutInflater.from(anchor.getContext());
		LinearLayout llWorks = (LinearLayout) popupView.findViewById(R.id.ll_works);
		try {
			JSONArray works = mListDates.getJSONArray(NameSpace.WORKS);
			for (int i = 0; i < works.length(); i++) {
				String date = works.getJSONObject(i).getString(NameSpace.DATE);
				String workNum = works.getJSONObject(i).getString(NameSpace.WORK_SHIP_NUM);
				
				View workRow = inflater.inflate(R.layout.row_date, null);
				llWorks.addView(workRow);
				workRow.setTag(date);
				workRow.setOnClickListener(mOnClickDateListener);

				TextView tvDate = (TextView) workRow.findViewById(R.id.tv_date);
				tvDate.setText(date + " (" + workNum + ")");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	
	
}
