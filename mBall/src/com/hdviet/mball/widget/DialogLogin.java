package com.hdviet.mball.widget;

import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.EditText;
import android.widget.Toast;

import com.hdviet.mball.R;
import com.hdviet.mball.datacontrollers.UserController;

public class DialogLogin {
	
	Context mContext;
	Handler mHandler;
	Dialog mDialog;
	
	public DialogLogin(Context context, Handler handler) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mHandler = handler;
		init();
	}
	
	public void init() {
		mDialog = new Dialog(mContext, android.R.style.Theme_Translucent_NoTitleBar);
		mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mDialog.setContentView(R.layout.dialog_login);
		
		mDialog.findViewById(R.id.ll_dialog_login).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mDialog.dismiss();
			}
		});
		
		mDialog.findViewById(R.id.ll_login_container).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				// empty 
			}
		});
		
		mDialog.findViewById(R.id.tv_login).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				login();
			}
		});

	}
	
	public void login() {
		String username = ((EditText)mDialog.findViewById(R.id.et_username)).getText().toString().trim();
		String password = ((EditText)mDialog.findViewById(R.id.et_password)).getText().toString().trim();
		
		if (username.equals("") || password.equals("")) {
			Toast.makeText(mContext, mContext.getText(R.string.please_fillup_data), Toast.LENGTH_SHORT).show();
			return;
		}
			
		UserController.login(mHandler, username, password);
	}
	
	public void show() {
		mDialog.show();
	}
	
	public void dismiss() {
		mDialog.dismiss();
	}
}
