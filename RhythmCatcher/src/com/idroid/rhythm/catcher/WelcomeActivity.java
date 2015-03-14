package com.idroid.rhythm.catcher;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.util.Random;

import org.apache.commons.io.IOUtils;
import org.json.JSONObject;

import com.idroid.downloadmanager.DownloadTask;
import com.idroid.downloadmanager.DownloadTaskListener;
import com.idroid.lib.support.MCrypt;
import com.idroid.lib.support.MyLog;
import com.idroid.lib.support.ReadConfig;
import com.idroid.lib.support.SupportTools;
import com.ironsource.mobilcore.CallbackResponse;
import com.ironsource.mobilcore.MobileCore;
import com.ironsource.mobilcore.CallbackResponse.TYPE;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.AssetFileDescriptor;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.RotateAnimation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

public class WelcomeActivity extends Activity {
	
	public static final String[] CD_ID = {"cd1", "cd2", "cd3", "cd4", "cd5"};
	public static final int[] CD_ICON = {R.drawable.ic_cd1, R.drawable.ic_cd2, R.drawable.ic_cd3, R.drawable.ic_cd4, R.drawable.ic_cd5};
	public static final String SDCARD_CONTAINER = Environment.getExternalStorageDirectory() + "/BNDC/";
	
	int currentCdIdPosition = 0;
	RotateAnimation mCDAnimation;
	
	MediaPlayer mBackgroundPlayer;
	MediaPlayer mSoundPlayer;
	
	DecimalFormat decimalFormat = new DecimalFormat("#0.00");
	
	ProgressDialog mLoadingDialog;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_welcome);
		
//		new ReadConfig(this, "http://blackmaze.net/info/duoinhacbatchu/config5.0.txt", false);
		
		new ReadConfig(this, "http://blackmaze.net/info/rhythm_catcher/config5.0.txt", false);
		
	    try {
	        PackageInfo info = getPackageManager().getPackageInfo(getPackageName(), PackageManager.GET_SIGNATURES);
	        for (Signature signature : info.signatures) {
	            MessageDigest md = MessageDigest.getInstance("SHA");
	            md.update(signature.toByteArray());
	            Log.d("KeyHash:", Base64.encodeToString(md.digest(), Base64.DEFAULT));
	            }
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }		
		
		
//		// fake data
//		new Handler().postDelayed(new Runnable() {
//			@Override
//			public void run() {
//				// TODO Auto-generated method stub
//				String fakeData = "{\"download_link_cd2\" : \"http://blackmaze.net/info/rhythm_catcher/cd2.zip\",\"download_link_cd3\" : \"http://blackmaze.net/duoinhacbatchu/cd3.zip\",\"download_link_cd4\" : \"http://blackmaze.net/duoinhacbatchu/cd4.zip\",\"download_link_cd5\" : \"\"}";
//				SupportTools.saveString(getApplicationContext(), "extra_data", fakeData);
//				SupportTools.saveInt(getApplicationContext(), "bonus_skip", 100);
//			}
//		}, 3000);
		
		mLoadingDialog = new ProgressDialog(this);
		mLoadingDialog.setMessage(getString(R.string.loading));

		copyCD1();
		initOther();
		initUI();
		checkFirstBonus();
	}
	
	public void checkFirstBonus() {
		if (!SupportTools.getBoolean(getApplicationContext(), "first_bonus")) {
			SupportTools.saveBoolean(getApplicationContext(), "first_bonus", true);
			SupportTools.saveInt(getApplicationContext(), "bonus_skip", 5);
			SupportTools.saveInt(getApplicationContext(), "bonus_open", 5);
			SupportTools.saveInt(getApplicationContext(), "bonus_delete", 5);
		}
	}
	
	public void initOther() {
		mCDAnimation = (RotateAnimation) AnimationUtils.loadAnimation(getApplicationContext(), R.anim.cd_animation);
		mBackgroundPlayer = new MediaPlayer();
		mSoundPlayer = new MediaPlayer();
	}
	
	public void initUI() {
		findViewById(R.id.img_cd_previous).setVisibility(View.GONE);
		findViewById(R.id.ic_cd_play).startAnimation(mCDAnimation);
		
		findViewById(R.id.img_cd_previous).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (currentCdIdPosition > 0) {
					currentCdIdPosition -= 1;
					findViewById(R.id.img_cd_next).setVisibility(View.VISIBLE);
					((ImageView)findViewById(R.id.ic_cd_play)).setImageResource(CD_ICON[currentCdIdPosition]);
					((TextView)findViewById(R.id.tv_cd_name)).setText(CD_ID[currentCdIdPosition].toUpperCase());
					playClickSound();
					if (currentCdIdPosition == 0) {
						findViewById(R.id.img_cd_previous).setVisibility(View.GONE);
					}
				}
			}
		});
		
		findViewById(R.id.img_cd_next).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				if (currentCdIdPosition < CD_ID.length-1) {
					currentCdIdPosition++;
					findViewById(R.id.img_cd_previous).setVisibility(View.VISIBLE);
					((ImageView)findViewById(R.id.ic_cd_play)).setImageResource(CD_ICON[currentCdIdPosition]);
					((TextView)findViewById(R.id.tv_cd_name)).setText(CD_ID[currentCdIdPosition].toUpperCase());
					playClickSound();
					if (currentCdIdPosition == CD_ID.length-1) {
						findViewById(R.id.img_cd_next).setVisibility(View.GONE);
					}
				}
			}
		});
		
		findViewById(R.id.btn_play_now).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				
				// if not download yet
				if (!SupportTools.getBoolean(getApplicationContext(), "downloaded_" + CD_ID[currentCdIdPosition])) {
					// may be user cleared shared preference. so check file .zip exist
					// if file exist, extract, then saved as downloaded, then play 
					if (new File(SDCARD_CONTAINER + CD_ID[currentCdIdPosition] + ".zip").exists()) {
						MyLog.log(SDCARD_CONTAINER + CD_ID[currentCdIdPosition] + ".zip");
						MyLog.log(CD_ID[currentCdIdPosition]);
						
						// unzip
						mLoadingDialog.show();
						new Thread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								new Decompress(SDCARD_CONTAINER + CD_ID[currentCdIdPosition] + ".zip", SDCARD_CONTAINER).unzip();
								SupportTools.saveBoolean(getApplicationContext(), "downloaded_" + CD_ID[currentCdIdPosition], true);
								
								runOnUiThread(new Runnable() {
									@Override
									public void run() {
										// TODO Auto-generated method stub
										mLoadingDialog.dismiss();
										playClickSound();
										Intent intent = new Intent(getApplicationContext(), MainActivity.class);
										intent.putExtra("cd_id", CD_ID[currentCdIdPosition]);
										startActivity(intent);											
									}
								});
							}
						}).start();
					} else {
						try {
							JSONObject extraData = new JSONObject(SupportTools.getExtraData(getApplicationContext()));
							String downloadLink = extraData.getString("download_link_" + CD_ID[currentCdIdPosition]);
							if (downloadLink.equals("")) {
								Toast.makeText(getApplicationContext(), getString(R.string.updating), Toast.LENGTH_SHORT).show();
							} else {
								downloadCD(CD_ID[currentCdIdPosition], downloadLink);	
							}
						} catch (Exception e) {
							// TODO: handle exception
							e.printStackTrace();
						}						
					}
				} else { // if already downloaded
					playClickSound();
					Intent intent = new Intent(getApplicationContext(), MainActivity.class);
					intent.putExtra("cd_id", CD_ID[currentCdIdPosition]);
					startActivity(intent);					
				}
			}
		});
		
	}
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		mBackgroundPlayer.reset();
	}
	
	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		playBackgroundMusic();
	}
	
	
	
	// COPY CD1 to SDCard
	public void copyCD1() {
		if (SupportTools.getBoolean(getApplicationContext(), "downloaded_cd1")) {
			return;
		}
		
		mLoadingDialog.show();

		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					// create folder
					new File(SDCARD_CONTAINER).mkdirs();

					// copy cd1.zip to sdcard
					InputStream is = getAssets().open("cd1.zip");
					FileOutputStream fos = new FileOutputStream(SDCARD_CONTAINER + "cd1.zip");

					byte[] buffer = new byte[8192];
					int len;
					while ((len = is.read(buffer)) != -1) {
						fos.write(buffer, 0, len);
					}
					is.close();
					fos.close();

				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}

				// unzip cd1.zip
				new Decompress(SDCARD_CONTAINER + "cd1.zip", SDCARD_CONTAINER).unzip();
				SupportTools.saveBoolean(getApplicationContext(), "downloaded_cd1", true);
				
				MyLog.log("Unzip cd1 done!");
				
				runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mLoadingDialog.dismiss();
					}
				});
			}
		}).start();
	}
	
	/** ------------------ MEDIA PLAYER HERE ------------------ */
	/** ------------------ MEDIA PLAYER HERE ------------------ */
	/** ------------------ MEDIA PLAYER HERE ------------------ */
	
	public void playBackgroundMusic() {
		try {
			mBackgroundPlayer.reset();
			int pickBgSong = new Random().nextInt(3);
			AssetFileDescriptor afd = getAssets().openFd("sound/bg_music_" + pickBgSong + ".mp3");
			mBackgroundPlayer.setDataSource(afd.getFileDescriptor(), afd.getStartOffset(), afd.getLength());			
			mBackgroundPlayer.prepare();
			mBackgroundPlayer.start();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void playClickSound() {
		try {
			mSoundPlayer.reset();
			AssetFileDescriptor afd = getAssets().openFd("sound/click.wav");
			mSoundPlayer.setDataSource(afd.getFileDescriptor(), afd.getStartOffset(), afd.getLength());			
			mSoundPlayer.prepare();
			mSoundPlayer.start();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}	
	
	
	
	/** ------------------ DOWNLOAD FILE HERE ------------------ */
	/** ------------------ DOWNLOAD FILE HERE ------------------ */
	/** ------------------ DOWNLOAD FILE HERE ------------------ */
	
	
	@TargetApi(Build.VERSION_CODES.HONEYCOMB)
	public void downloadCD(final String cdID, String downloadLink) {
		final Dialog dialogDownload = new Dialog(this, android.R.style.Theme_Black_NoTitleBar);
		dialogDownload.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialogDownload.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
		dialogDownload.setContentView(R.layout.dialog_download);
		dialogDownload.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
		dialogDownload.setCancelable(false);
		dialogDownload.show();
		
		DownloadTaskListener downloadTaskListener = new DownloadTaskListener() {
			@Override
			public void updateProcess(DownloadTask task) {
				// TODO Auto-generated method stub
				((TextView)dialogDownload.findViewById(R.id.tv_download_percent)).setText(getString(R.string.downloading) + " "  + task.getDownloadPercent() + "%");
				((ProgressBar)dialogDownload.findViewById(R.id.pb_download)).setProgress((int) task.getDownloadPercent());
			}
			
			@Override
			public void preDownload(DownloadTask task) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void finishDownload(DownloadTask task) {
				// TODO Auto-generated method stub
				((TextView)dialogDownload.findViewById(R.id.tv_download_percent)).setText(getString(R.string.unzipping));
				dialogDownload.dismiss();
				mLoadingDialog.show();
				
				new Thread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						new Decompress(SDCARD_CONTAINER + cdID + ".zip", SDCARD_CONTAINER).unzip();
						SupportTools.saveBoolean(getApplicationContext(), "downloaded_" + cdID, true);
						
						runOnUiThread(new Runnable() {
							@Override
							public void run() {
								// TODO Auto-generated method stub
								mLoadingDialog.dismiss();
								Intent intent = new Intent(getApplicationContext(), MainActivity.class);
								intent.putExtra("cd_id", cdID);
								startActivity(intent);								
							}
						});
					}
				}).start();
				

				
				
			}
			
			@Override
			public void errorDownload(DownloadTask task, Throwable error) {
				// TODO Auto-generated method stub
				Toast.makeText(getApplicationContext(), error.getMessage(), Toast.LENGTH_SHORT).show();
			}
		};
		
		try {
			final DownloadTask downloadTask = new DownloadTask(this, downloadLink, SDCARD_CONTAINER, downloadTaskListener);
			
			if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.GINGERBREAD_MR1) {
				downloadTask.execute();
			} else {
				downloadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
			}
			
			dialogDownload.findViewById(R.id.btn_stop_download).setOnClickListener(new OnClickListener() {
				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					downloadTask.cancel(true);
					dialogDownload.dismiss();
				}
			});
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@Override
	public void onBackPressed() {
		// TODO Auto-generated method stub
//		super.onBackPressed();
		
		final Dialog dialog = new Dialog(this, android.R.style.Theme_Black_NoTitleBar);
		dialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
		dialog.setContentView(R.layout.dialog_alert);
		dialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
		dialog.getWindow().getAttributes().windowAnimations = com.idroid.lib.support.R.style.ConfigDialogAnimation;
		((TextView)dialog.findViewById(R.id.tv_alert)).setText(getString(R.string.exit_confirm));
		((TextView)dialog.findViewById(R.id.btn_positive)).setText(getString(R.string.exit_positive));
		((TextView)dialog.findViewById(R.id.btn_negative)).setText(getString(R.string.exit_negative));
		dialog.findViewById(R.id.frame_dialog_alert).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		});
		
		dialog.findViewById(R.id.btn_positive).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
				MobileCore.showOfferWall(WelcomeActivity.this, new CallbackResponse() {
					@Override
					public void onConfirmation(TYPE arg0) {
						// TODO Auto-generated method stub
						Intent intent = new Intent(Intent.ACTION_VIEW);
						intent.setData(Uri.parse("market://details?id=" + getPackageName()));
						startActivity(intent);
						finish();						
					}
				});
				
			}
		});
		
		dialog.findViewById(R.id.btn_negative).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
				MobileCore.showOfferWall(WelcomeActivity.this, new CallbackResponse() {
					@Override
					public void onConfirmation(TYPE arg0) {
						// TODO Auto-generated method stub
						finish();
					}
				});
			}
		});
		
		dialog.show();
	}
	
	
	


}
