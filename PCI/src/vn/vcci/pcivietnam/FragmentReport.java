package vn.vcci.pcivietnam;

import java.io.File;
import java.net.MalformedURLException;
import java.text.DecimalFormat;

import org.json.JSONArray;
import org.json.JSONObject;

import vn.com.vcci.pci.download.DownloadTask;
import vn.com.vcci.pci.download.DownloadTaskListener;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

public class FragmentReport extends Fragment{
	
	Activity mActivity;
	View mMainView;
	DecimalFormat decimalFormat = new DecimalFormat("#0.00");
	
	public static String SHARED_PREF_DATA_REPORT = "share_pref_data_report";
	
	String reportPath = "";
	String reportName = "";
	
	ProgressDialog mProgressDialog;
	
	public static FragmentReport getInstance(Activity activity) {
		FragmentReport fragmentReport = new FragmentReport();
		fragmentReport.setData(activity);
		return fragmentReport;
	}
	
	public void setData(Activity activity) {
		mActivity = activity;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mMainView = inflater.inflate(R.layout.fragment_report, container, false);
		return mMainView;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		checkData();
	}
	
	public void checkData() {
		if (Utils.getData(mActivity, SHARED_PREF_DATA_REPORT).equals("")) {
			mProgressDialog = new ProgressDialog(mActivity);
			mProgressDialog.setMessage("Loading...");
			mProgressDialog.show();
			
			new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					final String reportData = ServiceHelper.get(NameSpace.API_REPORT_2, "language=" + Utils.getLanguage(mActivity));
					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mProgressDialog.dismiss();
							
							if (reportData == null) {
								mMainView.findViewById(R.id.tv_downloading).setVisibility(View.VISIBLE);
								((TextView)mMainView.findViewById(R.id.tv_downloading)).setText(mActivity.getString(R.string.error_download));
								 mMainView.findViewById(R.id.tv_speed_downloading).setVisibility(View.GONE);
								 mMainView.findViewById(R.id.sb_downloading).setVisibility(View.GONE);
								 mMainView.findViewById(R.id.btn_download_report).setVisibility(View.GONE);
								 mMainView.findViewById(R.id.btn_open_report).setVisibility(View.GONE);
							} else {
								Utils.saveData(mActivity, SHARED_PREF_DATA_REPORT, reportData);
								initData();
							}
						}
					});
				}
			}).start();
		} else {
			initData();
		}
	}
	
	public void initData() {
		try {
			JSONObject reportData = new JSONObject(Utils.getData(mActivity, SHARED_PREF_DATA_REPORT));
			JSONArray listReport = reportData.getJSONArray("data");
			for (int i = 0; i < listReport.length(); i++) {
				if (listReport.getJSONObject(i).getString("nam").equals(Utils.getYear(mActivity))) {
					reportPath = listReport.getJSONObject(i).getString("link");
					reportName = reportPath.substring(reportPath.lastIndexOf('/')+1, reportPath.length());
					Log.e("stk", "reportPath=" + reportPath + "; reportName=" + reportName);
					initUI();
					return;
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void initUI() {
		checkFileExist();
		
		mMainView.findViewById(R.id.btn_download_report).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				startDownloading();
			}
		});
		
		mMainView.findViewById(R.id.btn_open_report).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				File file = new File(Environment.getExternalStorageDirectory() + "/PCIVietnam/" + reportName);
				Intent intent = new Intent(Intent.ACTION_VIEW);
				intent.setDataAndType(Uri.fromFile(file), "application/pdf");
				intent.setFlags(Intent.FLAG_ACTIVITY_NO_HISTORY);
				Intent chooser = Intent.createChooser(intent, "Open with");
				
				try {
					startActivity(chooser);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
					Toast.makeText(mActivity, "No PDF Reader Application", Toast.LENGTH_SHORT).show();
					
					AlertDialog.Builder builder = new AlertDialog.Builder(mActivity);
					builder.setMessage(mActivity.getString(R.string.no_pdf_reader));
					builder.setPositiveButton(mActivity.getString(R.string.download), new DialogInterface.OnClickListener() {
						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							dialog.dismiss();
							
							Intent intent = new Intent(Intent.ACTION_VIEW);
							intent.setData(Uri.parse("market://details?id=com.adobe.reader"));
							mActivity.startActivity(intent);
						}
					});
							
					builder.setNegativeButton(mActivity.getString(R.string.no), new DialogInterface.OnClickListener() {
						@Override
						public void onClick(DialogInterface dialog, int which) {
							// TODO Auto-generated method stub
							dialog.dismiss();
						}
					});
					
					builder.create().show();
				}
			}
		});
	}
	
	public void checkFileExist() {
		File fileReport = new File(Environment.getExternalStorageDirectory() + "/PCIVietnam/" + reportName);
		Log.e("stk", "fileReport Exist=???" + fileReport.exists());
		if (fileReport.exists()) {
			 mMainView.findViewById(R.id.tv_downloading).setVisibility(View.GONE);
			 mMainView.findViewById(R.id.tv_speed_downloading).setVisibility(View.GONE);
			 mMainView.findViewById(R.id.sb_downloading).setVisibility(View.GONE);
			 mMainView.findViewById(R.id.btn_download_report).setVisibility(View.GONE);
			 mMainView.findViewById(R.id.btn_open_report).setVisibility(View.VISIBLE);
		} else {
			 mMainView.findViewById(R.id.tv_downloading).setVisibility(View.VISIBLE);
			 mMainView.findViewById(R.id.tv_speed_downloading).setVisibility(View.VISIBLE);
			 mMainView.findViewById(R.id.sb_downloading).setVisibility(View.VISIBLE);
			 mMainView.findViewById(R.id.btn_download_report).setVisibility(View.VISIBLE);
			 mMainView.findViewById(R.id.btn_open_report).setVisibility(View.GONE);			
		}
	}
	
	
	@SuppressLint("NewApi")
	public void startDownloading() {
		String sdcardDirectory = Environment.getExternalStorageDirectory()  + "/PCIVietnam";
		File file = new File(sdcardDirectory);
		if (!file.exists()) {
			file.mkdirs();
		}
		
		DownloadTaskListener downloadTaskListener = new DownloadTaskListener() {
			boolean errorDownload = false;
			
			@Override
			public void updateProcess(DownloadTask task) {
				// TODO Auto-generated method stub
				Log.e("stk", "updateProcess");
				
				String downloadState = mActivity.getString(R.string.downloading_state) + decimalFormat.format(task.getDownloadSize() * 1.0 / 1000000) + "/" + decimalFormat.format(task.getTotalSize() * 1.0 / 1000000) + " MB";
				((TextView)mMainView.findViewById(R.id.tv_downloading)).setText(downloadState);
				
				((SeekBar) mMainView.findViewById(R.id.sb_downloading)).setProgress((int) task.getDownloadPercent());
				((TextView)mMainView.findViewById(R.id.tv_speed_downloading)).setText(mActivity.getString(R.string.speed_state) + task.getDownloadSpeed() + " kbps");
			}
			
			@Override
			public void preDownload(DownloadTask task) {
				// TODO Auto-generated method stub
				Log.e("stk", "preDownload");
			}
			
			@Override
			public void finishDownload(DownloadTask task) {
				// TODO Auto-generated method stub
				Log.e("stk", "finishDownload");
				if (!errorDownload) {
					 mMainView.findViewById(R.id.tv_downloading).setVisibility(View.GONE);
					 mMainView.findViewById(R.id.tv_speed_downloading).setVisibility(View.GONE);
					 mMainView.findViewById(R.id.sb_downloading).setVisibility(View.GONE);
					 mMainView.findViewById(R.id.btn_download_report).setVisibility(View.GONE);
					 mMainView.findViewById(R.id.btn_open_report).setVisibility(View.VISIBLE);	
				}
			}
			
			@Override
			public void errorDownload(DownloadTask task, Throwable error) {
				// TODO Auto-generated method stub
				Log.e("stk", "errorDownload");
				errorDownload = true;
				File fileReport = new File(Environment.getExternalStorageDirectory() + "/PCIVietnam/" + reportName);
				fileReport.delete();
				Toast.makeText(mActivity, mActivity.getString(R.string.error_download), Toast.LENGTH_SHORT).show();
			}
		};
		
		DownloadTask downloadTask;
		try {
			downloadTask = new DownloadTask(mActivity, reportPath, sdcardDirectory, downloadTaskListener);
			if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.GINGERBREAD_MR1) {
				downloadTask.execute();
			} else {
				downloadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
			}				
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
