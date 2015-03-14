package info.nkl.ui1;
import info.nkl.alpha.R;
import info.nkl.animation.ExpandAnimation;
import info.nkl.database.DatabaseQuery;
import info.nkl.tools.Utils;
import info.nkl.services.MenuService;
import org.json.JSONArray;
import org.json.JSONObject;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class FragmentMenu extends Fragment{
	// system
	Activity mActivity;
	LayoutInflater mInflater;
	
	// view
	View mainLayout;
	View mCurrentExpandingView;
	
	// listener
	OnMenuSelectedListener mOnMenuSelectedListener;
	
	// data
	JSONObject mData;
	
	DatabaseQuery mDatabaseDAO;
	
	int[] instrumentResourceId = {R.drawable.ic_intrusment_guitar, R.drawable.ic_instrument_blow, R.drawable.ic_instrument_drum};
	
	public FragmentMenu() {
		// TODO Auto-generated constructor stub
	}
	
	public static FragmentMenu getNewInstance(OnMenuSelectedListener onMenuSelectedListener) {
		FragmentMenu fragmentMenu = new FragmentMenu();
		fragmentMenu.setData(onMenuSelectedListener);
		return fragmentMenu;
	}
	
	public void setData(OnMenuSelectedListener onMenuSelectedListener) {
		mOnMenuSelectedListener = onMenuSelectedListener;
	}
	
	@Override
	public void onAttach(Activity activity) {
		// TODO Auto-generated method stub
		super.onAttach(activity);
		mActivity = activity;
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		mInflater = inflater;
		mainLayout = inflater.inflate(R.layout.fragment_menu, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		mDatabaseDAO = new DatabaseQuery(mActivity);
		initGUI();
	}
	
	@Override
	public void onDestroy() {
		super.onDestroy();
		mDatabaseDAO.close();
	};
	
	public void initGUI() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				mData = (JSONObject) MenuService.getCategory();
				if (mActivity.isFinishing()) return;
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						if (mData != null) {
							setGroupLayout();
						} else {
							Utils.checkInternetAndToast(getActivity());
						}
					}
				});
			}
		}).start();
		
		setFavouriteAlbumsLayout();
		
		mainLayout.findViewById(R.id.tv_email).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(Intent.ACTION_SENDTO);
				intent.setData(Uri.parse("mailto:ziiteam.gaylord@gmail.com"));
				startActivity(intent);
			}
		});
		
		mainLayout.findViewById(R.id.tv_website).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent browserIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.nhackhongloi.info"));
				startActivity(browserIntent);				
			}
		});
		
		mainLayout.findViewById(R.id.tv_facebook).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent browserIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.facebook.com/nhackhongloi.info"));
				startActivity(browserIntent);				
			}
		});		
		
	}
	
	public void setGroupLayout() {
		try {
			// set layout for group Instruments
			LinearLayout llInstruments = (LinearLayout) mainLayout.findViewById(R.id.ll_instruments);
			JSONArray instrumentsData = mData.getJSONObject(MenuService.data).getJSONArray(MenuService.instruments);
			for (int i = 0; i < instrumentsData.length(); i++) {
				JSONObject instrument = instrumentsData.getJSONObject(i);
				// add group
				View groupLayout = mInflater.inflate(R.layout.row_group_category, null);
				llInstruments.addView(groupLayout);
				
				ImageView imgInstrument = (ImageView) groupLayout.findViewById(R.id.img_intrument);
				imgInstrument.setImageResource(instrumentResourceId[i]);
				
				((TextView) groupLayout.findViewById(R.id.tv_group)).setText(instrument.getString(MenuService.instrument_name));
				groupLayout.findViewById(R.id.group_header).setOnClickListener(onClickGroupHeader);
				
				LinearLayout groupContent = (LinearLayout) groupLayout.findViewById(R.id.ll_container);
				// add child 
				JSONArray children = instrument.getJSONArray(MenuService.instrument_sub);
				for (int j = 0; j < children.length(); j++) {
					JSONObject child = children.getJSONObject(j);
					View childView = mInflater.inflate(R.layout.row_child_category, null);
					groupContent.addView(childView);
					
					((TextView)childView.findViewById(R.id.tv_child)).setText(child.getString(MenuService.instrument_name)
																			+ " (" + child.getString(MenuService.total_albums) + ")");
					childView.setTag(MenuService.instrument + "|" + child.getString(MenuService.sub_instrument_id));
					childView.setOnClickListener(onClickGroupContent);
				}
			}
			
			// setlayout for group Types
			LinearLayout llTypes = (LinearLayout) mainLayout.findViewById(R.id.ll_types);
			llTypes.findViewById(R.id.tv_types).setOnClickListener(onClickGroupHeader);
			LinearLayout groupContent = (LinearLayout) llTypes.findViewById(R.id.ll_container);
			
			JSONArray categoriesData = mData.getJSONObject(MenuService.data).getJSONArray(MenuService.categories);
			for (int i = 0; i < categoriesData.length(); i++) {
				JSONObject category = categoriesData.getJSONObject(i);
				View childView = mInflater.inflate(R.layout.row_child_category, null);
				groupContent.addView(childView);
				
				((TextView) childView.findViewById(R.id.tv_child)).setText(category.getString(MenuService.category_name)+ " (" + category.getString(MenuService.total_albums) + ")");
				childView.setTag(MenuService.category + "|" + category.getString(MenuService.category_id));
				childView.setOnClickListener(onClickGroupContent);
			}
			
			mCurrentExpandingView = groupContent;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void setFavouriteAlbumsLayout() {
//		try {
//		LinearLayout layoutFavourite = (LinearLayout) mainLayout.findViewById(R.id.layout_favourite_albums);
//		String[][] favouriteAlbums = mDatabaseDAO.getFavouriteAlbums(); // this line cause force close
//			for (int i = 0; i < favouriteAlbums.length; i++) {
//				String[] album = favouriteAlbums[i];
//				TextView tvAlbum = (TextView) mInflater.inflate(R.layout.row_favourite_album, null);
//				tvAlbum.setTag(R.id.tag_id, album[0]);
//				tvAlbum.setText(album[1]);
//				tvAlbum.setOnClickListener(onClickFavouriteAlbumListener);
//				layoutFavourite.addView(tvAlbum);
//			}
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
	}
	
	public void resetFavouriteAlbumsLayout() {
		((LinearLayout) mainLayout.findViewById(R.id.layout_favourite_albums)).removeAllViews();
		setFavouriteAlbumsLayout();
	}
	
	OnClickListener onClickGroupHeader = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			View groupContainer = ((View) v.getParent()).findViewById(R.id.ll_container);
			
			boolean expand = (groupContainer.getVisibility() == View.GONE);
			
			if (expand) {
				mCurrentExpandingView.setVisibility(View.GONE);
				mCurrentExpandingView = groupContainer;
				groupContainer.startAnimation(ExpandAnimation.getInstance(groupContainer, expand, 200));
			}
		}
	};
	
	OnClickListener onClickGroupContent = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String[] tag = ((String) v.getTag()).split("\\|");
			String groupType = tag[0];
			String groupId = tag[1];
			mOnMenuSelectedListener.onGroupSelected(groupType, groupId);
		}
	};
	
	OnClickListener onClickFavouriteAlbumListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			String albumId = v.getTag(R.id.tag_id).toString();
			mOnMenuSelectedListener.onFavouriteAlbumSelected(albumId);
		}
	};
	
	interface OnMenuSelectedListener {
		public void onGroupSelected(String groupType, String groupId);
		public void onFavouriteAlbumSelected(String albumId);
		public void onFavouriteAlbumsChanged();
	}
}
