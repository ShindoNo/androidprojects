package vn.muachung.cod.popup;
import vn.muachung.cod.muachungmobile.R;
import org.example.qberticus.quickactions.BetterPopupWindow;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;

public class PopupDealGoTo extends BetterPopupWindow {
	InputMethodManager mInputMethodManager;
	
	View popupView, btnCancel, btnUpdate;
	EditText etPosition;
	OnClickListener onSelectPosition;
	
	int currentPos, maxPos;

	public PopupDealGoTo(View anchor) {
		super(anchor);
		// TODO Auto-generated constructor stub
	}
	
	public void setData(int currentPost, int maxPos) {
		this.currentPos = currentPost;
		this.maxPos = maxPos;
		btnUpdate.setTag(currentPost);
	}
	
	public void setListener(OnClickListener onClickListener) {
		onSelectPosition = onClickListener;
		btnUpdate.setOnClickListener(onSelectPosition);
		btnCancel.setOnClickListener(onSelectPosition);
	}
	
	@Override
	protected void onCreate() {
		// TODO Auto-generated method stub
		LayoutInflater inflater = LayoutInflater.from(anchor.getContext());
		mInputMethodManager = (InputMethodManager) anchor.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
		popupView = inflater.inflate(R.layout.popup_deal_go_to, null);
		
		btnUpdate = popupView.findViewById(R.id.btn_update);
		btnCancel = popupView.findViewById(R.id.btn_cancel);
		etPosition = (EditText) popupView.findViewById(R.id.et_position);
		
		setContentView(popupView);
	}
	
	TextWatcher textWatcher = new TextWatcher() {
		public void onTextChanged(CharSequence s, int start, int before, int count) {}
		
		public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
		
		public void afterTextChanged(Editable s) {
			// TODO Auto-generated method stub
			if (s.length() == 0) {
				btnUpdate.setTag(-1);
				return;
			}
			
			int newPos = Integer.parseInt(s.toString());
			if (newPos > maxPos+1) {
				Toast.makeText(anchor.getContext(), "Nhập vị trí <= " + (maxPos+1), Toast.LENGTH_SHORT).show();
				etPosition.setText((maxPos+1) + "");
				etPosition.setSelection(etPosition.getText().length());
				btnUpdate.setTag(maxPos);
			} else {
				btnUpdate.setTag(newPos-1);
			}
		}
	};
	
	@Override
	protected void onShow() {
		// TODO Auto-generated method stub
		etPosition.addTextChangedListener(textWatcher);
		etPosition.setText((currentPos+1) + "");
		etPosition.setSelection(0, etPosition.getText().length());
		mInputMethodManager.toggleSoftInput(0, 0);
	}

}
