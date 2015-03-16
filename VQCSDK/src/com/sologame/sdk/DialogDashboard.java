package com.sologame.sdk;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.sologame.sdk.SoloSDK.OnLogoutListener;
import com.sologame.sdk.util.MyLog;
import com.sologame.sdk.util.NameSpace;
import com.sologame.sdk.util.ServiceHelper;
import com.sologame.sdk.util.Utils;

public class DialogDashboard {
	
	Activity mActivity;
	OnLogoutListener mOnLogoutListener;
	Dialog mDialog;
	
	HashMap<Integer, JSONArray> mMapTypeToData;
	JSONArray mCurrentData;
	
	ListView mListNews;
	NewsAdapter mNewsAdapter;
	
	ProgressDialog mProgressDialog;
	
	View mCurrentMenu;
	TextView mCurrentTabAccount;
	JSONArray mDataAddMoneyHistory;
	
	
	
	// tab payment
	String[] telcoType = new String[] {"Viettel", "Mobiphone", "Vinaphone", "FPAY"};
	String[] telcoTypeCode = new String[] {"VT", "MOBI", "VINA", "FPAY"};
	int mSelectedTelco = 0;
	
	// tab homepage
	String mHomepageLink;
	
	// tab account
	int mDay, mMonth, mYear;
	
	public DialogDashboard(Activity activity, OnLogoutListener onLogoutListener) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mOnLogoutListener = onLogoutListener;
		mMapTypeToData = new HashMap<Integer, JSONArray>();
		
		long time = System.currentTimeMillis();
		initUI();
		MyLog.log("total time =" + (System.currentTimeMillis() - time));
		
		mDialog.show();
	}
	
	@SuppressLint("NewApi")
	public void initUI() {
		mProgressDialog = new ProgressDialog(mActivity);
		mProgressDialog.setMessage("Loading...");
		mDialog = new Dialog(mActivity, android.R.style.Theme_Light_NoTitleBar);	
		mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);			
		mDialog.setContentView(R.layout.dialog_dashboard);
	
		mDialog.findViewById(R.id.tv_menu_account).setOnClickListener(mOnClickMenuListener);
		mDialog.findViewById(R.id.tv_menu_addmoney).setOnClickListener(mOnClickMenuListener);
		mDialog.findViewById(R.id.tv_menu_help).setOnClickListener(mOnClickMenuListener);
		mDialog.findViewById(R.id.tv_menu_home).setOnClickListener(mOnClickMenuListener);
		mDialog.findViewById(R.id.tv_menu_inbox).setOnClickListener(mOnClickMenuListener);
		mDialog.findViewById(R.id.tv_menu_fb_group).setOnClickListener(mOnClickMenuListener);
		mDialog.findViewById(R.id.tv_menu_report).setOnClickListener(mOnClickMenuListener);
		mDialog.findViewById(R.id.tv_menu_update_account).setOnClickListener(mOnClickMenuListener);
		
		mCurrentMenu = mDialog.findViewById(R.id.tv_menu_home);
		mCurrentMenu.setBackgroundColor(Color.WHITE);
		
		// tab listnews
		((WebView)mDialog.findViewById(R.id.webview_dashboard)).setWebViewClient(new WebViewClient());
		mListNews = (ListView) mDialog.findViewById(R.id.lv_dashboard);
		mNewsAdapter = new NewsAdapter();
		mListNews.setAdapter(mNewsAdapter);
		mListNews.setOnItemClickListener(mOnClickNewsListener);
		showTabHomePage();
		
		
		// tab user info and payment
		mDialog.findViewById(R.id.tv_tab_account_info).setOnClickListener(mOnClickTabAccountListener);
		mDialog.findViewById(R.id.tv_update_user_info).setEnabled(false);
		mDialog.findViewById(R.id.tv_update_user_info).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				updateUserInfo();
			}
		});
			
		mDialog.findViewById(R.id.et_address).setOnTouchListener(mOnChangeUserInfoListener);		
		mDialog.findViewById(R.id.et_cardno).setOnTouchListener(mOnChangeUserInfoListener);
		mDialog.findViewById(R.id.et_email).setOnTouchListener(mOnChangeUserInfoListener);
		mDialog.findViewById(R.id.et_fullname).setOnTouchListener(mOnChangeUserInfoListener);
		mDialog.findViewById(R.id.et_phonenumber).setOnTouchListener(mOnChangeUserInfoListener);
		mDialog.findViewById(R.id.et_birthday).setOnTouchListener(new OnTouchListener() {
			@Override
			public boolean onTouch(View v, MotionEvent event) {
				// TODO Auto-generated method stub
				if (event.getAction() == MotionEvent.ACTION_UP) {
					
					OnDateSetListener onDateSetListener = new OnDateSetListener() {
						@Override
						public void onDateSet(DatePicker view, int year, int monthOfYear, int dayOfMonth) {
							// TODO Auto-generated method stub
							mDay = dayOfMonth;
							mMonth = monthOfYear;
							mYear = year;
							
							MyLog.log("onDateSet d=" + dayOfMonth + " ; m=" + monthOfYear + " ; y=" + year);
							
							((EditText)mDialog.findViewById(R.id.et_birthday)).setText(dayOfMonth + "/" + (monthOfYear+1) + "/" + year);
							mDialog.findViewById(R.id.tv_update_user_info).setEnabled(true);
							((TextView)mDialog.findViewById(R.id.tv_update_user_info)).setTextColor(Color.parseColor("#d14129"));							
						}
					};
					
					String birth = ((EditText)mDialog.findViewById(R.id.et_birthday)).getText().toString().trim();
					
					int year;
					int month;
					int day;
					
					Calendar c = Calendar.getInstance();
					if (birth.equals("")) {
						year = c.get(Calendar.YEAR);
						month = c.get(Calendar.MONTH);
						day = c.get(Calendar.DAY_OF_MONTH);
					} else {
						String[] dateString = birth.split("/");
						year = Integer.parseInt(dateString[2]);
						month = Integer.parseInt(dateString[1])-1;
						day = Integer.parseInt(dateString[0]);
						
						MyLog.log("currentDate d=" + day + " ; m=" + month + " ; y=" + year);
					}
					DatePickerDialog datePickerDialog = new DatePickerDialog(mActivity, onDateSetListener, year, month, day);
					datePickerDialog.show();
					
					return true;
				}
				return false;
			}
		});
		
		mDialog.findViewById(R.id.tv_tab_addmoney_history).setOnClickListener(mOnClickTabAccountListener);
		
		
		// tab payment
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
						mSelectedTelco = which;
						((TextView)mDialog.findViewById(R.id.tv_telco)).setText(telcoType[mSelectedTelco]);
					}
				}).setTitle(mActivity.getString(R.string.dashboard_addmoney_telco)).show();
			}
		});
		
		mDialog.findViewById(R.id.btn_confirm).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				payment();
			}
		});
		
		// tab logout
		mDialog.findViewById(R.id.btn_logout_dashboard).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Utils.saveString(mActivity, NameSpace.SAVED_ACCESS_TOKEN, null);
				Utils.saveString(mActivity, NameSpace.SAVED_UID, null);
				Utils.saveString(mActivity, NameSpace.SAVED_USERNAME, null);
				Utils.saveString(mActivity, NameSpace.SAVED_USER_INFO, null);
				mDialog.dismiss();
				mOnLogoutListener.onLogoutSuccessful();
			}
		});		
		
		
		// tab report bug
		mDialog.findViewById(R.id.tv_hotline).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:0435380202"));
				mActivity.startActivity(intent);
			}
		});
		
		mDialog.findViewById(R.id.tv_email_report).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(Intent.ACTION_SENDTO, Uri.fromParts("mailto", "hotro.tl@fpay.vn", null));
				intent.putExtra(Intent.EXTRA_SUBJECT, mActivity.getString(R.string.subject) + mActivity.getString(mActivity.getApplicationInfo().labelRes));
				mActivity.startActivity(Intent.createChooser(intent, mActivity.getText(R.string.send_email_by)));
			}
		});
		
		
		// tab update info
		mDialog.findViewById(R.id.btn_update_account_fb).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				updateAccount();
			}
		});
		
//		 check tab update user info should be shown or not
		if (Utils.getString(mActivity, NameSpace.SAVED_ACCOUNT_FPAY) != null) {
			mDialog.findViewById(R.id.tv_menu_update_account).setVisibility(View.GONE);
			mDialog.findViewById(R.id.fl_update_account).setVisibility(View.GONE);
		}
		
		// show/hide menu
		mDialog.findViewById(R.id.img_menu).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (mDialog.findViewById(R.id.ll_menuleft).getVisibility() == View.VISIBLE) {
					mDialog.findViewById(R.id.ll_menuleft).setVisibility(View.GONE);
				} else {
					mDialog.findViewById(R.id.ll_menuleft).setVisibility(View.VISIBLE);
				}
			}
		});
		
		// set layout transition if SDK VERSION >= 11
		if (Build.VERSION.SDK_INT >= 11) {
			LayoutTransition layoutTransition = new LayoutTransition();
			((LinearLayout)mDialog.findViewById(R.id.ll_container)).setLayoutTransition(layoutTransition);
		}
		
		// refresh payment history
		mDialog.findViewById(R.id.btn_reload).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				downloadAddMoneyHistory();
			}
		});
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Show tab list news
	 * @param type
	 */
	public void showTabListNews(int type) {
		mDialog.findViewById(R.id.layout_listnews_and_newsdetails).setVisibility(View.VISIBLE);
		mDialog.findViewById(R.id.layout_payment).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_account_and_addmoneyhistory).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_report_bug).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_update_account).setVisibility(View.GONE);
		
		mDialog.findViewById(R.id.lv_dashboard).setVisibility(View.VISIBLE);
		mDialog.findViewById(R.id.webview_dashboard).setVisibility(View.GONE);		
		
		if (type == -1) {
			mCurrentData = null;
			mNewsAdapter.notifyDataSetChanged();
		} else {
			mCurrentData = mMapTypeToData.get(type);
			if (mCurrentData == null) {
				downloadData(type);
			} else {
				mNewsAdapter.notifyDataSetChanged();
			}
		}
	}
	
	/**
	 * Download list news by type
	 * @param type
	 */
	public void downloadData(final int type) {
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject dataJSON = new JSONObject();
					dataJSON.put("limit", 30);
					dataJSON.put("option", 0);
					dataJSON.put("type", type);
					String data = dataJSON.toString();
					
					String apiUrl = Utils.createApiUrl(mActivity, NameSpace.COMMAND_GET_LIST_NEWS_BY_TYPE, data);
					final String response = ServiceHelper.get(apiUrl);
					
					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							
							if (Utils.checkResponseError(mActivity, response) == false) {
								try {
									JSONObject responseJSON = new JSONObject(response);
									mCurrentData = responseJSON.getJSONArray("data");
									mMapTypeToData.put(type, mCurrentData);
									mNewsAdapter.notifyDataSetChanged();									
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
	
	
	
	/**
	 * Show tab account
	 */
	public void showTabAccount() {
		mDialog.findViewById(R.id.layout_listnews_and_newsdetails).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_payment).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_account_and_addmoneyhistory).setVisibility(View.VISIBLE);
		mDialog.findViewById(R.id.layout_report_bug).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_update_account).setVisibility(View.GONE);
		
		mDialog.findViewById(R.id.ll_account_info).setVisibility(View.VISIBLE);
		mDialog.findViewById(R.id.ll_addmoney_history).setVisibility(View.GONE);
		
		TextView tvTabAccountInfo = (TextView) mDialog.findViewById(R.id.tv_tab_account_info);
		TextView tvTabAddmoneyHistory = (TextView) mDialog.findViewById(R.id.tv_tab_addmoney_history);
		
		tvTabAccountInfo.setBackgroundColor(Color.WHITE);
		tvTabAccountInfo.setTypeface(null, Typeface.BOLD);
		tvTabAccountInfo.setTextColor(Color.parseColor("#d14129"));
		
		tvTabAddmoneyHistory.setBackgroundResource(R.drawable.bg_tab_dashboard);
		tvTabAddmoneyHistory.setTypeface(null, Typeface.NORMAL);
		tvTabAddmoneyHistory.setTextColor(Color.BLACK);		
		
		mCurrentTabAccount = tvTabAccountInfo;
		
		displayTabAccountInfo();	
	}
	
	/**
	 * Display tab account 
	 */
	public void displayTabAccountInfo() {
		try {
			JSONObject userInfoJSON = new JSONObject(Utils.getString(mActivity, NameSpace.SAVED_USER_INFO));
			String username = userInfoJSON.getString("name");
			((EditText)mDialog.findViewById(R.id.et_username)).setText(username);
			
			String fpay = userInfoJSON.getString("Fpay");
			((TextView)mDialog.findViewById(R.id.tv_fpay)).setText(fpay);
			
			String email = userInfoJSON.getString("mail");
			if (!email.equals("null") && !email.equals("")) {
				((EditText)mDialog.findViewById(R.id.et_email)).setText(email);
				((EditText)mDialog.findViewById(R.id.et_email)).setEnabled(false);
				((EditText)mDialog.findViewById(R.id.et_email)).setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);				
			}
			
			String fullname = userInfoJSON.getString("fullname");
			if (!fullname.equals("null")) {
				((EditText)mDialog.findViewById(R.id.et_fullname)).setText(fullname);
			}
			
			String birthday = userInfoJSON.getString("birth");
			if (!birthday.equals("null")) {
				Date date = new Date(Long.parseLong(birthday) * 1000L);
				mMonth = Integer.parseInt(DateFormat.format("MM", date).toString());
				mDay =  Integer.parseInt(DateFormat.format("dd", date).toString());
				mYear = Integer.parseInt(DateFormat.format("yyyy", date).toString());
				
				((EditText)mDialog.findViewById(R.id.et_birthday)).setText(mDay + "/" + mMonth + "/" + mYear);
			}
			
			String address = userInfoJSON.getString("address");
			if (!address.equals("null")) {
				((EditText)mDialog.findViewById(R.id.et_address)).setText(address);
			}
			
			String cardno = userInfoJSON.getString("cardno");
			if (!cardno.equals("null")) {
				((EditText)mDialog.findViewById(R.id.et_cardno)).setText(cardno);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	/**
	 * Update user info
	 */
	public void updateUserInfo() {
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject dataJSON = new JSONObject();
					dataJSON.put("access_token", Utils.getString(mActivity, NameSpace.SAVED_ACCESS_TOKEN));
					dataJSON.put("full_name", ((EditText)mDialog.findViewById(R.id.et_fullname)).getText().toString().trim());
					dataJSON.put("card_no", ((EditText)mDialog.findViewById(R.id.et_cardno)).getText().toString().trim());
					dataJSON.put("address", ((EditText)mDialog.findViewById(R.id.et_address)).getText().toString().trim());
					dataJSON.put("birth_day", ((EditText)mDialog.findViewById(R.id.et_birthday)).getText().toString().trim());
					dataJSON.put("email", ((EditText)mDialog.findViewById(R.id.et_email)).getText().toString().trim());
					String data = dataJSON.toString();
					
					String apiUrl = Utils.createApiUrl(mActivity, NameSpace.COMMAND_CHANGE_USER_INFO, data);
					final String response = ServiceHelper.get(apiUrl);
					
					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							
							if (Utils.checkResponseError(mActivity, response) == false) {
								mDialog.findViewById(R.id.tv_update_user_info).setEnabled(false);
								((TextView)mDialog.findViewById(R.id.tv_update_user_info)).setTextColor(Color.parseColor("#c8c8c8"));
								saveUserInfo();
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
	
	public void saveUserInfo() {
		try {
			JSONObject userInfoJSON = new JSONObject(Utils.getString(mActivity, NameSpace.SAVED_USER_INFO));
			userInfoJSON.put("mail", ((EditText)mDialog.findViewById(R.id.et_email)).getText().toString().trim());
			userInfoJSON.put("fullname", ((EditText)mDialog.findViewById(R.id.et_fullname)).getText().toString().trim());
			userInfoJSON.put("address", ((EditText)mDialog.findViewById(R.id.et_address)).getText().toString().trim());
			userInfoJSON.put("cardno", ((EditText)mDialog.findViewById(R.id.et_cardno)).getText().toString().trim());
			
			String birth = ((EditText)mDialog.findViewById(R.id.et_cardno)).getText().toString().trim(); 
			if (!birth.equals("")) {
				Calendar c = Calendar.getInstance();
				c.set(Calendar.DAY_OF_MONTH, mDay);
				c.set(Calendar.MONTH, mMonth);
				c.set(Calendar.YEAR, mYear);
				userInfoJSON.put("birth", c.getTimeInMillis() / 1000L);
			}
			
			Utils.saveString(mActivity, NameSpace.SAVED_USER_INFO, userInfoJSON.toString());
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	/**
	 * Download payment history
	 */
	public void downloadAddMoneyHistory() {
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject dataJSON = new JSONObject();
					dataJSON.put("uid", Utils.getString(mActivity, NameSpace.SAVED_UID));
					dataJSON.put("limit", 30);
					String data = dataJSON.toString();
					
					String apiUrl = Utils.createApiUrl(mActivity, NameSpace.COMMAND_GET_LOG_TRANSACTION, data);
					final String response = ServiceHelper.get(apiUrl);
					
					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							if (Utils.checkResponseError(mActivity, response) == false) {
								try {
									JSONObject responseJSON = new JSONObject(response);
									mDataAddMoneyHistory = responseJSON.getJSONArray("data");
									displayPaymentHistory();
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
	
	/**
	 * Display payment history
	 */
	public void displayPaymentHistory() {
		LayoutInflater inflater = LayoutInflater.from(mActivity);
		LinearLayout llPaymentHistoryContainer = (LinearLayout) mDialog.findViewById(R.id.ll_addmoney_history_list_container);
		llPaymentHistoryContainer.removeAllViews();
		try {
			for (int i = 0; i < mDataAddMoneyHistory.length(); i++) {
				JSONObject paymentHistory = mDataAddMoneyHistory.getJSONObject(i);
				View paymentHistoryView = inflater.inflate(R.layout.item_addmoney_history, null);
				((TextView)paymentHistoryView.findViewById(R.id.tv_date)).setText(paymentHistory.getString("time"));
				((TextView)paymentHistoryView.findViewById(R.id.tv_game)).setText(paymentHistory.getString("app_name"));
				((TextView)paymentHistoryView.findViewById(R.id.tv_type)).setText(paymentHistory.getString("type"));
				((TextView)paymentHistoryView.findViewById(R.id.tv_description)).setText(paymentHistory.getString("description"));
				
				llPaymentHistoryContainer.addView(paymentHistoryView);
			}			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	/**
	 * Show tab payment
	 */
	public void showTabPayment() {
		mDialog.findViewById(R.id.layout_listnews_and_newsdetails).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_payment).setVisibility(View.VISIBLE);
		mDialog.findViewById(R.id.layout_account_and_addmoneyhistory).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_report_bug).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_update_account).setVisibility(View.GONE);
	}
	
	public void payment() {
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
					MyLog.log("payment:access_token=" + Utils.getString(mActivity, NameSpace.SAVED_ACCESS_TOKEN));
					MyLog.log("dataJSON access_token=" + dataJSON.getString("access_token"));
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
	
	
	
	/**
	 * Show homepage 
	 */
	public void showTabHomePage() {
		mDialog.findViewById(R.id.layout_listnews_and_newsdetails).setVisibility(View.VISIBLE);
		mDialog.findViewById(R.id.layout_payment).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_account_and_addmoneyhistory).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_report_bug).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_update_account).setVisibility(View.GONE);
		
		mDialog.findViewById(R.id.lv_dashboard).setVisibility(View.GONE);
		mDialog.findViewById(R.id.webview_dashboard).setVisibility(View.VISIBLE);
		
		if (mHomepageLink != null) {
			((WebView)mDialog.findViewById(R.id.webview_dashboard)).loadUrl(mHomepageLink);
		} else {
			downloadHomepageLink();
		}
		
	}
	
	public void downloadHomepageLink() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = Utils.createApiUrl(mActivity, NameSpace.COMMAND_HOME_PAGE, "");
				final String response = ServiceHelper.get(apiUrl);
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						if (Utils.checkResponseError(mActivity, response) == false) {
							try {
								JSONObject responseJSON = new JSONObject(response);
								mHomepageLink = responseJSON.getString("data");
								((WebView)mDialog.findViewById(R.id.webview_dashboard)).loadUrl(mHomepageLink);
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						}
					}
				});
			}
		}).start();
	}
	
	
	/**
	 * Show tab report bug
	 */
	public void showTabReportBug() {
		mDialog.findViewById(R.id.layout_listnews_and_newsdetails).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_payment).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_account_and_addmoneyhistory).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_report_bug).setVisibility(View.VISIBLE);
		mDialog.findViewById(R.id.layout_update_account).setVisibility(View.GONE);
	}
	
	
	
	/**
	 * Show tab update account for facebook user
	 */
	public void showTabUpdateAccount() {
		mDialog.findViewById(R.id.layout_listnews_and_newsdetails).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_payment).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_account_and_addmoneyhistory).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_report_bug).setVisibility(View.GONE);
		mDialog.findViewById(R.id.layout_update_account).setVisibility(View.VISIBLE);
	}
	
	public void updateAccount() {
		final String username = ((EditText)mDialog.findViewById(R.id.et_username_fb)).getText().toString().trim();
		final String password = ((EditText)mDialog.findViewById(R.id.et_password_fb)).getText().toString().trim();
		
		if (username.equals("") || password.equals("")) {
			if (username.equals("")) {
				((EditText)mDialog.findViewById(R.id.et_username_fb)).requestFocus();
			} else if (password.equals("")) {
				((EditText)mDialog.findViewById(R.id.et_password_fb)).requestFocus();
			}
			Toast.makeText(mActivity, mActivity.getString(R.string.please_fill_up_info), Toast.LENGTH_SHORT).show();
			return;
		}
		
		if (username.contains(" ")) {
			Toast.makeText(mActivity, mActivity.getString(R.string.username_contains_space), Toast.LENGTH_SHORT).show();
			((EditText)mDialog.findViewById(R.id.et_username_fb)).requestFocus();
			return;
		}

		if (username.length() > 30) {
			Toast.makeText(mActivity, mActivity.getString(R.string.username_is_too_long), Toast.LENGTH_SHORT).show();
			((EditText)mDialog.findViewById(R.id.et_username_fb)).requestFocus();
			return;
		}
		
		if (username.length() < 6) {
			Toast.makeText(mActivity, mActivity.getString(R.string.username_is_too_short), Toast.LENGTH_SHORT).show();
			((EditText)mDialog.findViewById(R.id.et_username_fb)).requestFocus();
			return;
		}		
		
		
		if (password.contains(" ")) {
			Toast.makeText(mActivity, mActivity.getString(R.string.password_contains_space), Toast.LENGTH_SHORT).show();
			((EditText)mDialog.findViewById(R.id.et_password_fb)).requestFocus();
			return;			
		}
		
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject dataJSON = new JSONObject();
					dataJSON.put("username", username);
					dataJSON.put("password", password);
					dataJSON.put("access_token", Utils.getString(mActivity, NameSpace.SAVED_ACCESS_TOKEN));
					
					String apiUrl = Utils.createApiUrl(mActivity, NameSpace.COMMAND_UPDATE_INFO_FACEBOOK, dataJSON.toString());
					final String response = ServiceHelper.get(apiUrl);
					
					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							
							if (Utils.checkResponseError(mActivity, response) == false) {
								// save new username in shared preference as account_fpay
								Utils.saveString(mActivity, NameSpace.SAVED_ACCOUNT_FPAY, username);
								
								// display new username in tab display 
								((EditText)mDialog.findViewById(R.id.et_username)).setText(username);
								
								// hide update info menu left
								mDialog.findViewById(R.id.tv_menu_update_account).setVisibility(View.GONE);
								mDialog.findViewById(R.id.fl_update_account).setVisibility(View.GONE);
								
								// hide layout update info
								mDialog.findViewById(R.id.layout_update_account).setVisibility(View.GONE);
								
								// show layout account info
								mDialog.findViewById(R.id.layout_account_and_addmoneyhistory).setVisibility(View.VISIBLE);
								mDialog.findViewById(R.id.ll_account_info).setVisibility(View.VISIBLE);
								mDialog.findViewById(R.id.ll_addmoney_history).setVisibility(View.GONE);
								
								TextView tvTabAccountInfo = (TextView) mDialog.findViewById(R.id.tv_tab_account_info);
								TextView tvTabAddmoneyHistory = (TextView) mDialog.findViewById(R.id.tv_tab_addmoney_history);
								
								tvTabAccountInfo.setBackgroundColor(Color.WHITE);
								tvTabAccountInfo.setTypeface(null, Typeface.BOLD);
								tvTabAccountInfo.setTextColor(Color.parseColor("#d14129"));
								
								tvTabAddmoneyHistory.setBackgroundResource(R.drawable.bg_tab_dashboard);
								tvTabAddmoneyHistory.setTypeface(null, Typeface.NORMAL);
								tvTabAddmoneyHistory.setTextColor(Color.BLACK);
								
								// change current menu left
								mCurrentMenu = mDialog.findViewById(R.id.tv_menu_account);
								mCurrentMenu.setBackgroundColor(Color.WHITE);								
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
	
	
	
	
	OnClickListener mOnClickMenuListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			mCurrentMenu.setBackgroundColor(Color.TRANSPARENT);
			mCurrentMenu = v;
			mCurrentMenu.setBackgroundColor(Color.WHITE);
			
			if (v.getId() == R.id.tv_menu_home) {
				showTabHomePage();
			} else if (v.getId() == R.id.tv_menu_inbox) {
				showTabListNews(-1);				
			} else if (v.getId() == R.id.tv_menu_fb_group) {
				try {
					Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("fb://group/1542950539325909"));
					mActivity.startActivity(intent);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
					Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://www.facebook.com/groups/1542950539325909/"));
					mActivity.startActivity(intent);
				}
			} else if (v.getId() == R.id.tv_menu_help) {
				showTabListNews(1);
			} else if (v.getId() == R.id.tv_menu_report) {
				showTabReportBug();
			} else if (v.getId() == R.id.tv_menu_account) {
				showTabAccount();
			} else if (v.getId() == R.id.tv_menu_addmoney) {
				showTabPayment();
			} else if (v.getId() == R.id.tv_menu_update_account) {
				showTabUpdateAccount();
			}
		}
	};
	
	OnItemClickListener mOnClickNewsListener = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
				String newsContent = view.getTag(R.id.tag_news_content).toString();
				mDialog.findViewById(R.id.lv_dashboard).setVisibility(View.GONE);
				mDialog.findViewById(R.id.webview_dashboard).setVisibility(View.VISIBLE);
				((WebView)mDialog.findViewById(R.id.webview_dashboard)).loadDataWithBaseURL(null, newsContent, "text/html", "UTF-8", null);		
		}
	};
	
	OnClickListener mOnClickTabAccountListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			mCurrentTabAccount.setBackgroundResource(R.drawable.bg_tab_dashboard);
			mCurrentTabAccount.setTypeface(null, Typeface.NORMAL);
			mCurrentTabAccount.setTextColor(Color.BLACK);
			
			mCurrentTabAccount = (TextView) v;
			
			mCurrentTabAccount.setBackgroundColor(Color.WHITE);
			mCurrentTabAccount.setTypeface(null, Typeface.BOLD);
			mCurrentTabAccount.setTextColor(Color.parseColor("#d14129"));			
			
			if (v.getId() == R.id.tv_tab_account_info) {
				mDialog.findViewById(R.id.ll_account_info).setVisibility(View.VISIBLE);
				mDialog.findViewById(R.id.ll_addmoney_history).setVisibility(View.GONE);
			} else if (v.getId() == R.id.tv_tab_addmoney_history) {
				mDialog.findViewById(R.id.ll_account_info).setVisibility(View.GONE);
				mDialog.findViewById(R.id.ll_addmoney_history).setVisibility(View.VISIBLE);
				
				if (mDataAddMoneyHistory == null) {
					downloadAddMoneyHistory();
				}
			}
			
		}
	};
	
	OnTouchListener mOnChangeUserInfoListener = new OnTouchListener() {
		@Override
		public boolean onTouch(View v, MotionEvent event) {
			// TODO Auto-generated method stub
			if (event.getAction() == MotionEvent.ACTION_UP) {
				mDialog.findViewById(R.id.tv_update_user_info).setEnabled(true);
				((TextView)mDialog.findViewById(R.id.tv_update_user_info)).setTextColor(Color.parseColor("#d14129"));				
			}
			return false;
		}
	};
	
	
	
	
	
	class NewsAdapter extends BaseAdapter {
		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			if (mCurrentData == null)
				return 0;
			else 
				return mCurrentData.length();
		}

		@Override
		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			// TODO Auto-generated method stub
			if (convertView == null) {
				convertView = LayoutInflater.from(mActivity).inflate(R.layout.item_dashboard, null);
			}
			
			try {
				JSONObject newsJSON = mCurrentData.getJSONObject(position);
				String newsType = newsJSON.getString("news_title");
				((TextView)convertView.findViewById(R.id.tv_title_news)).setText(newsType);
				String newsContent = newsJSON.getString("news_content");
				((TextView)convertView.findViewById(R.id.tv_content_news)).setText(Html.fromHtml(newsContent));
				String newsImage = newsJSON.getString("news_image");
				ImageLoader.getInstance().displayImage(newsImage, (ImageView)convertView.findViewById(R.id.img_news));
				convertView.setTag(R.id.tag_news_content, newsContent);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				convertView.setTag(R.id.tag_news_content, "");
			}
			
			return convertView;
		}
		
	}
	
	
	
	

}
