package vn.muachung.cod.popup;

import org.example.qberticus.quickactions.BetterPopupWindow;

import vn.muachung.cod.muachungmobile.R;


import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;

public class PopupDealCall extends BetterPopupWindow implements OnClickListener {
	Context mContext;
	
	View popupView;
	ImageView imgAccept, imgCancel;
	TextView tvContent;
	
	String phoneNumb;

	public PopupDealCall(View anchor) {
		super(anchor);
		// TODO Auto-generated constructor stub
	}
	
	public void setData(Context c, String phoneNumb) {
		mContext = c;
		this.phoneNumb = phoneNumb;
	}
	
	@Override
	protected void onCreate() {
		// TODO Auto-generated method stub
		LayoutInflater inflater = LayoutInflater.from(anchor.getContext());
		popupView = inflater.inflate(R.layout.popup_deal_call, null);
		imgAccept = (ImageView) popupView.findViewById(R.id.img_accept);
		imgCancel = (ImageView) popupView.findViewById(R.id.img_cancel);
		tvContent = (TextView) popupView.findViewById(R.id.tv_content);
		setContentView(popupView);
	}
	
	@Override
	protected void onShow() {
		// TODO Auto-generated method stub
		tvContent.setText(Html.fromHtml("Bạn có muốn gọi tới số điện thoại <b>" + phoneNumb + "</b> không?"));
		imgAccept.setOnClickListener(this);
		imgCancel.setOnClickListener(this);
	}

	public void onClick(View v) {
		// TODO Auto-generated method stub
		dismiss();
		if (v.getId() == R.id.img_accept) {
			Intent intent = new Intent(Intent.ACTION_CALL);
			intent.setData(Uri.parse("tel:" + phoneNumb));
			mContext.startActivity(intent);
		}
	}

}
