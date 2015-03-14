package com.shjndo.instaliker;

import org.json.JSONObject;

import com.idroid.lib.support.ServiceHelper;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageLoadingListener;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.webkit.WebView.FindListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

public class FragmentBuyLikes extends Fragment {
	public static final int LIKE_PRICE = 2;
	
	Context mContext;
	JSONObject mImgJSON;
	
	View mainLayout;
	DisplayImageOptions mDisplayImageOptions;
	ProgressDialog mProgressDialog;
	String template = "You 'll get %s likes from %s coins.";
	String templateBuyLikes = "Get %s likes from %s coins for this photo?";
	String templateNoSpend = "You need spend coins to buy likes";
	
	public static FragmentBuyLikes getNewInstance(Context context) {
		FragmentBuyLikes fragmentSpend = new FragmentBuyLikes();
		fragmentSpend.setData(context);
		return fragmentSpend;
	}
	
	public void setData(Context context) {
		mContext = context;
		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();		
		
		mProgressDialog = new ProgressDialog(mContext);
		mProgressDialog.setMessage("Loading...");
		mProgressDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mainLayout = inflater.inflate(R.layout.fragment_buy_likes, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	public void initUI() {
		initUIWithCoins();
		
		final SeekBar seekBar = (SeekBar) mainLayout.findViewById(R.id.seek_bar);
		seekBar.setOnTouchListener(new OnTouchListener() {
			@Override
			public boolean onTouch(View v, MotionEvent event) {
				// TODO Auto-generated method stub
				int spendCoins = seekBar.getProgress();
				((TextView) mainLayout.findViewById(R.id.tv_spend_coins)).setText(String.format(template, spendCoins/LIKE_PRICE, spendCoins - spendCoins%LIKE_PRICE));
				return false;
			}
		});
		
		mainLayout.findViewById(R.id.btn_spend_coins).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				int spendCoins = seekBar.getProgress();
				if (spendCoins == 0) {
					Toast.makeText(mContext, templateNoSpend, Toast.LENGTH_SHORT).show();
					return;
				}
				
				AlertDialog.Builder builder = new Builder(mContext);
				builder.setMessage(String.format(templateBuyLikes, spendCoins/LIKE_PRICE, spendCoins - spendCoins%LIKE_PRICE));
				builder.setNegativeButton("No", new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						dialog.dismiss();
					}
				});
				
				builder.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						spendCoins();
					}
				});
				
				builder.create().show();
			}
		});
		
		mainLayout.findViewById(R.id.btn_enter_number).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				final Dialog dialog = new Dialog(mContext);
				dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
				dialog.setContentView(R.layout.dialog_enter_number);
				
				((EditText)dialog.findViewById(R.id.et_enter_number)).addTextChangedListener(new TextWatcher() {
					@Override
					public void onTextChanged(CharSequence s, int start, int before, int count) {
						// TODO Auto-generated method stub
						
					}
					
					@Override
					public void beforeTextChanged(CharSequence s, int start, int count, int after) {
						// TODO Auto-generated method stub
						
					}
					
					@Override
					public void afterTextChanged(Editable s) {
						// TODO Auto-generated method stub
						if (s.toString().equals("")) {
							return;
						}
						
						int enterNumber = Integer.parseInt(s.toString());
						if (enterNumber > seekBar.getMax()) {
							Toast.makeText(mContext, "Maximum coins is " + seekBar.getMax(), Toast.LENGTH_SHORT).show();
							((EditText)dialog.findViewById(R.id.et_enter_number)).setText(seekBar.getMax() + "");
						}
					}
				});
				
				dialog.findViewById(R.id.btn_cancel).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						dialog.dismiss();
					}
				});
				
				dialog.findViewById(R.id.btn_ok).setOnClickListener(new OnClickListener() {
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						dialog.dismiss();
						String coins = ((EditText) dialog.findViewById(R.id.et_enter_number)).getText().toString();
						if (coins.equals("")) {
							return;
						}
						
						int spendCoins = Integer.parseInt(coins);
						seekBar.setProgress(spendCoins);
						((TextView) mainLayout.findViewById(R.id.tv_spend_coins)).setText(String.format(template, spendCoins/LIKE_PRICE, spendCoins - spendCoins%LIKE_PRICE));
					}
				});
				
				dialog.show();
			}
		});
	}
	
	public void initUIWithCoins() {
		int coins = Util.getCoins(mContext);
		String likesMayGetFromCoins = String.format(template, (coins/LIKE_PRICE), coins-coins%LIKE_PRICE);
		((TextView) mainLayout.findViewById(R.id.tv_spend_coins)).setText(likesMayGetFromCoins);
		
		final SeekBar seekBar = (SeekBar) mainLayout.findViewById(R.id.seek_bar);
		seekBar.setMax(coins);
		seekBar.setProgress(coins);		
	}
	
	public void setDataImage(final JSONObject imgJSON) {
		if (mainLayout == null) {
			new Handler().postDelayed(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					setDataImage(imgJSON);
				}
			}, 200);
		}
		
		mImgJSON = imgJSON;
		
		try {
			String likes = mImgJSON.getJSONObject("likes").getString("count");
			((TextView)mainLayout.findViewById(R.id.tv_likes)).setText(likes);
			
			String imgUrl = mImgJSON.getJSONObject("images").getJSONObject("low_resolution").getString("url");
			ImageLoader.getInstance().displayImage(imgUrl, (ImageView) mainLayout.findViewById(R.id.img_spend_coins), mDisplayImageOptions);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void spendCoins() {
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				
				try {
					String media_id = mImgJSON.getString("id");
					String like_needed = (((SeekBar) mainLayout.findViewById(R.id.seek_bar)).getProgress() / LIKE_PRICE) + "";
					
					String params = "access_token=" + Util.getAccessToken(mContext) +
									"&media_id=" + media_id +
									"&like_needed=" + like_needed;
					
					final String apiResponse = ServiceHelper.post(NameSpace.API_BUY_LIKES, params);
					
					((Activity) mContext).runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							
							if (apiResponse != null) {
								try {
									JSONObject apiResponseJSON = new JSONObject(apiResponse);
									String coins = apiResponseJSON.getJSONObject("data").getString("coins");
									Util.broadcastCoin(mContext, Integer.parseInt(coins));
									Util.saveCoins(mContext, Integer.parseInt(coins));
									initUIWithCoins();
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

}
