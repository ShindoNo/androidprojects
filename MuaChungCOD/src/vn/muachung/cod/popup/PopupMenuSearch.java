package vn.muachung.cod.popup;

import org.example.qberticus.quickactions.BetterPopupWindow;

import vn.muachung.cod.muachungmobile.R;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

public class PopupMenuSearch extends BetterPopupWindow {
	
	View popupView, btnTicket, btnGood, btnBoth, btnSolo;
	EditText etValue;
	OnClickListener onClickSearch;
	
	public String searchValue = "";
	
	public PopupMenuSearch(View anchor) {
		super(anchor);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	protected void onCreate() {
		// TODO Auto-generated method stub
		Context context = anchor.getContext();
		LayoutInflater inflater = LayoutInflater.from(context);
		
		popupView = inflater.inflate(R.layout.popup_menu_search, null);
		btnTicket = popupView.findViewById(R.id.btn_ticket);
		btnGood = popupView.findViewById(R.id.btn_good);
		btnBoth = popupView.findViewById(R.id.btn_all);
		btnSolo = popupView.findViewById(R.id.btn_solo);
		etValue = (EditText) popupView.findViewById(R.id.et_value);
		
		setContentView(popupView);
	}
	
	public void setListener(OnClickListener onClickListener) {
		onClickSearch = onClickListener;
	}
	
	@Override
	protected void onShow() {
		// TODO Auto-generated method stub
		etValue.setText("");
		etValue.addTextChangedListener(textWatcher);
		btnTicket.setOnClickListener(onClickSearch);
		btnGood.setOnClickListener(onClickSearch);
		btnBoth.setOnClickListener(onClickSearch);
		btnSolo.setOnClickListener(onClickSearch);
	}
	
	TextWatcher textWatcher = new TextWatcher() {
		public void onTextChanged(CharSequence s, int start, int before, int count) {}
		
		public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
		
		public void afterTextChanged(Editable s) {
			// TODO Auto-generated method stub
			searchValue = s.toString();
		}
	};
	
	
	
}
