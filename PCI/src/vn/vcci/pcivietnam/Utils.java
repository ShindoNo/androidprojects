package vn.vcci.pcivietnam;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Locale;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.util.Log;

public class Utils {

	public static final String SHARED_PREF_LANGUAGE = "language";
	public static final String SHARED_PREF_YEAR = "year";

	public static final String SHARED_PREF_PCI_DATA = "pci_data_";

	public static void saveCurrentLanguage(Context context, String language) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(SHARED_PREF_LANGUAGE, language).commit();
		Log.e("stk", "saveCurrentLanguage=" + language);
	}

	public static String getLanguage(Context context) {
		String language = PreferenceManager.getDefaultSharedPreferences(context).getString(SHARED_PREF_LANGUAGE, "");
		if (language.equals("")) {
			if (Locale.getDefault().getLanguage().equals("vi"))
				return "1";
			else 
				return "2";
		} else {
			return language;
		}
		
	}

	public static void saveCurrentYear(Context context, String year) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(SHARED_PREF_YEAR, year).commit();
		Log.e("stk", "saveCurrentYear=" + year);
	}

	public static String getYear(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(SHARED_PREF_YEAR, "2013");
	}

	public static String getDefaultParams(Context context) {
		return "year=" + Utils.getYear(context) + "&language=" + Utils.getLanguage(context);
	}

	public static void savePCIData(Context context, String data) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(SHARED_PREF_PCI_DATA + Utils.getLanguage(context), data).commit();
	}

	public static String getPCIData(Context context) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(SHARED_PREF_PCI_DATA + Utils.getLanguage(context), null);
	}

	public static void saveYearPosition(Context context, String year, int position) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(year, position).commit();
	}

	public static int getYearPosition(Context context, String year) {
		return PreferenceManager.getDefaultSharedPreferences(context).getInt(year, -1);
	}

	public static void saveIndexDetails(Context context, String apiUrl, String indexDetails) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(apiUrl, indexDetails).commit();
	}

	public static String getIndexDetails(Context context, String apiUrl) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(apiUrl, "");
	}

	public static void saveData(Context context, String key, String value) {
		PreferenceManager.getDefaultSharedPreferences(context).edit().putString(key, value).commit();
	}

	public static String getData(Context context, String key) {
		return PreferenceManager.getDefaultSharedPreferences(context).getString(key, "");
	}

	public static void sendBroardcastTitle(Activity activity, String title) {
		Intent intent = new Intent(MainActivity.ACTION_CHANGE_TITLE);
		intent.putExtra(MainActivity.EXTRA_TITLE, title);
		activity.sendBroadcast(intent);
	}
	
	public static void sendBroadcastShowSort(Activity activity) {
		Intent intent = new Intent(MainActivity.ACTION_SHOW_SORT);
		activity.sendBroadcast(intent);
	}

	public static void sendBroadcastHideSort(Activity activity) {
		Intent intent = new Intent(MainActivity.ACTION_HIDE_SORT);
		activity.sendBroadcast(intent);
	}	
	

	public static void sendBroadcastMenuOrBack(Activity activity, String menuOrBack) {
		Intent intent = new Intent(MainActivity.ACTION_CHANGE_MENU_OR_BACK);
		intent.putExtra(MainActivity.EXTRA_SHOW_MENU_OR_BACK, menuOrBack);
		activity.sendBroadcast(intent);
	}

	public static final String REPORT_FILE = "report.pdf";

	public static void copyPDFReportToSDCard(final Context context) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				File fileDirectory = new File(Environment.getExternalStorageDirectory() + "/PCI/");
				
				Log.e("stk", "fileDirectory exist=" + fileDirectory.exists());
				
				if (!fileDirectory.exists()) {
					boolean check = fileDirectory.mkdirs();
					Log.e("stk", "fileDirectory.mkdirs =" + check);
				}

				File fileReport = new File(fileDirectory, REPORT_FILE);
				
				if (!fileReport.exists()) {
					try {
						fileReport.createNewFile();

						InputStream inputStream = context.getAssets().open(REPORT_FILE);
						FileOutputStream outputStream = new FileOutputStream(fileReport);

						byte[] buffer = new byte[1024];
						int read;
						while ((read = inputStream.read(buffer)) != -1) {
							outputStream.write(buffer, 0, read);
						}
						
						inputStream.close();
						outputStream.flush();
						outputStream.close();
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}).start();
	}

}
