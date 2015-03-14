package com.sologame.sdk;

import java.util.UUID;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.sologame.sdk.util.NameSpace;
import com.sologame.sdk.util.ServiceHelper;
import com.sologame.sdk.util.Utils;

public class DialogPayment {
	
	Activity mActivity;
	OnPayListener mOnPayListener;
	Dialog mDialog;
	
	JSONArray mListPayment;
	
	
	ProgressDialog mProgressDialog;
	
	public DialogPayment(Activity activity, OnPayListener onPayListener) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mOnPayListener = onPayListener;
		
		initUI();
		mDialog.show();
		downloadListPayment();
	}
	
	public void initUI() {
		mProgressDialog = new ProgressDialog(mActivity);
		mProgressDialog.setMessage("Loading...");
		
		mDialog = new Dialog(mActivity, android.R.style.Theme_Light_NoTitleBar);	
		mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mDialog.setContentView(R.layout.dialog_payment);
	}
	
	
	
	public void downloadListPayment() {
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				
				String apiUrl = Utils.createApiUrl(mActivity, NameSpace.COMMAND_GET_LIST_PRODUCT, "");
				final String response = ServiceHelper.get(apiUrl);
				
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						if (Utils.checkResponseError(mActivity, response) == false) {
							displayListPayment(response);
						}	
					}
				});
				
			}
		}).start();
	}
	
	public void displayListPayment(String data) {
		try {
			JSONObject dataJSON = new JSONObject(data);
			mListPayment = dataJSON.getJSONArray("data");
			
			LinearLayout llListPaymentContainer = (LinearLayout) mDialog.findViewById(R.id.ll_list_payment_container);
			LayoutInflater inflater = LayoutInflater.from(mActivity);
			
			for (int i = 0; i < mListPayment.length(); i++) {
				JSONObject payment = mListPayment.getJSONObject(i);
				View rowPayment = inflater.inflate(R.layout.item_payment, null);
				((TextView)rowPayment.findViewById(R.id.tv_product_name)).setText(payment.getString("product_name"));
				((TextView)rowPayment.findViewById(R.id.tv_price)).setText(payment.getString("amount_fpay") + " fpay");
				
				rowPayment.findViewById(R.id.btn_buy).setTag(R.id.tag_payment, payment);
				rowPayment.findViewById(R.id.btn_buy).setTag(R.id.tag_quantity_view, rowPayment.findViewById(R.id.et_quantity));
				rowPayment.findViewById(R.id.btn_buy).setOnClickListener(mOnClickPaymentListener);
				
				llListPaymentContainer.addView(rowPayment);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	OnClickListener mOnClickPaymentListener = new OnClickListener() {
		@Override
		public void onClick(final View v) {
			// TODO Auto-generated method stub
			try {
				final JSONObject payment = (JSONObject) v.getTag(R.id.tag_payment);
				String productName = payment.getString("product_name");
				final String quantity = ((EditText)v.getTag(R.id.tag_quantity_view)).getText().toString().trim();
				String productPrice = payment.getString("amount_fpay") + " fpay";
				
				AlertDialog.Builder builder = new Builder(mActivity);
				String buyConfirm = mActivity.getString(R.string.buy_confirm).replace("s0", "<b>" + quantity + "</b>").replace("s1", "<b>" + productName + "</b>").replace("s2", "<b>" + productPrice + "</b>");
				builder.setMessage(Html.fromHtml(buyConfirm));
				builder.setPositiveButton(mActivity.getString(R.string.buy_confirm_yes), new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						
						buyProduct(payment, quantity);
					}
				});
				
				builder.setNegativeButton(mActivity.getString(R.string.buy_confirm_no), new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						dialog.dismiss();
					}
				});
				
				builder.show();
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	};
	
	public void buyProduct(final JSONObject payment, final String quantity) {
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject dataJSON = new JSONObject();
					
					dataJSON.put("access_token", Utils.getString(mActivity, NameSpace.SAVED_ACCESS_TOKEN));
					dataJSON.put("orderSerial", UUID.randomUUID().toString());
					dataJSON.put("product_id", payment.getString("product_id"));
					dataJSON.put("product_name", payment.getString("product_name"));
					dataJSON.put("pay_description", payment.getString("product_description"));
					dataJSON.put("product_quantity", quantity);
					dataJSON.put("product_price", payment.getString("product_price"));
					dataJSON.put("amount_fpay", payment.getString("amount_fpay"));
					dataJSON.put("server_id", Utils.getString(mActivity, NameSpace.SAVED_SERVER_ID));
					
					String data = dataJSON.toString();
					String apiUrl = Utils.createApiUrl(mActivity, NameSpace.COMMAND_PAYMENT_IN_GAME, data);
					final String response = ServiceHelper.get(apiUrl);
					
					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							mProgressDialog.dismiss();
							// TODO Auto-generated method stub
							if (Utils.checkResponseError(mActivity, response) == false) {
								mDialog.dismiss();
								// save Fpay
								try {
									JSONObject responseJSON = new JSONObject(response);
									String fpay = responseJSON.getJSONObject("data").getString("Fpay");
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
	
	
	public interface OnPayListener {
		public void onpaySuccessful();
	}
	
}
