package vn.cgo.sdk.imagepicker;

import java.util.ArrayList;
import java.util.Collections;

import vn.cgo.sdk.R;
import android.app.Activity;
import android.app.Dialog;
import android.database.Cursor;
import android.provider.MediaStore;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;

public class DialogPickImage {

	Activity mActivity;
	Dialog mDialog;

	GridView mGridView;
	GalleryAdapter mAdapter;
	
	OnSelectImageListener mOnSelectImageListener;

	public DialogPickImage(Activity activity, OnSelectImageListener onSelectImageListener) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mOnSelectImageListener = onSelectImageListener;
		initUI();
	}
	

	public void initUI() {
		mDialog = new Dialog(mActivity, android.R.style.Theme_Black_NoTitleBar);
		mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mDialog.setContentView(R.layout.dialog_pick_image);
		mDialog.show();

		mGridView = (GridView) mDialog.findViewById(R.id.gv_gallery);
		mAdapter = new GalleryAdapter(mActivity);
		mGridView.setAdapter(mAdapter);
		
		getGallery();
		
		mGridView.setOnItemClickListener(mOnItemClickListener);
		
		mDialog.findViewById(R.id.btn_cancel).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mDialog.dismiss();
			}
		});
		
		mDialog.findViewById(R.id.btn_ok).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				ArrayList<String> selectedImages = new ArrayList<String>();
				for (int i = 0; i < mAdapter.mSelected.size(); i++) {
					selectedImages.add(mAdapter.mListItem.get(mAdapter.mSelected.get(mAdapter.mSelected.keyAt(i))).sdcardPath);
				}
				mOnSelectImageListener.onSelected(selectedImages);
				mDialog.dismiss();
			}
		});
		
	}

	public void getGallery() {
		ArrayList<GalleryItem> galleryList = new ArrayList<GalleryItem>();

		try {
			final String[] columns = { MediaStore.Images.Media.DATA, MediaStore.Images.Media._ID };
			final String orderBy = MediaStore.Images.Media._ID;

			Cursor imagecursor = mActivity.managedQuery(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, columns, null, null, orderBy);
			if (imagecursor != null && imagecursor.getCount() > 0) {

				while (imagecursor.moveToNext()) {
					GalleryItem item = new GalleryItem();
					int dataColumnIndex = imagecursor.getColumnIndex(MediaStore.Images.Media.DATA);
					item.sdcardPath = imagecursor.getString(dataColumnIndex);
					galleryList.add(item);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// show newest photo at beginning of the list
		Collections.reverse(galleryList);

		mAdapter.setData(galleryList);
	}
	
	OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// TODO Auto-generated method stub
			mAdapter.onClickItem(position);
		}
	};
	
	public interface OnSelectImageListener {
		public void onSelected(ArrayList<String> selectedImages);
	}

}
