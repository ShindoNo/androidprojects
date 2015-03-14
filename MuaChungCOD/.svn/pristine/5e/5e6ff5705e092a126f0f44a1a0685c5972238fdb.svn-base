package vn.muachung.cod.popup;
import vn.muachung.cod.muachungmobile.R;
import org.example.qberticus.quickactions.BetterPopupWindow;
import org.json.JSONObject;

import vn.muachung.cod.services.NameSpace;


import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

public class PopupDealInfo extends BetterPopupWindow{
	
	View popupView;
	TextView tvType, tvPay, tvEmail, tvNote;
	
	JSONObject data;

	public PopupDealInfo(View anchor) {
		super(anchor);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	protected void onCreate() {
		// TODO Auto-generated method stub
		LayoutInflater inflater = LayoutInflater.from(anchor.getContext());
		popupView = inflater.inflate(R.layout.popup_deal_info, null);
		tvType = (TextView) popupView.findViewById(R.id.tv_type);
		tvPay = (TextView) popupView.findViewById(R.id.tv_pay);
		tvEmail = (TextView) popupView.findViewById(R.id.tv_email);
		tvNote = (TextView) popupView.findViewById(R.id.tv_note);
		
		setContentView(popupView);
	}
	
	public void setData(JSONObject data) {
		this.data = data;
	}
	
	@Override
	protected void onShow() {
		// TODO Auto-generated method stub
		try {
			if (data.getString(NameSpace.TYPE).equals("1")) tvType.setText("Phiếu");
			else if (data.getString(NameSpace.TYPE).equals("2")) tvType.setText("Hàng");
			
			if (data.getString(NameSpace.MUST_PAY).equals("1")) tvPay.setText("Chưa thanh toán");
			else if (data.getString(NameSpace.MUST_PAY).equals("0")) tvPay.setText("�?ã thanh toán");
			
			tvEmail.setText(data.getString(NameSpace.EMAIL));
			tvNote.setText(data.getString(NameSpace.NOTE_SHIP));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
}
