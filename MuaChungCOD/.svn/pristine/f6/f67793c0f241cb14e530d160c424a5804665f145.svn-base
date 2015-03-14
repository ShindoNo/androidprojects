package vn.muachung.cod.popup;

import java.net.URLEncoder;

import org.example.qberticus.quickactions.BetterPopupWindow;
import org.json.JSONObject;

import vn.muachung.cod.muachungmobile.WorksViewCreator.WorksAdapter;
import vn.muachung.cod.services.ServiceHelper;
import vn.muachung.cod.services.NameSpace;
import vn.muachung.cod.services.Tools;

import vn.muachung.cod.muachungmobile.R;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.text.Html;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;
import android.widget.Toast;

public class PopupDealReturn extends BetterPopupWindow implements OnClickListener{
	
	Context mContext;
	ProgressDialog mProgressDialog;
	
	View popupView, btnUpdate, btnCancel;
	TextView tvContent;
	WorksAdapter worksAdapter;
	
	RadioGroup rgReason;
	EditText etReason;
	
	JSONObject mWork;
	String textContent;

	public PopupDealReturn(View anchor) {
		super(anchor);
		// TODO Auto-generated constructor stub
	}

	/**
	 * Set layout of popup
	 */
	@Override
	protected void onCreate() {
		// TODO Auto-generated method stub
		mContext = anchor.getContext();
		LayoutInflater inflater = LayoutInflater.from(anchor.getContext());
		popupView = inflater.inflate(R.layout.popup_deal_return, null);
		
		btnUpdate = popupView.findViewById(R.id.btn_update);
		btnUpdate.setOnClickListener(this);
		btnCancel = popupView.findViewById(R.id.btn_cancel);
		btnCancel.setOnClickListener(this);
		
		tvContent = (TextView) popupView.findViewById(R.id.tv_content);
		textContent = mContext.getResources().getString(R.string.return_deal);
		
		rgReason = (RadioGroup) popupView.findViewById(R.id.rg_reason);
		rgReason.setOnCheckedChangeListener(onCheckedChangeListener);
		etReason = (EditText) popupView.findViewById(R.id.et_reason);
		
		setContentView(popupView);
	}
	
	/**
	 * Set data used to show on popup
	 * @param data
	 */
	public void setData(JSONObject work) {
		mWork = work;
	}	
	
	public void setAdapter(WorksAdapter adapter) {
		worksAdapter = adapter;
	}
	
	/**
	 * Set data on popup before showing
	 */
	@Override
	protected void onShow() {
		// TODO Auto-generated method stub
		try {
			String email = mWork.getString(NameSpace.EMAIL);
			String note = mWork.getString(NameSpace.NOTE);
			String street = mWork.getString(NameSpace.STREET);
			String ward = mWork.getString(NameSpace.WARD);
			
			StringBuilder addressBuilder = new StringBuilder();
			if (!note.equals("")) addressBuilder.append(note);
			if (!street.equals("")) addressBuilder.append(",").append(street);
			if (!ward.equals("")) addressBuilder.append(",").append(ward);
			
			String address = addressBuilder.toString();
			
			tvContent.setText(Html.fromHtml(String.format(textContent, email, address)));
			
			((RadioButton)popupView.findViewById(R.id.rb_reason_cancel)).setChecked(true);
			etReason.setVisibility(View.GONE);
			rgReason.setOnCheckedChangeListener(onCheckedChangeListener);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void onClick(View v) {
		// TODO Auto-generated method stub
		final String reason = getReason();
		if (reason == null && rgReason.getCheckedRadioButtonId() == R.id.rb_reason_other)
			return;
		
		dismiss();
		if (v.getId() == R.id.btn_update) {
			mProgressDialog = ProgressDialog.show(mContext, "", "Loading..");
			mProgressDialog.setCancelable(false);
			
			new Thread(new Runnable() {
				public void run() {
					// TODO Auto-generated method stub
					try {
						String orderId = mWork.getString(NameSpace.ORDER_ID);
						String type = mWork.getString(NameSpace.TYPE);
						String apiUrl = String.format(NameSpace.API_RETURN_ORDER, NameSpace.CLIENT_ID, orderId, type, URLEncoder.encode(reason, "utf-8") );
						
						final JSONObject response = (JSONObject) ServiceHelper.downloadJsonData(apiUrl, true);
						((Activity) mContext).runOnUiThread(new Runnable() {
							public void run() {
								// TODO Auto-generated method stub
								mProgressDialog.dismiss();
								
								if (response != null) {
									try {
										String error = response.getString(NameSpace.ERROR);
										if (error.equals("0")) { // return successful
											mWork.put(NameSpace.STATUS, NameSpace.DEAL_STATUS_RETURNED);
											worksAdapter.notifyDataSetChanged();
											Tools.toast(mContext, "Hủy thành công");
										} else {
											Tools.toast(mContext, "Hủy lỗi");
										}									
									} catch (Exception e) {
										// TODO: handle exception
										e.printStackTrace();
									}
								} else {
									Tools.checkInternetAndToast(mContext);
								}
							}
						});
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
				}
			}).start();
		}
	}
	
	OnCheckedChangeListener onCheckedChangeListener = new OnCheckedChangeListener() {
		public void onCheckedChanged(RadioGroup group, int checkedId) {
			// TODO Auto-generated method stub
			if (checkedId == R.id.rb_reason_other)
				etReason.setVisibility(View.VISIBLE);
			else
				etReason.setVisibility(View.GONE);
		}
	};
	
	public String getReason() {
		if (rgReason.getCheckedRadioButtonId() == R.id.rb_reason_other) {
			if (etReason.getText().toString().trim().length() == 0) {
				Tools.toast(mContext, "Hãy nhập lý do hủy");
				return null;
			} else {
				return etReason.getText().toString().trim();
			}
		} else {
			return ((RadioButton) rgReason.findViewById(rgReason.getCheckedRadioButtonId())).getText().toString();
		}
	}
	
}
