package com.example.testandroid;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.PictureCallback;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.provider.MediaStore;
import android.speech.RecognizerIntent;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;

public class MainActivity extends Activity {

	int REQUEST_CODE_VOICE = 111;
	int REQUEST_CODE_TAKE_PICTURE = 111;

	private Camera camera;
	private int cameraId = 0;

	@SuppressLint("NewApi")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		findViewById(R.id.tv_hello).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Log.e("stk", "" + System.currentTimeMillis());
			}
		});

		findViewById(R.id.btn_test).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				startVoiceRecognitionActivity();
			}
		});

		findViewById(R.id.btn_get_camera).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				getCamera();
			}
		});

		findViewById(R.id.btn_take_picture).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				takePicture();
			}
		});

		findViewById(R.id.btn_increase_volume).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				((AudioManager) getSystemService(AUDIO_SERVICE)).adjustStreamVolume(AudioManager.STREAM_SYSTEM,
						AudioManager.ADJUST_RAISE, AudioManager.FLAG_SHOW_UI);
			}
		});

		findViewById(R.id.btn_decrease_volume).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub

				((AudioManager) getSystemService(AUDIO_SERVICE)).adjustStreamVolume(AudioManager.STREAM_SYSTEM,
						AudioManager.ADJUST_LOWER, AudioManager.FLAG_SHOW_UI);				

			}
		});
		
		findViewById(R.id.btn_dispatch_take_picture).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dispatchTakePictureIntent();
				new Handler().postDelayed(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						
						((AudioManager) getSystemService(AUDIO_SERVICE)).adjustStreamVolume(AudioManager.STREAM_SYSTEM,
								AudioManager.ADJUST_LOWER, AudioManager.FLAG_SHOW_UI);
					}
				}, 3000);				
			}
		});
		
		findViewById(R.id.btn_goto_home).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(Intent.ACTION_MAIN);
				intent.addCategory(Intent.CATEGORY_HOME);
				startActivity(intent);
			}
		});
		
		test();
	}
	
	public void test() {
        HashMap hashmap = new HashMap();
        hashmap.put("appid", "explorer-app");
        hashmap.put("app_type", "android");
        hashmap.put("version", "1.3.3");
        hashmap.put("user_id", "358240054338207");
        
//      &signature=0a9bb879972539ca7ec87a85d1df59578b03e3ac28bad64a5ca4ed209c2302e4        
//        hashmap.put("borders", "21.003606934463633,105.80871529877186,21.013652946505303,105.81617955118418");
        hashmap.put("fe_category", "6");
        hashmap.put("mlr", "1");
        hashmap.put("observ", "45.0");
        hashmap.put("of", "json");
        hashmap.put("offset", "0");
        hashmap.put("radius", "5.0");
        hashmap.put("result_cnt", "250");
        hashmap.put("user_gps", "20.985556,105.841051");
        
        try {
			Log.e("stk", GenerateSignature.cookPOIURL(hashmap));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
		
	}

	public void startVoiceRecognitionActivity() {
		Intent intent = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
		intent.putExtra(RecognizerIntent.EXTRA_CALLING_PACKAGE, getClass().getPackage().getName());
		intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
		intent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 5);
		startActivityForResult(intent, REQUEST_CODE_VOICE);
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		super.onActivityResult(requestCode, resultCode, data);

		if (requestCode == REQUEST_CODE_VOICE && resultCode == RESULT_OK) {
			ArrayList<String> matches = data.getStringArrayListExtra(RecognizerIntent.EXTRA_RESULTS);
			for (int i = 0; i < matches.size(); i++) {
				Log.e("stk", "maches[" + i + "]=" + matches.get(i));
			}
		}
	}

	public void getCamera() {
		// do we have a camera?
		if (!getPackageManager().hasSystemFeature(PackageManager.FEATURE_CAMERA)) {
			Toast.makeText(this, "No camera on this device", Toast.LENGTH_LONG).show();
		} else {
			cameraId = findFrontFacingCamera();
			if (cameraId < 0) {
				Toast.makeText(this, "No front facing camera found.", Toast.LENGTH_LONG).show();
			} else {
				camera = Camera.open(cameraId);
			}
		}
	}

	private int findFrontFacingCamera() {
		int cameraId = -1;
		// Search for the front facing camera
		int numberOfCameras = Camera.getNumberOfCameras();
		for (int i = 0; i < numberOfCameras; i++) {
			CameraInfo info = new CameraInfo();
			Camera.getCameraInfo(i, info);
			if (info.facing == CameraInfo.CAMERA_FACING_FRONT) {
				Log.e("stk", "Camera found");
				cameraId = i;
				break;
			}
		}
		return cameraId;
	}

	public void takePicture() {
		camera.takePicture(null, null, new PhotoHandler(getApplicationContext()));
	}

	@Override
	protected void onPause() {
		Log.e("stk", "onPause");
		if (camera != null) {
			camera.release();
			camera = null;
		}
		super.onPause();
	}

	public class PhotoHandler implements PictureCallback {

		private final Context context;

		public PhotoHandler(Context context) {
			this.context = context;
		}

		@Override
		public void onPictureTaken(byte[] data, Camera camera) {

			File pictureFileDir = getDir();

			if (!pictureFileDir.exists() && !pictureFileDir.mkdirs()) {

				Log.e("stk", "Can't create directory to save image.");
				Toast.makeText(context, "Can't create directory to save image.", Toast.LENGTH_LONG).show();
				return;

			}

			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyymmddhhmmss");
			String date = dateFormat.format(new Date());
			String photoFile = "Picture_" + date + ".jpg";

			String filename = pictureFileDir.getPath() + File.separator + photoFile;

			File pictureFile = new File(filename);

			try {
				FileOutputStream fos = new FileOutputStream(pictureFile);
				fos.write(data);
				fos.close();
				Toast.makeText(context, "New Image saved:" + photoFile, Toast.LENGTH_LONG).show();
			} catch (Exception error) {
				Log.e("stk", "File" + filename + "not saved: " + error.getMessage());
				Toast.makeText(context, "Image could not be saved.", Toast.LENGTH_LONG).show();
			}
		}

		private File getDir() {
			File sdDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
			return new File(sdDir, "CameraAPIDemo");
		}
	}

	static final int REQUEST_TAKE_PHOTO = 1;

	private void dispatchTakePictureIntent() {
		Intent takePictureIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
		// Ensure that there's a camera activity to handle the intent
		if (takePictureIntent.resolveActivity(getPackageManager()) != null) {
			// Create the File where the photo should go
			File photoFile = null;
			try {
				photoFile = createImageFile();
			} catch (IOException ex) {
				// Error occurred while creating the File
				ex.printStackTrace();
			}
			// Continue only if the File was successfully created
			if (photoFile != null) {
				takePictureIntent.putExtra(MediaStore.EXTRA_OUTPUT, Uri.fromFile(photoFile));
				startActivityForResult(takePictureIntent, REQUEST_TAKE_PHOTO);
			}
		}
	}

	String mCurrentPhotoPath;

	private File createImageFile() throws IOException {
		// Create an image file name
		String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
		String imageFileName = "JPEG_" + timeStamp + "_";
		File storageDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
		File image = File.createTempFile(imageFileName, ".jpg", storageDir);

		// Save a file: path for use with ACTION_VIEW intents
		mCurrentPhotoPath = "file:" + image.getAbsolutePath();
		return image;
	}

}
