package com.shjndo.instaliker;

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
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.idroid.lib.support.ServiceHelper;
import com.ironsource.mobilcore.MobileCore;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageLoadingListener;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

public class FragmentGetCoins extends Fragment {
	Context mContext;
	View mainLayout;
	String mCurrentMedia;
	// media template 
	//{"status":"OK","data":{"type":"media","media_id":"603673932675382136_175449573","like_needed":"4752","time":"1386184759"}}
	//{"status":"OK","data":{"type":"user_follow","instagram_user":"759340605","follower_needed":"100","time":"1386394133"}}
	
	DisplayImageOptions mDisplayImageOptions;
	ProgressDialog mProgressDialog;
	OnReachAPILimitListener mOnReachAPILimitListener;
	
	int mCounter = 0;
	
	public static FragmentGetCoins getNewInstance(Context context, OnReachAPILimitListener onReachAPILimitListener) {
		FragmentGetCoins fragmentGetCoins = new FragmentGetCoins();
		fragmentGetCoins.setData(context, onReachAPILimitListener);
		return fragmentGetCoins;
	}
	
	public void setData(Context context, OnReachAPILimitListener onReachAPILimitListener) {
		mContext = context;
		mOnReachAPILimitListener = onReachAPILimitListener;
		
		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();
		
		mProgressDialog = new ProgressDialog(mContext);
		mProgressDialog.setCancelable(false);
		mProgressDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mainLayout = inflater.inflate(R.layout.fragment_get_coins, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	public void initUI() {
		mainLayout.findViewById(R.id.btn_skip).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				loadNext();
			}
		});
		
		mainLayout.findViewById(R.id.btn_like).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				likeImage();
			}
		});
		
		mainLayout.findViewById(R.id.btn_follow).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				followUser();
			}
		});
		
		mainLayout.findViewById(R.id.btn_skip_follow).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				loadNext();
			}
		});
	}
	
	/**
	 * Load next media to get FREE coins
	 */
	public void loadNext() {
		if (mProgressDialog.isShowing()) {
			return;
		}
		
		mProgressDialog.setMessage("Loading media..");
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = "access_token=" + Util.getAccessToken(getActivity());
				final String apiResponse = ServiceHelper.get(NameSpace.API_GET_MEDIA + params);
				
				((Activity)mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (apiResponse != null) {
							try {
								JSONObject apiResponseJSON = new JSONObject(apiResponse);
								
								String status = apiResponseJSON.getString("status");
								if (status.toLowerCase().equals("limit") || status.toLowerCase().equals("notfound")) {
									String message = apiResponseJSON.getString("message");
									AlertDialog.Builder builder = new Builder(mContext);
									builder.setMessage(message).setPositiveButton("OK", new DialogInterface.OnClickListener() {
										@Override
										public void onClick(DialogInterface dialog, int which) {
											// TODO Auto-generated method stub
											dialog.dismiss();
										}
									});
									builder.create().show();
									
									return;
								}
								
								mCurrentMedia = apiResponse;
								
								String type = apiResponseJSON.getJSONObject("data").getString("type");
								if (type.equals("media")) {
									String imgId = apiResponseJSON.getJSONObject("data").getString("media_id");
									getImage(imgId);
									
									mainLayout.findViewById(R.id.layout_like_photo).setVisibility(View.VISIBLE);
									mainLayout.findViewById(R.id.layout_follow).setVisibility(View.GONE);
								} else if (type.equals("user_follow")) {
									String userId = apiResponseJSON.getJSONObject("data").getString("instagram_user");
									getUser(userId);
									
									mainLayout.findViewById(R.id.layout_like_photo).setVisibility(View.GONE);
									mainLayout.findViewById(R.id.layout_follow).setVisibility(View.VISIBLE);									
								}
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						} else {
							DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() {
								@Override
								public void onClick(DialogInterface dialog, int which) {
									// TODO Auto-generated method stub
									loadNext();
								}
							};
							
							Util.showErrorDialog(mContext, "Load image failed!", "Try Again", onClickListener);
						}
					}
				});
			}
		}).start();
	}
	
	/** ------------------- HANDLE LIKE IMAGE ------------------- */
	/** ------------------- HANDLE LIKE IMAGE ------------------- */
	/** ------------------- HANDLE LIKE IMAGE ------------------- */	
	
	/**
	 * Get image info from instagram
	 * @param imgId
	 */
	public void getImage(final String imgId) {
		mProgressDialog.setMessage("Loading image...");
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = "access_token=" + Util.getAccessToken(mContext);
				final String apiResponse = ServiceHelper.get(String.format(NameSpace.API_GET_IMAGE, imgId) + params);
				
				((Activity)mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (apiResponse != null) {
							try {
								JSONObject apiResponseJSON = new JSONObject(apiResponse);
								String code = apiResponseJSON.getJSONObject("meta").getString("code");
								if (code.equals("200")) {
									displayImage(apiResponse);	
								} else {
									reportImageError(imgId, apiResponse);
									loadNext();
								}
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						} else {
							Toast.makeText(mContext, "Load failed!", Toast.LENGTH_SHORT).show();
						}
					}
				});
			}
		}).start();
	}
	
	/**
	 * Report error if can not get image info from Instagram
	 * @param imgID
	 * @param apiResponse
	 */
	public void reportImageError(final String imgID, final String apiResponse) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject apiResponseJSON = new JSONObject(apiResponse);
					String code = apiResponseJSON.getJSONObject("meta").getString("code");
					String error_type = apiResponseJSON.getJSONObject("meta").getString("error_type");
					String error_message = apiResponseJSON.getJSONObject("meta").getString("error_message");
					
					String params = "access_token=" + Util.getAccessToken(mContext) +
									"&code=" + code +
									"&error_type=" + error_type + 
									"&error_message=" + error_message +
									"&media_id=" + imgID;
					
					ServiceHelper.post(NameSpace.API_REPORT_ERROR_IMAGE, params);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}).start();
	}

	/**
	 * Display image from info got from instagram
	 * @param imgInfo
	 */
	public void displayImage(String imgInfo) {
		try {
			JSONObject currentImage = new JSONObject(imgInfo);
			String likes = currentImage.getJSONObject("data").getJSONObject("likes").getString("count");
			((TextView)mainLayout.findViewById(R.id.tv_likes)).setText(likes);
			
			String imageUrl = currentImage.getJSONObject("data").getJSONObject("images").getJSONObject("low_resolution").getString("url");
			
			ImageLoadingListener imageLoadingListener = new ImageLoadingListener() {
				@Override
				public void onLoadingStarted(String imageUri, View view) {
					// TODO Auto-generated method stub
					mainLayout.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
				}
				
				@Override
				public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
					// TODO Auto-generated method stub
					mainLayout.findViewById(R.id.pb_loading).setVisibility(View.GONE);
				}
				
				@Override
				public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
					// TODO Auto-generated method stub
					mainLayout.findViewById(R.id.pb_loading).setVisibility(View.GONE);
				}
				
				@Override
				public void onLoadingCancelled(String imageUri, View view) {}
			};
			
			ImageLoader.getInstance().displayImage(imageUrl, (ImageView)mainLayout.findViewById(R.id.img_get_coins),
													mDisplayImageOptions, imageLoadingListener);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/**
	 * Like image on instagram
	 */
	public void likeImage() {
		if (mainLayout.findViewById(R.id.pb_loading).getVisibility() == View.VISIBLE) {
			return;
		}
		
		mainLayout.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject currentImageJSON = new JSONObject(mCurrentMedia);
					final String imageId = currentImageJSON.getJSONObject("data").getString("media_id");
					String apiUrl = String.format(NameSpace.API_LIKE_IMAGE, imageId);
					String params = "access_token=" + Util.getAccessToken(mContext);
					
					final String apiResponse = ServiceHelper.post(apiUrl, params);
					
					((Activity)mContext).runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mainLayout.findViewById(R.id.pb_loading).setVisibility(View.GONE);
							
							if (apiResponse != null) {
								try {
									JSONObject apiResponseJSON = new JSONObject(apiResponse);
									String code = apiResponseJSON.getJSONObject("meta").getString("code");
									
									if (code.equals("200")) {
										updateLike("");
									} else {
										String error_message = apiResponseJSON.getJSONObject("meta").getString("error_message");
										
										if (code.equals("400") && error_message.toLowerCase().equals("client request limit reached")) {
//											reportClientIDError();
//											renewClientId();
											updateLike("error");
										} else if (code.equals("400") && error_message.toLowerCase().equals("you cannot like this media")) {
											//POST response={"meta":{"error_type":"APINotAllowedError","code":400,"error_message":"you cannot like this media"}}
											Toast.makeText(mContext, "Can not like this photo.Loading new photo..", Toast.LENGTH_SHORT).show();
											reportImageError(imageId, apiResponse);
											loadNext();
										} else {
											Toast.makeText(mContext, "Like failed!", Toast.LENGTH_SHORT).show();	
										}

									}
								} catch (Exception e) {
									// TODO: handle exception
									e.printStackTrace();
								}
							} else {
								Toast.makeText(mContext, "Like failed!", Toast.LENGTH_SHORT).show();
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
	 * Update like
	 */
	public void updateLike(final String type) {
		mainLayout.findViewById(R.id.pb_loading).setVisibility(View.VISIBLE);
		
		mCounter++;
		if(mCounter %7 == 0) {
			MobileCore.showOfferWall((Activity)mContext, null);
		}
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject currentImageJSON = new JSONObject(mCurrentMedia);
					String media_id = currentImageJSON.getJSONObject("data").getString("media_id");
					String like_needed = currentImageJSON.getJSONObject("data").getString("like_needed");
					String time = currentImageJSON.getJSONObject("data").getString("time");
					
					String params = "access_token=" + Util.getAccessToken(mContext) +
									"&media_id=" + media_id +
									"&like_needed=" + like_needed + 
									"&time=" + time + 
									"&type=" + type;
					
					final String apiResponse = ServiceHelper.post(NameSpace.API_UPDATE_LIKE, params);
					
					((Activity)mContext).runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mainLayout.findViewById(R.id.pb_loading).setVisibility(View.GONE);
							
							if (apiResponse != null) {
								try {
									JSONObject apiResponseJSON = new JSONObject(apiResponse);
									
									// check warning
									String status = apiResponseJSON.getString("status");
									if (status.toLowerCase().equals("warning")) {
										String message = apiResponseJSON.getString("message");
										Toast.makeText(mContext, message, Toast.LENGTH_SHORT).show();
										return;
									}
									
									String newCoins = apiResponseJSON.getString("new_coins");
									Util.broadcastCoin(mContext, Integer.parseInt(newCoins));
									
									loadNext();
									
									String coinsPlus = apiResponseJSON.getString("coins_plus");
									Toast.makeText(mContext, "You got " + coinsPlus + " coin(s)", Toast.LENGTH_SHORT).show();
								} catch (Exception e) {
									// TODO: handle exception
									e.printStackTrace();
								}
							} else {
								Toast.makeText(mContext, "Like failed!", Toast.LENGTH_SHORT).show();
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
	
	/** ------------------- HANDLE FOLLOW USER ------------------- */
	/** ------------------- HANDLE FOLLOW USER ------------------- */
	/** ------------------- HANDLE FOLLOW USER ------------------- */
	
	/**
	 * Get user info from Instagram
	 * @param userId
	 */
	public void getUser(final String userId) {
		mProgressDialog.setMessage("Loading user...");
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = "access_token=" + Util.getAccessToken(mContext);
				final String apiResponse = ServiceHelper.get(String.format(NameSpace.API_GET_USER, userId) + params);
				
				((Activity)mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (apiResponse != null) {
							try{
								JSONObject apiResponseJSON = new JSONObject(apiResponse);
								String code = apiResponseJSON.getJSONObject("meta").getString("code");
								if (code.equals("200")) {
									displayUser(apiResponse);	
								} else {
									reportUserError(userId, apiResponse);
									loadNext();
								}
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
							
						} else {
							Toast.makeText(mContext, "Load failed!", Toast.LENGTH_SHORT).show();
						}
					}
				});
			}
		}).start();
	}
	
	/**
	 * Report error if can not get user info from Instagram
	 * @param imgID
	 * @param apiResponse
	 */
	public void reportUserError(final String userId, final String apiResponse) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject apiResponseJSON = new JSONObject(apiResponse);
					String code = apiResponseJSON.getJSONObject("meta").getString("code");
					String error_type = apiResponseJSON.getJSONObject("meta").getString("error_type");
					String error_message = apiResponseJSON.getJSONObject("meta").getString("error_message");
					
					String params = "access_token=" + Util.getAccessToken(mContext) +
									"&code=" + code +
									"&error_type=" + error_type + 
									"&error_message=" + error_message +
									"&user_id=" + userId;
					
					ServiceHelper.post(NameSpace.API_REPORT_ERROR_USER, params);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}).start();
	}
	
	/**
	 * Display user info
	 * @param userInfo
	 */
	public void displayUser(String userInfo) {
		try {
			JSONObject userInfoJSON = new JSONObject(userInfo);
			String full_name = userInfoJSON.getJSONObject("data").getString("full_name");
			String profile_picture = userInfoJSON.getJSONObject("data").getString("profile_picture");
			
			((TextView)mainLayout.findViewById(R.id.tv_username)).setText(full_name);
			
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
				public void onLoadingCancelled(String imageUri, View view) {}
			};
			
			ImageLoader.getInstance().displayImage(profile_picture, (ImageView)mainLayout.findViewById(R.id.img_avatar), mDisplayImageOptions, imageLoadingListener);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void followUser() {
		mProgressDialog.setMessage("Following...");
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject currentMedia = new JSONObject(mCurrentMedia);
					String userId = currentMedia.getJSONObject("data").getString("instagram_user");
					String params = "access_token=" + Util.getAccessToken(mContext) +
									"&action=follow";
					
					final String apiResponse = ServiceHelper.post(String.format(NameSpace.API_FOLLOW_USER, userId), params);
					
					((Activity)mContext).runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							
							if (apiResponse != null) {
								try {
									JSONObject apiResponseJSON = new JSONObject(apiResponse);
									String code = apiResponseJSON.getJSONObject("meta").getString("code");
									if (code.equals("200")) {
										updateFollow("");
									} else {
										String error_message = apiResponseJSON.getJSONObject("meta").getString("error_message");
										
										if (code.equals("400") && error_message.toLowerCase().equals("client request limit reached")) {
//											reportClientIDError();
//											renewClientId();
											updateFollow("error");
										} else {
											Toast.makeText(mContext, "Follow failed!", Toast.LENGTH_SHORT).show();	
										}
									}
								} catch (Exception e) {
									// TODO: handle exception
									e.printStackTrace();
								}
							} else {
								Toast.makeText(mContext, "Following failed", Toast.LENGTH_SHORT).show();
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
	
	public void updateFollow(final String type) {
		mProgressDialog.setMessage("Updating...");
		mProgressDialog.show();
		
		mCounter++;
		if(mCounter %7 == 0) {
			MobileCore.showOfferWall((Activity)mContext, null);
		}
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					JSONObject currentMedia = new JSONObject(mCurrentMedia);
					String user_id = currentMedia.getJSONObject("data").getString("instagram_user");
					String follower_needed = currentMedia.getJSONObject("data").getString("follower_needed");
					String time = currentMedia.getJSONObject("data").getString("time");
					
					String params = "access_token=" + Util.getAccessToken(mContext) +
									"&user_id=" + user_id +
									"&follower_needed=" + follower_needed +
									"&time=" + time +
									"&type=" + type;
					
					final String apiResponse = ServiceHelper.post(NameSpace.API_UPDATE_FOLLOW, params);
					
					((Activity)mContext).runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							
							if (apiResponse != null) {
								try {
									JSONObject apiResponseJSON = new JSONObject(apiResponse);
									
									// check warning
									String status = apiResponseJSON.getString("status");
									if (status.toLowerCase().equals("warning")) {
										String message = apiResponseJSON.getString("message");
										Toast.makeText(mContext, message, Toast.LENGTH_SHORT).show();
										return;
									}
									
									String newCoins = apiResponseJSON.getString("new_coins");
									Util.broadcastCoin(mContext, Integer.parseInt(newCoins));
									
									loadNext();
									
									String coinsPlus = apiResponseJSON.getString("coins_plus");
									Toast.makeText(mContext, "You got " + coinsPlus + " coin(s)", Toast.LENGTH_SHORT).show();									
								} catch (Exception e) {
									// TODO: handle exception
									e.printStackTrace();
								}
							} else {
								Toast.makeText(mContext, "Update failed", Toast.LENGTH_SHORT).show();
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
	 * Renew client_id
	 */
	public void renewClientId() {
		mProgressDialog.setMessage("Loading..");
		mProgressDialog.show();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				final String apiResponse = ServiceHelper.get(NameSpace.API_GET_CLIENT_ID);
				
				((Activity)mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (apiResponse != null) {
							try {
								JSONObject apiResponseJSON = new JSONObject(apiResponse);
								String client_id = apiResponseJSON.getJSONObject("data").getString("client_id");
								String client_sercret = apiResponseJSON.getJSONObject("data").getString("client_secret");
								
								// if this client_id is same with current client_id (which is in limit) => request other client_id
								if (client_id.equals(Util.getClientID(mContext))) {
									renewClientId();
								} else {
									Util.saveClientID(mContext, client_id);
									Util.saveClientSecret(mContext, client_sercret);
									mOnReachAPILimitListener.onReached();
								}
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						} else {
							Toast.makeText(mContext, "Please check internet connection!", Toast.LENGTH_SHORT).show();
						}
					}
				});
				
			}
		}).start();
	}
	
	
	/**
	 * Report client_id reached limit
	 */
	public void reportClientIDError() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String params = "access_token=" + Util.getAccessToken(mContext) +
								"&client_id=" + Util.getClientID(mContext);
				
				ServiceHelper.post(NameSpace.API_REPORT_ERROR_CLIENTID, params);
			}
		}).start();
	}
	
	public interface OnReachAPILimitListener{
		public void onReached();
	}
	
}
