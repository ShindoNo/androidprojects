package vn.vcci.pcivietnam;

import java.util.Locale;

import com.google.analytics.containertag.proto.MutableServing.Resource;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;

public class FragmentConfig extends Fragment{
	
	Activity mActivity;
	View mMainView;
	
	TextView currentYear;
	TextView currentLanguage;
	
	public static FragmentConfig getInstance(Activity activity) {
		FragmentConfig fragmentConfig = new FragmentConfig();
		fragmentConfig.setData(activity);
		return fragmentConfig;
	}
	
	public void setData(Activity activity) {
		mActivity = activity;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mMainView = inflater.inflate(R.layout.fragment_config, container, false);
		return mMainView;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	public void initUI() {
		currentYear = (TextView) mMainView.findViewById(R.id.tv_year_2011);
		currentLanguage = (TextView) mMainView.findViewById(R.id.tv_language_vietnamese);
		
		Log.e("stk", "year=" + Utils.getYear(mActivity) + "; language=" + Utils.getLanguage(mActivity));
		
		if (Utils.getYear(mActivity).equals("2011")) {
			changeYear(mMainView.findViewById(R.id.tv_year_2011));
		} else if (Utils.getYear(mActivity).equals("2012")) {
			changeYear(mMainView.findViewById(R.id.tv_year_2012));
		}  else if (Utils.getYear(mActivity).equals("2013")) {
			changeYear(mMainView.findViewById(R.id.tv_year_2013));
		}
		
		if (Utils.getLanguage(mActivity).equals("1")) {
			changeLanguage(mMainView.findViewById(R.id.tv_language_vietnamese));
		} else {
			changeLanguage(mMainView.findViewById(R.id.tv_language_english));
		}
		
		mMainView.findViewById(R.id.tv_year_2011).setOnClickListener(onChangeYear);
		mMainView.findViewById(R.id.tv_year_2012).setOnClickListener(onChangeYear);
		mMainView.findViewById(R.id.tv_year_2013).setOnClickListener(onChangeYear);
		
		mMainView.findViewById(R.id.tv_language_vietnamese).setOnClickListener(onChangeLanguage);
		mMainView.findViewById(R.id.tv_language_english).setOnClickListener(onChangeLanguage);
	}
	
	OnClickListener onChangeYear = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			changeYear(v);
		}
	};
	
	OnClickListener onChangeLanguage = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			changeLanguage(v);
			
			if (v.getId() == R.id.tv_language_english) {
				Resources resource = mActivity.getResources();
				Configuration configuration = resource.getConfiguration();
				configuration.locale = new Locale("en");
				resource.updateConfiguration(configuration, resource.getDisplayMetrics());			
				
				Intent intent = new Intent(mActivity, MainActivity.class);
				startActivity(intent);
				mActivity.finish();				
			} else if (v.getId() == R.id.tv_language_vietnamese) {
				Resources resource = mActivity.getResources();
				Configuration configuration = resource.getConfiguration();
				configuration.locale = new Locale("vi");
				resource.updateConfiguration(configuration, resource.getDisplayMetrics());
				
				Intent intent = new Intent(mActivity, MainActivity.class);
				startActivity(intent);
				mActivity.finish();				
			}
		}
	};
	
	public void changeYear(View v) {
		currentYear.setBackgroundColor(Color.TRANSPARENT);
		currentYear.setTextColor(Color.BLACK);
		
		currentYear = (TextView) v;
		currentYear.setBackgroundDrawable(mActivity.getResources().getDrawable(R.drawable.bg_year));
		currentYear.setTextColor(Color.WHITE);
		
		if (v.getId() == R.id.tv_year_2011) {
			Utils.saveCurrentYear(mActivity, "2011");
		} else if (v.getId() == R.id.tv_year_2012) {
			Utils.saveCurrentYear(mActivity, "2012");
		} else if (v.getId() == R.id.tv_year_2013) {
			Utils.saveCurrentYear(mActivity, "2013");
		}
	}
	
	public void changeLanguage(View v) {
		currentLanguage.setBackgroundColor(Color.TRANSPARENT);
		currentLanguage.setTextColor(Color.BLACK);
		
		currentLanguage = (TextView) v;
		currentLanguage.setBackgroundDrawable(mActivity.getResources().getDrawable(R.drawable.bg_year));
		currentLanguage.setTextColor(Color.WHITE);	
		
		if (v.getId() == R.id.tv_language_vietnamese) {
			Utils.saveCurrentLanguage(mActivity, "1");
		} else {
			Utils.saveCurrentLanguage(mActivity, "2");
		}
	}

}
