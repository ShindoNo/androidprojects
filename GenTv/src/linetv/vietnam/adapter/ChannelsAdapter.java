package linetv.vietnam.adapter;

import gentv.downloader.R;
import linetv.vietnam.dataservices.ListChannelsServices;
import linetv.vietnam.utils.NameSpace;
import org.json.JSONArray;
import org.json.JSONObject;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.SimpleBitmapDisplayer;

public class ChannelsAdapter extends BaseAdapter {
	private JSONArray mJsonArray;
	private Context mContext;
	private ImageLoader mImageLoader;
	private DisplayImageOptions mDisplayImageOptions;
	
	public boolean isSmallList = false;
	
	public ChannelsAdapter(Context context) {
		// TODO Auto-generated constructor stub
		this.mContext = context;
		
		mImageLoader = ImageLoader.getInstance();
		mDisplayImageOptions = new DisplayImageOptions.Builder().displayer(new SimpleBitmapDisplayer())
				.showStubImage(R.drawable.ic_app)
				.cacheInMemory()
				.cacheOnDisc()
				.bitmapConfig(Bitmap.Config.RGB_565)
				.imageScaleType(ImageScaleType.IN_SAMPLE_INT)
				.build();
	}
	
	public void setData(JSONArray jsonArray) {
		mJsonArray = jsonArray;
	}
	
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		if (mJsonArray == null)
			return 0;
		else
			return mJsonArray.length();
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
		ViewHolder holder;
		if (convertView == null) {
			LayoutInflater inflater = LayoutInflater.from(mContext);
			
//			if (isSmallList) {
//				convertView = inflater.inflate(R.layout.row_channel, null);	
//			} else {
//				convertView = inflater.inflate(R.layout.row_channel_small, null);
//			}
			
			convertView = inflater.inflate(R.layout.row_channel_small, null);
			
			holder = new ViewHolder(convertView);
			convertView.setTag(R.id.tag_holder, holder);
		} else {
			holder = (ViewHolder) convertView.getTag(R.id.tag_holder);
		}
		
		try {
			JSONObject channel = mJsonArray.getJSONObject(position);
			
			String logoUrl = channel.getString(ListChannelsServices.logo);
			if (logoUrl.startsWith("http")) {
				mImageLoader.displayImage(logoUrl, holder.imgChannel, mDisplayImageOptions);
			} else {
				mImageLoader.displayImage(NameSpace.BASE_URL + logoUrl, holder.imgChannel, mDisplayImageOptions);	
			}
			
			holder.tvChannelName.setText(channel.getString(ListChannelsServices.name));
			holder.tvChannelDescription.setText(channel.getString(ListChannelsServices.des));
			convertView.setTag(R.id.tag_id, channel.getString(ListChannelsServices.id));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		convertView.setBackgroundResource(R.drawable.bg_row_channel);
		return convertView;
	}
	public static class ViewHolder {
		ImageView imgChannel;
		TextView tvChannelName, tvChannelDescription;
		
		public ViewHolder(View rowLayout) {
			// TODO Auto-generated constructor stub
			imgChannel = (ImageView) rowLayout.findViewById(R.id.img_channel);
			tvChannelName = (TextView) rowLayout.findViewById(R.id.tv_channel_name);
			tvChannelDescription = (TextView) rowLayout.findViewById(R.id.tv_channel_description);
		}
	}
}
