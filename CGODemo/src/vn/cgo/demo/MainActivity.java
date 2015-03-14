package vn.cgo.demo;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.Request;
import com.facebook.RequestAsyncTask;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.Request.Callback;
import com.facebook.Session.StatusCallback;

import vn.cgo.sdk.CGO;
import vn.cgo.sdk.CGO.OnShareFacebookListener;
import vn.cgo.sdk.CGO.OnRequestFacebookListener;
import vn.cgo.sdk.CrossPromotion;
import vn.cgo.sdk.DialogLogin.OnLoginListener;
import vn.cgo.sdk.DialogPayment.OnPayListener;
import android.os.Bundle;
import android.os.Environment;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends Activity {

	CGO mCgo;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		mCgo = new CGO(this);
		
		mCgo.setUserInfo("testAreaId", "testRoleId"); // test set areaid and roleid
		
		// your code here

		mCgo.login(onLoginListener);

		findViewById(R.id.btn_login).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mCgo.login(onLoginListener);
			}
		});

		findViewById(R.id.btn_logout).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mCgo.logout();
			}
		});

		findViewById(R.id.btn_payment).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mCgo.payment();
			}
		});
		
		findViewById(R.id.btn_payment_with_listener).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mCgo.payment(new OnPayListener() {
					@Override
					public void onPaySuccessful(String orderId) {
						// TODO Auto-generated method stub
						Log.e("cgo", "OnPayListener:onPaySuccessful() ; orderId=" + orderId);
					}
					
					@Override
					public void onPayFailed() {
						// TODO Auto-generated method stub
						Log.e("cgo", "OnPayListener:onPayFailed");
					}
				});
			}
		});

		findViewById(R.id.btn_open_dashboard).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mCgo.openDashboard();
			}
		});

		findViewById(R.id.btn_open_forum).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mCgo.openForum();
			}
		});
		
		findViewById(R.id.btn_share_text_link).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				String text = ((EditText) findViewById(R.id.et_text)).getText().toString();
				String link = ((EditText) findViewById(R.id.et_link_image)).getText().toString();
				
				mCgo.shareFacebook(text, link, mOnShareFacebookListener);
			}
		});
		
		findViewById(R.id.btn_share_text_image).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				String text = ((EditText) findViewById(R.id.et_text)).getText().toString();
				String link = ((EditText) findViewById(R.id.et_link_image)).getText().toString();
				
				mCgo.shareFacebook(text, new File(link), mOnShareFacebookListener);
			}
		});
		
		findViewById(R.id.btn_share_facebook_screenshot).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				String text = ((EditText) findViewById(R.id.et_text)).getText().toString();
				mCgo.shareFacebookScreenshot(text, mOnShareFacebookListener);
			}
		});
		
		findViewById(R.id.btn_send_facebook_request).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				
				OnRequestFacebookListener onRequestFacebookListener = new OnRequestFacebookListener() {
					@Override
					public void onSucessful() {
						// TODO Auto-generated method stub
						Toast.makeText(MainActivity.this, "Chia sẻ thành công", Toast.LENGTH_SHORT).show();
					}
					
					@Override
					public void onFailed() {
						// TODO Auto-generated method stub
						Toast.makeText(MainActivity.this, "Chia sẻ thất bại", Toast.LENGTH_SHORT).show();
					}
				};
				
				mCgo.sendFacbookRequest(onRequestFacebookListener);
			}
		});
		
		((EditText)findViewById(R.id.et_link_image)).setHint("Nhập link hoặc link file ảnh trên sdcard vào đây để share Facebook. Link file ảnh trên sdcard có dạng " + Environment.getExternalStorageDirectory() + " + (/xxx.jpg hoặc folder_name/xxx.jpg)");
		
		findViewById(R.id.btn_show_dashboard_button).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
//				mCgo.showDashboardButton();
				
				OnRequestFacebookListener onRequestFacebookListener = new OnRequestFacebookListener() {
					@Override
					public void onSucessful() {
						// TODO Auto-generated method stub
						Toast.makeText(MainActivity.this, "OKOKOK", Toast.LENGTH_SHORT).show();
					}
					
					@Override
					public void onFailed() {
						// TODO Auto-generated method stub
						Toast.makeText(MainActivity.this, "NONONO", Toast.LENGTH_SHORT).show();
					}
				};
				
				mCgo.showDashboardButton(onRequestFacebookListener);
				
			}
		});
		
		findViewById(R.id.btn_hide_dashboard_button).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mCgo.hideDashboardButton();
			}
		});
		
		findViewById(R.id.btn_test).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
//				mCgo.shareFacebook("Test", BitmapFactory.decodeFile(Environment.getExternalStorageDirectory() + "/1.jpg"), mOnShareFacebookListener);
//				CrossPromotion.test(MainActivity.this);
				
//				mCgo.test();
				
			}
		});		

	}

	OnLoginListener onLoginListener = new OnLoginListener() {
		@Override
		public void onLoginSuccessful(String id, String username, String fb_avatar, String fb_fullname) {
			// TODO Auto-generated method stub
			// your code here
			Toast.makeText(getApplicationContext(), "id=" + id + "; username=" + username + "; fb_avatar=" + fb_avatar + "; fb_fullname=" + fb_fullname, Toast.LENGTH_SHORT).show();
		}
	};

	@Override
	protected void onActivityResult(int requestCode, int resultCode, android.content.Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
		mCgo.onActivityResult(requestCode, resultCode, data);
	};
	
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		mCgo.onDestroy();
	}
	
	OnShareFacebookListener mOnShareFacebookListener = new OnShareFacebookListener() {
		@Override
		public void onSuccessful() {
			// TODO Auto-generated method stub
			Toast.makeText(getApplicationContext(), "Share OK", Toast.LENGTH_SHORT).show();
		}
		
		@Override
		public void onFailed() {
			// TODO Auto-generated method stub
			Toast.makeText(getApplicationContext(), "Share FAILED", Toast.LENGTH_SHORT).show();
		}
	};

}
