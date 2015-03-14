package vn.vcci.pcivietnam;

import org.json.JSONObject;

import uk.co.senab.photoview.PhotoViewAttacher;

import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageLoadingListener;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Toast;

public class FragmentPCIRank extends Fragment {

	Activity mActivity;
	View mMainView;
	ProgressDialog mProgressDialog;

	DisplayImageOptions mDisplayImageOptions;

	PhotoViewAttacher mAttacher;
	
	public static FragmentPCIRank sFragmentPCIRank;
	
	public static FragmentPCIRank getCurrent() {
		return sFragmentPCIRank;
	}
	

	public static FragmentPCIRank getInstance(Activity activity) {
		FragmentPCIRank fragmentPCIRank = new FragmentPCIRank();
		fragmentPCIRank.setData(activity);
		sFragmentPCIRank = fragmentPCIRank;
		return fragmentPCIRank;
	}

	public void setData(Activity activity) {
		mActivity = activity;

		ImageLoaderConfiguration config = new ImageLoaderConfiguration.Builder(mActivity)
																	  .threadPoolSize(3)
																	  .threadPriority(Thread.NORM_PRIORITY - 2)
																	  .memoryCacheSize(2 * 1024 * 1024)
																	  .memoryCache(new WeakMemoryCache())
																	  .denyCacheImageMultipleSizesInMemory()
																	  .discCacheFileNameGenerator(new Md5FileNameGenerator())
																	  .tasksProcessingOrder(QueueProcessingType.FIFO).build();

		ImageLoader.getInstance().init(config);

		mDisplayImageOptions = new DisplayImageOptions.Builder()
													  .displayer(new SimpleBitmapDisplayer())
													  .cacheInMemory()
													  .cacheOnDisc()
													  .bitmapConfig(Bitmap.Config.RGB_565)
													  .imageScaleType(ImageScaleType.IN_SAMPLE_INT).build();
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mMainView = inflater.inflate(R.layout.fragment_pci_rank, container, false);
		return mMainView;
	}

	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);

		mProgressDialog = new ProgressDialog(mActivity);
		mProgressDialog.setMessage("Loading...");
		
		Intent intent = new Intent(MainActivity.ACTION_SHOW_YEAR);
		mActivity.sendBroadcast(intent);

		initUI();
	}

	public void initUI() {
		if (Utils.getData(mActivity, NameSpace.API_CHART).equals("")) {
			mProgressDialog.show();
			new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					final String chartData = ServiceHelper.get(NameSpace.API_CHART, "");

					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							if (chartData != null) {
								Utils.saveData(mActivity, NameSpace.API_CHART, chartData);
							} else {
								Toast.makeText(mActivity, "Download Error", Toast.LENGTH_SHORT).show();
							}
						}
					});

				}
			}).start();
		} else {
			loadData("");
		}
	}

	public void loadData(String year) {
		try {
			String currentYear = "";
			JSONObject chartJSON = new JSONObject(Utils.getData(mActivity, NameSpace.API_CHART));
			
			if (year.equals("")) {
				currentYear = Utils.getYear(mActivity);				
			} else {
				currentYear = year;
			}

			for (int i = 0; i < chartJSON.getJSONArray("data").length(); i++) {
				if (chartJSON.getJSONArray("data").getJSONObject(i).getString("year").equals(currentYear)) {
					String imgUrl = chartJSON.getJSONArray("data").getJSONObject(i).getString("image");
					loadImage(imgUrl);
					break;
				}
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void loadImage(String imgUrl) {
		ImageView imgReport = (ImageView) mMainView.findViewById(R.id.img_report);
		mAttacher = new PhotoViewAttacher(imgReport);

		ImageLoadingListener imageLoadingListener = new ImageLoadingListener() {
			@Override
			public void onLoadingStarted(String imageUri, View view) {
				// TODO Auto-generated method stub
				mProgressDialog.show();
			}

			@Override
			public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
				// TODO Auto-generated method stub
				mProgressDialog.dismiss();
				Toast.makeText(mActivity, "Load failed!", Toast.LENGTH_SHORT).show();
			}

			@Override
			public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
				// TODO Auto-generated method stub
				mProgressDialog.dismiss();
			}

			@Override
			public void onLoadingCancelled(String imageUri, View view) {
				// TODO Auto-generated method stub
				mProgressDialog.dismiss();
			}
		};

		ImageLoader.getInstance().displayImage(imgUrl, imgReport, mDisplayImageOptions, imageLoadingListener);
	}
	
	@Override
	public void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		
		Intent intent = new Intent(MainActivity.ACTION_HIDE_YEAR);
		mActivity.sendBroadcast(intent);
	}

	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		if (mAttacher != null) {
			mAttacher.cleanup();
		}
	}

}
