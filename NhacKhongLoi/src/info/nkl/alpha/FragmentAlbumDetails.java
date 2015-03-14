package info.nkl.alpha;

import java.util.WeakHashMap;
import org.json.JSONObject;

import com.google.analytics.tracking.android.Log;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageLoadingListener;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

import info.nkl.alpha.R;
import info.nkl.adapter.AlbumDetailAdapter;
import info.nkl.database.DatabaseQuery;
import info.nkl.services.AlbumDetailService;
import info.nkl.services.UpdateService;
import info.nkl.tools.ImageProcessing;
import info.nkl.tools.Logger;
import info.nkl.tools.Utils;
import android.app.Activity;
import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

public class FragmentAlbumDetails extends Fragment {
	ProgressDialog mSpinner;
	Activity mActivity;
	View mainLayout;
	ListView mlvSongs;
	AlbumDetailAdapter mAlbumDetailAdapter;
	
	ImageView mImageCoverForeground;
	
	DatabaseQuery mDatabaseQuery;
	
	String mAlbumId;
	JSONObject mAlbumDetailData;
//	Bitmap mBitmapCrop, mBitmapBlur;
	DisplayImageOptions mDisplayImageOptions;
	
	boolean viewCreated = false;
	WeakHashMap<ImageView, Bitmap> mMapImageViewToBitmap;
	
	FragmentAlbumDetailListener mFragmentAlbumDetailListener;
	
	public static FragmentAlbumDetails getInstance(FragmentAlbumDetailListener listener) {
		FragmentAlbumDetails fragmentAlbumDetails = new FragmentAlbumDetails();
		fragmentAlbumDetails.setData(listener);
		return fragmentAlbumDetails;
	}
	
	public void setData(FragmentAlbumDetailListener listener) {
		mFragmentAlbumDetailListener = listener;
	}
	
	@Override
	public void onAttach(Activity activity) {
		// TODO Auto-generated method stub
		super.onAttach(activity);
		mActivity = activity;
		mDatabaseQuery = new DatabaseQuery(activity);
	}
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		mDatabaseQuery.close();
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mainLayout = inflater.inflate(R.layout.fragment_album_details, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
		viewCreated = true;
	}
	
	public void initUI() {
		mlvSongs = (ListView) mainLayout.findViewById(R.id.lv_songs);
		mlvSongs.setOnItemClickListener(mOnItemClickListener);
		mAlbumDetailAdapter = new AlbumDetailAdapter(mActivity);
		mlvSongs.setAdapter(mAlbumDetailAdapter);
		
		mMapImageViewToBitmap = new WeakHashMap<ImageView, Bitmap>();
		mImageCoverForeground = (ImageView) mainLayout.findViewById(R.id.img_cover_foreground);
		
		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.showStubImage(R.drawable.bg_album_cover)
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();	
	}
	
	public void displayAlbum(final String albumId) {
		if (!viewCreated) {
			new Handler().postDelayed(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					displayAlbum(albumId);
				}
			}, 200);
			return;
		}
		
		mAlbumId = albumId;
		
		if (mDatabaseQuery.checkALbumExist(albumId)) {
			mAlbumDetailData = mDatabaseQuery.getAlbum(albumId);
			createUI();
			UpdateService.updateAlbum(mDatabaseQuery, albumId);
		} else {
			new Thread(new DownloadAlbumRunnable(albumId)).start();
		}
	}
	
	public void createUI() {
		try {
			String albumCoverUri = mAlbumDetailData.getString(AlbumDetailService.album_cover);
			ImageLoader.getInstance().loadImage(albumCoverUri, mImageLoadingListener);
			
			String albumCoverBackground = mAlbumDetailData.getString(AlbumDetailService.album_blur_cover);
			ImageLoader.getInstance().displayImage(albumCoverBackground, (ImageView) mainLayout.findViewById(R.id.img_cover_background), mDisplayImageOptions);
			
			((TextView) mainLayout.findViewById(R.id.tv_album_name)).setText(mAlbumDetailData.getString(AlbumDetailService.album_name));
			((TextView) mainLayout.findViewById(R.id.tv_artist_name)).setText(mAlbumDetailData.getString(AlbumDetailService.artist_name));
			((TextView) mainLayout.findViewById(R.id.tv_instrument_name)).setText(mAlbumDetailData.getString(AlbumDetailService.sub_instrument_name));
			((TextView) mainLayout.findViewById(R.id.tv_view)).setText(mAlbumDetailData.getString(AlbumDetailService.album_num_views));
			
			mAlbumDetailAdapter.setAlbumDetailData(mAlbumDetailData);
			mAlbumDetailAdapter.notifyDataSetChanged();
			mlvSongs.smoothScrollToPosition(0);
			mFragmentAlbumDetailListener.onCreateUI(mAlbumId);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			mAlbumDetailAdapter.setSelectedPosition(position);
			mFragmentAlbumDetailListener.playSong(mAlbumId, mAlbumDetailData, position);
		}
	};
	
	ImageLoadingListener mImageLoadingListener = new ImageLoadingListener() {
		@Override
		public void onLoadingStarted(String imageUri, View view) {}
		
		@Override
		public void onLoadingFailed(String imageUri, View view, FailReason failReason) {}
		
		@Override
		public void onLoadingComplete(String imageUri, View view, final Bitmap loadedImage) {
			// TODO Auto-generated method stub
			// create crop bitmap and blur bitmap;
			new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					final Bitmap mBitmapCrop;
					try {
						mBitmapCrop = ImageProcessing.cropImage(loadedImage);
						mMapImageViewToBitmap.put(mImageCoverForeground, mBitmapCrop);
					} catch (OutOfMemoryError e) {
						// TODO: handle exception
						e.printStackTrace();
						ImageLoader.getInstance().clearMemoryCache();
						return;
					}
					
					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mImageCoverForeground.setImageBitmap(mBitmapCrop);
						}
					});
				}
			}).start();
		}
		
		@Override
		public void onLoadingCancelled(String imageUri, View view) {}
	};
	
	interface FragmentAlbumDetailListener {
		public void playSong(String albumId, JSONObject albumDetailData, int position);
		
//		public void onBitmapBlurCreated(Bitmap bitmapBlur);
		
		public void onCreateUI(String albumId);
	}
	
	class DownloadAlbumRunnable implements Runnable {
		String mAlbumId;
		
		public DownloadAlbumRunnable(String albumId) {
			// TODO Auto-generated constructor stub
			mAlbumId = albumId;
		}

		@Override
		public void run() {
			// TODO Auto-generated method stub
			mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					mSpinner = ProgressDialog.show(mActivity, "", "Loading...");
				}
			});
			
			final JSONObject albumDetailData = AlbumDetailService.getAlbumDetail(mAlbumId);
			
			mActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					mSpinner.dismiss();
					
					if (albumDetailData != null) {
						mDatabaseQuery.insertAlbum(mAlbumId, albumDetailData.toString());
						mAlbumDetailData = albumDetailData;
						createUI();
					} else {
						Utils.checkInternetAndToast(mActivity);			
					}
				}
			});
		}
	}

}
