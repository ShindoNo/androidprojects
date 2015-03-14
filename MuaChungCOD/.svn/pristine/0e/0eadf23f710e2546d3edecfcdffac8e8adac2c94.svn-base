package vn.muachung.cod.muachungmobile;

import java.text.NumberFormat;

import org.json.JSONArray;
import org.json.JSONObject;

import vn.muachung.cod.services.ServiceHelper;
import vn.muachung.cod.services.NameSpace;
import vn.muachung.cod.services.Tools;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

public class ReportsViewCreator {

	Context mContext;
	LayoutInflater mInflater;
	ProgressDialog mProgressDialog;
	
	ListView mReportsListView;
	ReportsAdapter mReportsAdapter;
	
	JSONArray data = null;
	boolean downloaded;
	
	public ReportsViewCreator(ListView reportsListView, OnItemClickListener onItemClickListener) {
		// TODO Auto-generated constructor stub
		mContext = reportsListView.getContext();
		mInflater = LayoutInflater.from(reportsListView.getContext());
		
		this.mReportsListView = reportsListView;
		mReportsAdapter = new ReportsAdapter();
		this.mReportsListView.setAdapter(mReportsAdapter);
		this.mReportsListView.setOnItemClickListener(onItemClickListener);
		downloaded = false;
	}

	public void startDownload() {
		mProgressDialog = ProgressDialog.show(mContext, "", "Loading..", true, true);
		new Thread(new Runnable() {
			public void run() {
				// TODO Auto-generated method stub
				String apiUrl = String.format(NameSpace.API_REPORTS, NameSpace.CLIENT_ID);
				final JSONObject apiResponse = (JSONObject) ServiceHelper.downloadJsonData(apiUrl, true);
				mProgressDialog.dismiss();
				((Activity) mContext).runOnUiThread(new Runnable() {
					public void run() {
						// TODO Auto-generated method stub
						if (apiResponse != null) {
							downloaded = true;
							data = apiResponse.optJSONArray(NameSpace.REPORTS);
							mReportsAdapter.notifyDataSetChanged();
						} else {
							if (!Tools.checkInternet(mContext))
								Tools.toast(mContext, "Không có kết nối");
							else 
								Tools.toast(mContext, "Lỗi tải dữ liệu");
						}
					}
				});
			}
		}).start();
	}

	class ReportsAdapter extends BaseAdapter {
		public int getCount() {
			// TODO Auto-generated method stub
			if (data == null) 
				return 0;
			else 
				return data.length();
		}

		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
			// TODO Auto-generated method stub
			ViewHolder holder;
			if (convertView == null) {
				holder = new ViewHolder();
				convertView = mInflater.inflate(R.layout.report_layout, null);
				
				holder.tvDate = (TextView) convertView.findViewById(R.id.tv_date);
				holder.tvGoods = (TextView) convertView.findViewById(R.id.tv_goods);
				holder.tvTickets = (TextView) convertView.findViewById(R.id.tv_tickets);
				holder.tvShippedGoods = (TextView) convertView.findViewById(R.id.tv_shipped_goods);
				holder.tvShippedTickets = (TextView) convertView.findViewById(R.id.tv_shipped_tickets);
				holder.tvReturnedGoods = (TextView) convertView.findViewById(R.id.tv_returned_goods);
				holder.tvReturnedTickets = (TextView) convertView.findViewById(R.id.tv_returned_tickets);
				holder.tvTotal = (TextView) convertView.findViewById(R.id.tv_total);
				
				convertView.setTag(holder);
			} else {
				holder = (ViewHolder) convertView.getTag();
			}

			try {
				JSONObject dataOfADate = data.getJSONObject(position);
				convertView.setTag(R.id.date, dataOfADate.getString(NameSpace.DATE));
				holder.tvDate.setText(Html.fromHtml("Thống kê: <b>" + dataOfADate.getString(NameSpace.DATE) + "</b>"));
				holder.tvGoods.setText(dataOfADate.getString(NameSpace.GOODS));
				holder.tvTickets.setText(dataOfADate.getString(NameSpace.TICKETS));
				holder.tvShippedGoods.setText(dataOfADate.getString(NameSpace.SHIPPED_GOODS));
				holder.tvShippedTickets.setText(dataOfADate.getString(NameSpace.SHIPPED_TICKETS));
				holder.tvReturnedGoods.setText(dataOfADate.getString(NameSpace.RETURNED_GOODS));
				holder.tvReturnedTickets.setText(dataOfADate.getString(NameSpace.RETURNED_TICKETS));
				
				int total = Integer.parseInt(dataOfADate.getString(NameSpace.TOTAL));
				holder.tvTotal.setText(NumberFormat.getInstance().format(total) + " đ");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return convertView;
		}
	}
	
	class ViewHolder {
		TextView tvDate, tvGoods, tvTickets, tvShippedGoods, tvShippedTickets, tvReturnedGoods, tvReturnedTickets, tvTotal;
	}
	
}
