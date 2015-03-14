package com.example.testandroid;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Random;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;

public class CrossTool {
	public static void readCross(final Activity activity, final String api) {

		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					HttpParams params = new BasicHttpParams();
					HttpGet get = new HttpGet(api);
					HttpClient client = new DefaultHttpClient(params);
					HttpResponse response = client.execute(get);

					InputStream inputStream = response.getEntity().getContent();

					BufferedReader r = new BufferedReader(new InputStreamReader(inputStream));
					StringBuilder data = new StringBuilder();
					String line;
					while ((line = r.readLine()) != null) {
						data.append(line);
					}

					inputStream.close();
					response.getEntity().consumeContent();

					JSONArray crossArray = new JSONArray(data.toString());

					if (crossArray.length() == 0) { // no cross
						return;
					}

					boolean[] checkList = new boolean[crossArray.length()];

					while (!checkList(checkList)) {
						int select = new Random().nextInt(checkList.length);
						if (!checkList[select]) {
							Log.e("stk", "select=" + select);
							checkList[select] = true;

							JSONObject cross = crossArray.getJSONObject(select);
							String packageName = cross.getString("package");
							final String link = cross.getString("link");
							String title = cross.getString("title");
							String message = cross.getString("message");
							String btnYes = cross.getString("btn_yes");
							String btnNo = cross.getString("btn_no");

							if (!checkAppInstalled(activity, packageName)) {
								final AlertDialog.Builder builder = new AlertDialog.Builder(activity);
								builder.setIcon(R.drawable.ic_playstore);
								builder.setTitle(title);
								builder.setMessage(message);
								builder.setPositiveButton(btnYes, new DialogInterface.OnClickListener() {
									@Override
									public void onClick(DialogInterface dialog, int which) {
										// TODO Auto-generated method stub
										dialog.dismiss();
										Intent intent = new Intent(Intent.ACTION_VIEW);
										intent.setData(Uri.parse(link));
										activity.startActivity(intent);
									}
								});

								builder.setNegativeButton(btnNo, new DialogInterface.OnClickListener() {
									@Override
									public void onClick(DialogInterface dialog, int which) {
										// TODO Auto-generated method stub
										dialog.dismiss();
									}
								});

								activity.runOnUiThread(new Runnable() {
									@Override
									public void run() {
										// TODO Auto-generated method stub
										builder.show();
									}
								});
								
								break;
							}							
						}
					}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}).start();
	}

	public static boolean checkList(boolean[] checkList) {
		for (int i = 0; i < checkList.length; i++) {
			if (!checkList[i]) {
				return false;
			}
		}
		return true;
	}

	public static boolean checkAppInstalled(Activity activity, String packageName) {
		if (activity.getPackageManager().getLaunchIntentForPackage(packageName) == null) {
			return false;
		} else {
			return true;
		}
	}
	
	
}
