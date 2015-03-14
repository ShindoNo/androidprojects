package vn.vcci.pcivietnam;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;

public class FragmentHighlight extends Fragment {
	
	Activity mActivity;
	View mMainView;
	
	ListView mListView;
	HighlightAdapter mAdapter;
	
	ProgressDialog mLoadingDialog;
	
	public static FragmentHighlight getInstance(Activity activity) {
		FragmentHighlight fragmentHighlight = new FragmentHighlight();
		fragmentHighlight.setData(activity);
		
		return fragmentHighlight;
	}
	
	public void setData(Activity activity) {
		mActivity = activity;
		mLoadingDialog = new ProgressDialog(activity);
		mLoadingDialog.setMessage("Loading...");
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mMainView = inflater.inflate(R.layout.fragment_summary, container, false);
		return mMainView;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		
		initUI();
	}
	
	public void initUI() {
		Utils.sendBroadcastMenuOrBack(mActivity, MainActivity.SHOW_MENU);
		
		mListView = (ListView) mMainView.findViewById(R.id.lv_higlight);
		mAdapter = new HighlightAdapter(mActivity);
		mListView.setAdapter(mAdapter);
		
		mListView.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
				// TODO Auto-generated method stub
//				String highlightId = (String) view.getTag(R.id.tag_highlight_id);
				
				String higlighContent = (String) view.getTag(R.id.tag_content);
				FragmentHighlightDetails fragmentHighlightDetails = FragmentHighlightDetails.getInstance(mActivity, higlighContent);
				getFragmentManager().beginTransaction()
									.setCustomAnimations(R.anim.right_to_left_in, R.anim.right_to_left_out, R.anim.left_to_right_in, R.anim.left_to_right_out)
									.replace(R.id.main_container, fragmentHighlightDetails)
									.addToBackStack(null)
									.commit();				
			}
			
		});
		
		final String apiUrl = NameSpace.API_HIGHLIGHT_2 + "language=" + Utils.getLanguage(mActivity);
		
		if (!Utils.getData(mActivity, apiUrl).equals("")) {
			showData(Utils.getData(mActivity, apiUrl));
 		} else {
 			mLoadingDialog.show();
 			new Thread(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					final String highlightData = ServiceHelper.get(apiUrl, ""); 
					mActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							mLoadingDialog.hide();
							
							if (highlightData == null) {
								Toast.makeText(mActivity, "Download Error", Toast.LENGTH_SHORT).show();
							} else {
								Utils.saveData(mActivity, apiUrl, highlightData);
								showData(highlightData);	
							}
						}
					});
				}
			}).start();
 		}
	}
	
	public void showData(String highlightData) {
		try {
			JSONObject highlightJSON = new JSONObject(highlightData);
			for (int i = 0; i < highlightJSON.getJSONArray("data").length(); i++) {
				if (highlightJSON.getJSONArray("data").getJSONObject(i).getString("nam").equals(Utils.getYear(mActivity))) {
					
					JSONArray highlightArray = highlightJSON.getJSONArray("data").getJSONObject(i).getJSONArray("noidung");
					
					Log.e("stk", "highlightArray=" + highlightArray.length());
					mAdapter.setData(highlightArray);			
					break;
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	class HighlightAdapter extends BaseAdapter {
		
		JSONArray mHighlightArray;
		LayoutInflater mInflater;
		
		public HighlightAdapter(Activity activity) {
			// TODO Auto-generated constructor stub
			mInflater = LayoutInflater.from(activity);
		}
		
		public void setData(JSONArray jsonArray) {
			try {
				mHighlightArray = jsonArray;
				notifyDataSetChanged();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			if (mHighlightArray == null)
				return 0;
			else 
				return mHighlightArray.length();
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
				convertView = mInflater.inflate(R.layout.row_highlight, null);
			}
			
			try {
				JSONObject highlight = mHighlightArray.getJSONObject(position);
				String title = highlight.getString("tieude");
				((TextView)convertView.findViewById(R.id.tv_title)).setText(title);
				
				String content =highlight.getString("noidung");
				convertView.setTag(R.id.tag_content, content);
				
//				String id = highlight.getString("id");
//				convertView.setTag(R.id.tag_highlight_id, id);
				
				if (position %2 == 0) {
					convertView.setBackgroundColor(Color.TRANSPARENT);
				} else {
					convertView.setBackgroundColor(Color.parseColor("#11000000"));
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			return convertView;
		}

	}
	
	
}
