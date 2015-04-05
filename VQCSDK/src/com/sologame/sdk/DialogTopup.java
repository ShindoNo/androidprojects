package com.sologame.sdk;

import org.json.JSONObject;

import com.google.android.gms.internal.bu;
import com.google.android.gms.internal.di;
import com.sologame.sdk.util.NameSpace;
import com.sologame.sdk.util.ServiceHelper;
import com.sologame.sdk.util.Utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class DialogTopup {
	
	Dialog mDialog;
	Activity mActivity;
	
	// tab payment
	String[] telcoType = new String[] {"Viettel", "Mobiphone", "Vinaphone", "FPAY"};
	String[] telcoTypeCode = new String[] {"VT", "MOBI", "VINA", "FPAY"};
	int mSelectedTelco = 0;	
	
	ProgressDialog mProgressDialog;
	
	public DialogTopup(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		initUI();
	}
	
	public void initUI() {
		mProgressDialog = new ProgressDialog(mActivity);
		mProgressDialog.setMessage("Loading...");
		
		mDialog = new Dialog(mActivity);
		mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mDialog.setContentView(R.layout.dialog_topup);
		
		((TextView)mDialog.findViewById(R.id.tv_telco)).setText(telcoType[mSelectedTelco]);
		mDialog.findViewById(R.id.tv_telco).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				AlertDialog.Builder builder = new AlertDialog.Builder(mActivity);
				builder.setSingleChoiceItems(telcoType, mSelectedTelco, new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						if (mSelectedTelco != which) {
							mSelectedTelco = which;
							((TextView)mDialog.findViewById(R.id.tv_telco)).setText(telcoType[mSelectedTelco]);
						}
					}
				});
				builder.show();
			}
		});
		
		mDialog.findViewById(R.id.btn_confirm).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				topup();
			}
		});
	}
	
	public void topup() {
		final String pin = ((EditText)mDialog.findViewById(R.id.tv_pin)).getText().toString().trim();
		final String serial = ((EditText)mDialog.findViewById(R.id.tv_serial)).getText().toString().trim();
		
		if (pin.equals("") || serial.equals("")) {
			Toast.makeText(mActivity, mActivity.getString(R.string.please_fill_up_info), Toast.LENGTH_SHORT).show();
			return;
		}
		
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject dataJSON = new JSONObject();
					dataJSON.put("access_token", Utils.getString(mActivity, NameSpace.SAVED_ACCESS_TOKEN));
					dataJSON.put("telco", telcoTypeCode[mSelectedTelco]);
					dataJSON.put("pin", pin);
					dataJSON.put("serial", serial);
					String data = dataJSON.toString();
					
					String apiUrl = Utils.createApiUrl(mActivity, NameSpace.COMMAND_PURCHASE_TELCO, data);
					final String response = ServiceHelper.get(apiUrl);
					
					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							if (Utils.checkResponseError(mActivity, response) == false) {
								mDialog.dismiss();
								Toast.makeText(mActivity, mActivity.getString(R.string.dashboard_addmoney_successful), Toast.LENGTH_SHORT).show();
								try {
									JSONObject responseJSON = new JSONObject(response);
									String fpay = responseJSON.getJSONObject("data").getString("Fpay");
									((TextView)mDialog.findViewById(R.id.tv_fpay)).setText(fpay);
									
									JSONObject userInfoJSON = new JSONObject(Utils.getString(mActivity, NameSpace.SAVED_USER_INFO));
									userInfoJSON.put("Fpay", fpay);
									Utils.saveString(mActivity, NameSpace.SAVED_USER_INFO, userInfoJSON.toString());
								} catch (Exception e) {
									// TODO: handle exception
									e.printStackTrace();
								}
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
	
	public void show() {
		mDialog.show();
	}

}
