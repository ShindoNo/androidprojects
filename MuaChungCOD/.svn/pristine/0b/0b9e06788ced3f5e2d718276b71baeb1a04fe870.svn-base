package vn.muachung.cod.popup;

import org.example.qberticus.quickactions.BetterPopupWindow;

import vn.muachung.cod.dao.NoteSortSmsDAO;
import vn.muachung.cod.muachungmobile.WorksViewCreator.WorksAdapter;

import vn.muachung.cod.muachungmobile.R;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.PopupWindow.OnDismissListener;

public class PopupDealNote extends BetterPopupWindow implements OnClickListener{
	
	View popupView, btnUpdate;
	EditText etContent;
	
	String orderId;
	
	NoteSortSmsDAO noteAndSortDAO;

	public PopupDealNote(View anchor) {
		super(anchor);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	protected void onCreate() {
		// TODO Auto-generated method stub
		LayoutInflater inflater = LayoutInflater.from(anchor.getContext());
		popupView = inflater.inflate(R.layout.popup_deal_note, null);
		btnUpdate = popupView.findViewById(R.id.btn_update);
		btnUpdate.setOnClickListener(this);
		etContent = (EditText) popupView.findViewById(R.id.et_content);
		
		setContentView(popupView);
	}
	
	public void setDAO(NoteSortSmsDAO noteAndSortDAO) {
		this.noteAndSortDAO = noteAndSortDAO;
	}
	
	public void setData(String orderId) {
		this.orderId = orderId;
	}
	
	@Override
	protected void onShow() {
		// TODO Auto-generated method stub
		if (noteAndSortDAO.checkNoteExist(orderId)) {
			etContent.setText(noteAndSortDAO.getNote(orderId));
			etContent.setSelection(etContent.getText().length());
		} else {
			etContent.setText("");
		}
	}

	public void onClick(View v) {
		// TODO Auto-generated method stub
		if (v.getId() == R.id.btn_update) {
			String content = etContent.getText().toString();
			if (content.trim().equals("")) {
				noteAndSortDAO.deleteNote(orderId);
			} else {
				if (noteAndSortDAO.checkNoteExist(orderId))
					noteAndSortDAO.updateNote(orderId, content);
				else 
					noteAndSortDAO.insertNote(orderId, content);
			}
			
			dismiss(); // after dismiss, notify adapter
		}
	}
	
	
	
}
