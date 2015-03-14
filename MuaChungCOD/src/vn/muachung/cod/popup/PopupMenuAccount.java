package vn.muachung.cod.popup;

import org.example.qberticus.quickactions.BetterPopupWindow;
import org.json.JSONObject;

import vn.muachung.cod.services.NameSpace;

import vn.muachung.cod.muachungmobile.R;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

public class PopupMenuAccount extends BetterPopupWindow {
	
	View popupView;
	JSONObject data;
	
	// listener
	OnClickListener onClickExit;

	public PopupMenuAccount(View anchor) {
		super(anchor);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	protected void onCreate() {
		// TODO Auto-generated method stub
		LayoutInflater inflater = LayoutInflater.from(anchor.getContext());
		popupView = inflater.inflate(R.layout.popup_menu_account, null);
		setContentView(popupView);
	}
	
	public void setData(JSONObject data) {
		this.data = data;
	}
	
	public void setOnClickExit(OnClickListener onClickExit) {
		this.onClickExit = onClickExit;
	}
	
	@Override
	protected void onShow() {
		// TODO Auto-generated method stub
		try {
			String username = data.getString(NameSpace.USERNAME);
			((TextView)popupView.findViewById(R.id.tv_username)).setText(username);
			popupView.findViewById(R.id.btn_exit).setOnClickListener(onClickExit);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}