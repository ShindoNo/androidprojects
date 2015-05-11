package com.instaliker.instafollower;

import org.json.JSONObject;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import com.idroid.lib.support.ServiceHelper;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;

public class FragmentBuyFollowers extends Fragment {
	public static final int FOLLWER_PRICE = 10;

	Context mContext;
	View mainLayout;
	ProgressDialog mProgressDialog;

	String template = "You 'll get %s followers from %s coins.";
	String templateBuyConfirm = "Get %s followers from %s coins?";
	String templateNoSpend = "You need spend coins to buy followers";

	public static FragmentBuyFollowers getNewInstance(Context context) {
		FragmentBuyFollowers fragmentBuyFollowers = new FragmentBuyFollowers();
		fragmentBuyFollowers.setData(context);
		return fragmentBuyFollowers;
	}

	public void setData(Context context) {
		mContext = context;

		mProgressDialog = new ProgressDialog(mContext);
		mProgressDialog.setMessage("Loading...");
		mProgressDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mainLayout = inflater.inflate(R.layout.fragment_buy_followers, container, false);
		return mainLayout;
	}

	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}

	public void initUI() {
		try {
			JSONObject userInfo = new JSONObject(Util.getUserInfo(mContext));
			String profile_picture = userInfo.getJSONObject("data").getString("profile_picture");
			String full_name = userInfo.getJSONObject("data").getString("full_name");
			String media = userInfo.getJSONObject("data").getString("media");
			String followed_by = userInfo.getJSONObject("data").getString("followed_by");

			ImageLoadingListener imageLoadingListener = new ImageLoadingListener() {
				@Override
				public void onLoadingStarted(String imageUri, View view) {
					// TODO Auto-generated method stub
					mainLayout.findViewById(R.id.pb_loading_avatar).setVisibility(View.VISIBLE);
				}

				@Override
				public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
					// TODO Auto-generated method stub
					mainLayout.findViewById(R.id.pb_loading_avatar).setVisibility(View.GONE);
				}

				@Override
				public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
					// TODO Auto-generated method stub
					mainLayout.findViewById(R.id.pb_loading_avatar).setVisibility(View.GONE);
				}

				@Override
				public void onLoadingCancelled(String imageUri, View view) {
				}
			};

			ImageLoader.getInstance().displayImage(profile_picture,
					(ImageView) mainLayout.findViewById(R.id.img_avatar), imageLoadingListener);
			((TextView) mainLayout.findViewById(R.id.tv_username)).setText(full_name);
			((TextView) mainLayout.findViewById(R.id.tv_photos)).setText(media);
			((TextView) mainLayout.findViewById(R.id.tv_followers)).setText(followed_by);

			final SeekBar seekBar = (SeekBar) mainLayout.findViewById(R.id.seek_bar);
			seekBar.setOnTouchListener(new OnTouchListener() {
				@Override
				public boolean onTouch(View v, MotionEvent event) {
					// TODO Auto-generated method stub
					int coins = seekBar.getProgress();
					((TextView) mainLayout.findViewById(R.id.tv_buy_followers)).setText(String.format(template, coins
							/ FOLLWER_PRICE, coins - coins % FOLLWER_PRICE));

					return false;
				}
			});

			initUIWithCoin();

			mainLayout.findViewById(R.id.btn_buy_followers).setOnClickListener(new OnClickListener() {
				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					AlertDialog.Builder builder = new Builder(mContext);
					int spendCoins = seekBar.getProgress();
					builder.setMessage(String.format(templateBuyConfirm, spendCoins / FOLLWER_PRICE, spendCoins
							- spendCoins % FOLLWER_PRICE));
					builder.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							dialog.dismiss();
							buyFollowers();
						}
					});
					builder.setNegativeButton("No", new DialogInterface.OnClickListener() {
						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							dialog.dismiss();
						}
					});
					builder.create().show();
				}
			});

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void initUIWithCoin() {
		int coins = Util.getCoins(mContext);
		SeekBar seekBar = (SeekBar) mainLayout.findViewById(R.id.seek_bar);
		seekBar.setMax(coins);
		seekBar.setProgress(coins);

		((TextView) mainLayout.findViewById(R.id.tv_buy_followers)).setText(String.format(template, coins
				/ FOLLWER_PRICE, coins - coins % FOLLWER_PRICE));
	}

	public void buyFollowers() {
		final int spendCoins = ((SeekBar) mainLayout.findViewById(R.id.seek_bar)).getProgress();

		if (spendCoins == 0) {
			Toast.makeText(mContext, templateNoSpend, Toast.LENGTH_SHORT).show();
			return;
		}

		mProgressDialog.show();

		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub

				String params = "access_token=" + Util.getAccessToken(mContext) + "&follower_needed="
						+ (spendCoins / FOLLWER_PRICE);
				final String apiResponse = ServiceHelper.post(NameSpace.API_BUY_FOLLOWERS, params);

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
								initUIWithCoin();

							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						} else {
							Toast.makeText(mContext, "Buy failed!", Toast.LENGTH_SHORT).show();
						}
					}
				});
			}
		}).start();
	}
}
