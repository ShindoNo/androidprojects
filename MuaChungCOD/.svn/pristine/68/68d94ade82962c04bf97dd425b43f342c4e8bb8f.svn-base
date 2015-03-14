package vn.muachung.cod.popup;

import org.example.qberticus.quickactions.BetterPopupWindow;
import org.json.JSONArray;
import org.json.JSONObject;

import vn.muachung.cod.dao.NoteSortSmsDAO;
import vn.muachung.cod.services.NameSpace;

import vn.muachung.cod.muachungmobile.R;

import android.telephony.SmsManager;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;

public class PopupDealSms extends BetterPopupWindow implements OnClickListener{
	View popupView, btnUpdate, btnCancel;
	TextView tvContent;
	
	String textContent;
	JSONObject data;
	NoteSortSmsDAO noteSortSmsDAO;

	public PopupDealSms(View anchor) {
		super(anchor);
		// TODO Auto-generated constructor stub
	}
	
	public void setData(JSONObject data) {
		this.data = data;
	}
	
	public void setDAO(NoteSortSmsDAO noteSortSmsDAO) {
		this.noteSortSmsDAO = noteSortSmsDAO;
	}
	
	@Override
	protected void onCreate() {
		// TODO Auto-generated method stub
		LayoutInflater inflater = LayoutInflater.from(anchor.getContext());
		popupView = inflater.inflate(R.layout.popup_deal_sms, null);
		btnUpdate = popupView.findViewById(R.id.btn_update);
		btnCancel = popupView.findViewById(R.id.btn_cancel);
		
		tvContent = (TextView) popupView.findViewById(R.id.tv_content);
		textContent = anchor.getContext().getResources().getString(R.string.sms);
		
		setContentView(popupView);
	}	
	
	@Override
	protected void onShow() {
		// TODO Auto-generated method stub
		try {
			String phone = data.getString(NameSpace.PHONE);
			String email = data.getString(NameSpace.EMAIL);
			tvContent.setText(Html.fromHtml(String.format(textContent, phone, email)));
			btnUpdate.setOnClickListener(this);
			btnCancel.setOnClickListener(this);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void onClick(View v) {
		// TODO Auto-generated method stub
		dismiss();
		if (v.getId() == R.id.btn_update) {
			try {
				String phone = data.getString(NameSpace.PHONE);
				JSONObject sms = new JSONObject(noteSortSmsDAO.getSms(data.getString(NameSpace.ORDER_ID)));
				JSONArray smsArr = sms.names();
				for (int i = 0; i < smsArr.length(); i++) {
					String smsId = smsArr.getString(i);
					String smsContent = sms.getString(smsId);
					SmsManager.getDefault().sendTextMessage(phone, null, smsContent, null, null);
				}
				Toast.makeText(anchor.getContext(), "Đã gửi", Toast.LENGTH_SHORT).show();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
}
