package vn.cgo.sdk.imagepicker;

import java.util.ArrayList;

import vn.cgo.sdk.R;
import android.app.Activity;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.Toast;

import com.nostra13.universalimageloader.core.ImageLoader;

public class GalleryAdapter extends BaseAdapter {

	Activity mActivity;
	LayoutInflater mInflater;
	ArrayList<GalleryItem> mListItem;

	SparseIntArray mSelected = new SparseIntArray();
	
	public GalleryAdapter(Activity activity) {
		// TODO Auto-generated constructor stub
		mActivity = activity;
		mInflater = LayoutInflater.from(mActivity);
	}



	public void setData(ArrayList<GalleryItem> data) {
		mListItem = data;
		notifyDataSetChanged();
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		if (mListItem == null) {
			return 0;
		} else {
			return mListItem.size();
		}
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		// TODO Auto-generated method stub
		if (convertView == null) {
			convertView = mInflater.inflate(R.layout.row_gallery_item, null);
		}
		
		ImageLoader.getInstance().displayImage("file://" + mListItem.get(position).sdcardPath, (ImageView) convertView.findViewById(R.id.img_gallery_item));
		
		if (mListItem.get(position).isSeleted) {
			convertView.findViewById(R.id.img_selected).setVisibility(View.VISIBLE);
		} else {
			convertView.findViewById(R.id.img_selected).setVisibility(View.GONE);
		}

		return convertView;
	}
	
	public void onClickItem(int position) {
		if (mListItem.get(position).isSeleted) {
			mListItem.get(position).isSeleted = false;
			mSelected.delete(position);
		} else {
			if (mSelected.size() == 3) {
				Toast.makeText(mActivity, mActivity.getResources().getString(R.string.maximum_selected), Toast.LENGTH_SHORT).show();
			} else {
				mListItem.get(position).isSeleted = true;
				mSelected.put(position, position);
			}
		}
		
		notifyDataSetChanged();
		
		for (int i = 0; i < mSelected.size(); i++) {
			Log.e("stk", "i=" + i + "; value=" + mSelected.get(mSelected.keyAt(i)));
		}
	}

}
