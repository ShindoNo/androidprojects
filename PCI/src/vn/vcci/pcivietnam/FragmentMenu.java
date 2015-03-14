package vn.vcci.pcivietnam;
import java.io.File;

import vn.vcci.pcivietnam.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

public class FragmentMenu extends Fragment {
	
	Activity mActivity;
	View mMainView;
	OnClickListener mOnClickListener;
	
	TextView mCurrentMenu;
	
	public static  FragmentMenu getInstance(Activity activity, OnClickListener onClickListener) {
		FragmentMenu fragmentMenu = new FragmentMenu();
		fragmentMenu.setData(activity,onClickListener);
		return fragmentMenu;
	}
	
	public void setData(Activity activity, OnClickListener onClickListener) {
		mOnClickListener = onClickListener;
		mActivity = activity;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mMainView = inflater.inflate(R.layout.fragment_menu, container, false);
		return mMainView;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	public void initUI() {
		mCurrentMenu = (TextView) mMainView.findViewById(R.id.tv_pci_result);
		mMainView.findViewById(R.id.tv_pci_result).setOnClickListener(mOnClickMenuListener);
		mMainView.findViewById(R.id.tv_pci_ranking).setOnClickListener(mOnClickMenuListener);
		mMainView.findViewById(R.id.tv_summary).setOnClickListener(mOnClickMenuListener);
		mMainView.findViewById(R.id.tv_report).setOnClickListener(mOnClickMenuListener);
		mMainView.findViewById(R.id.tv_news).setOnClickListener(mOnClickMenuListener);
		mMainView.findViewById(R.id.tv_about).setOnClickListener(mOnClickMenuListener);
		mMainView.findViewById(R.id.tv_config).setOnClickListener(mOnClickMenuListener);
	}
	
	OnClickListener mOnClickMenuListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
//			if (v.getId() == R.id.tv_report) {
//				File file = new File(Environment.getExternalStorageDirectory() + "/PCI/report.pdf");
//				Intent intent = new Intent(Intent.ACTION_VIEW);
//				intent.setDataAndType(Uri.fromFile(file), "application/pdf");
//				intent.setFlags(Intent.FLAG_ACTIVITY_NO_HISTORY);
//				Intent chooser = Intent.createChooser(intent, "Open with");
//				
//				try {
//					startActivity(chooser);
//				} catch (Exception e) {
//					// TODO: handle exception
//					e.printStackTrace();
//					Toast.makeText(mActivity, "No PDF Reader Application", Toast.LENGTH_SHORT).show();
//					
//					AlertDialog.Builder builder = new AlertDialog.Builder(mActivity);
//					builder.setMessage(mActivity.getString(R.string.no_pdf_reader));
//					builder.setPositiveButton(mActivity.getString(R.string.download), new DialogInterface.OnClickListener() {
//						@Override
//						public void onClick(DialogInterface dialog, int which) {
//							// TODO Auto-generated method stub
//							dialog.dismiss();
//							
//							Intent intent = new Intent(Intent.ACTION_VIEW);
//							intent.setData(Uri.parse("market://details?id=com.adobe.reader"));
//							mActivity.startActivity(intent);
//						}
//					});
//							
//					builder.setNegativeButton(mActivity.getString(R.string.no), new DialogInterface.OnClickListener() {
//						@Override
//						public void onClick(DialogInterface dialog, int which) {
//							// TODO Auto-generated method stub
//							dialog.dismiss();
//						}
//					});
//					
//					builder.create().show();
//				}
//				return;
//			}
			
			mCurrentMenu.setTextColor(Color.parseColor("#b8c8d9"));
			mCurrentMenu = (TextView) v;
			mCurrentMenu.setTextColor(Color.WHITE);
			mOnClickListener.onClick(v);
		}
	};

}
