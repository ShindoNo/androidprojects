package info.nkl.alpha;

import info.nkl.alpha.R;
import info.nkl.services.MenuService;
import info.nkl.services.NameSpace;
import info.nkl.services.ServiceHelper.ServiceHelperListener;

import org.json.JSONArray;
import org.json.JSONObject;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.LinearLayout.LayoutParams;

public class FragmentMenu extends Fragment {
	View mainLayout;
	JSONObject mMenuData;
	LayoutInflater mInflater;
	Activity mActivity;
	
	View mCurrentSelected;

	FragmentMenuListener mFragmentMenuListener;
	
	int [] instrumentIcon = {R.drawable.ic_intrusment_guitar, R.drawable.ic_instrument_blow, R.drawable.ic_instrument_drum};
	
	public static FragmentMenu getInstance(FragmentMenuListener menuListener) {
		FragmentMenu fragmentMenu = new FragmentMenu();
		fragmentMenu.setData(menuListener);
		return fragmentMenu;
	}
	
	public void setData(FragmentMenuListener menuListener) {
		mFragmentMenuListener = menuListener;
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
		mainLayout = inflater.inflate(R.layout.menu, container, false);
		return mainLayout;
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}
	
	public void initUI() {
		SharedPreferences sharedPreferences = mActivity.getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
		String menuData = sharedPreferences.getString(NameSpace.SHARE_PREFERENCE_MENU, "");
		if (!menuData.equals("")) {
			try {
				mMenuData = new JSONObject(menuData);
				initLayout();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				downloadMenuData();
			}
		} else {
			downloadMenuData();
		}
	}
	
	public void downloadMenuData() {
		MenuService.getMenu(new ServiceHelperListener() {
			@Override
			public void onFailed() {
				// TODO Auto-generated method stub
			}
			
			@Override
			public void onCompleted(final JSONObject data) {
				// TODO Auto-generated method stub
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						SharedPreferences sharedPreferences = mActivity.getSharedPreferences(NameSpace.SHARED_PREF_NAME, Context.MODE_PRIVATE);
						sharedPreferences.edit().putString(NameSpace.SHARE_PREFERENCE_MENU, data.toString()).commit();
						
						mMenuData = data;
						initLayout();						
					}
				});
			}
		});
	}
	
	public void initLayout() {
		try {
			// section zii
			LinearLayout sectionZii = (LinearLayout) mainLayout.findViewById(R.id.section_zii);
			((TextView) sectionZii.findViewById(R.id.tv_title)).setText(getString(R.string.zii));
			// row top album
			View sectionRowTopAlbum = mInflater.inflate(R.layout.menu_section_row, null);
			sectionZii.addView(sectionRowTopAlbum);
			((TextView)sectionRowTopAlbum.findViewById(R.id.tv_row)).setText(getString(R.string.top_albums));
			sectionRowTopAlbum.setOnClickListener(mOnClickTopAlbum);
			
			mCurrentSelected = sectionRowTopAlbum;
			sectionRowTopAlbum.setSelected(true);
			
			
			// row favourite albums
			View sectionFavouriteAlbum = mInflater.inflate(R.layout.menu_section_row, null);
			sectionZii.addView(sectionFavouriteAlbum);
			((TextView)sectionFavouriteAlbum.findViewById(R.id.tv_row)).setText(getString(R.string.favourite_albums));
			sectionFavouriteAlbum.setOnClickListener(mOnClickFavouriteAlbum);
			
			// section instrument			
			LinearLayout sectionInstrument = (LinearLayout) mainLayout.findViewById(R.id.section_instrument);
			((TextView) sectionInstrument.findViewById(R.id.tv_title)).setText(getString(R.string.instrument));
			JSONArray instruments = mMenuData.getJSONObject(MenuService.data).getJSONArray(MenuService.instruments);
			for (int i = 0; i < instruments.length(); i++) {
				JSONObject instrument = instruments.getJSONObject(i);
				View sectionRowInstrument = mInflater.inflate(R.layout.menu_section_row, null);
				sectionInstrument.addView(sectionRowInstrument);
				TextView tvRow = (TextView)sectionRowInstrument.findViewById(R.id.tv_row);
				tvRow.setText(instrument.getString(MenuService.instrument_name));
				((ImageView)sectionRowInstrument.findViewById(R.id.img_row)).setImageResource(instrumentIcon[i]);
				
				LinearLayout llInstrumentContainer = new LinearLayout(mActivity);
				llInstrumentContainer.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
				llInstrumentContainer.setOrientation(LinearLayout.VERTICAL);
				llInstrumentContainer.setVisibility(View.GONE);
				sectionInstrument.addView(llInstrumentContainer);
				
				sectionRowInstrument.setTag(R.id.tag_view, llInstrumentContainer);
				sectionRowInstrument.setOnClickListener(mOnClickSectionTitle);
				
				JSONArray subInstruments = instrument.getJSONArray(MenuService.instrument_sub);
				for (int j = 0; j < subInstruments.length(); j++) {
					JSONObject subInstrument = subInstruments.getJSONObject(j);
					View sectionRowSubInstrument = mInflater.inflate(R.layout.menu_section_sub_row, null);
					llInstrumentContainer.addView(sectionRowSubInstrument);
					
					String subInstrumentName = subInstrument.getString(MenuService.instrument_name);
					String subInstrumentCount = subInstrument.getString(MenuService.total_albums);
					((TextView)sectionRowSubInstrument.findViewById(R.id.tv_row)).setText(subInstrumentName + " (" + subInstrumentCount + ")");
					
					sectionRowSubInstrument.setTag(R.id.tag_type, NameSpace.TYPE_INSTRUMENT);
					sectionRowSubInstrument.setTag(R.id.tag_id, subInstrument.get(MenuService.sub_instrument_id));
					sectionRowSubInstrument.setOnClickListener(mOnClickSubInstrumentOrCategory);					
				}
			}
			
			// section category
			LinearLayout sectionCategory = (LinearLayout) mainLayout.findViewById(R.id.section_category);
			
			LinearLayout llCategoryContainer = new LinearLayout(mActivity);
			llCategoryContainer.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
			llCategoryContainer.setOrientation(LinearLayout.VERTICAL);
			
			sectionCategory.addView(llCategoryContainer);
			
			TextView tvTitle = (TextView) sectionCategory.findViewById(R.id.tv_title);
			tvTitle.setText(getString(R.string.category));
			tvTitle.setTag(R.id.tag_view, llCategoryContainer);
			tvTitle.setOnClickListener(mOnClickSectionTitle);
			
			JSONArray categories = mMenuData.getJSONObject(MenuService.data).getJSONArray(MenuService.categories);
			
			for (int i = 0; i < categories.length(); i++) {
				JSONObject category = categories.getJSONObject(i);
				View sectionRowCategory = mInflater.inflate(R.layout.menu_section_sub_row, null);
				llCategoryContainer.addView(sectionRowCategory);
				
				String categoryName = category.getString(MenuService.category_name);
				String categoryAlbums = category.getString(MenuService.total_album);
				((TextView)sectionRowCategory.findViewById(R.id.tv_row)).setText(categoryName + " (" + categoryAlbums + ")");
				
				sectionRowCategory.setTag(R.id.tag_type, NameSpace.TYPE_CATEGORY);
				sectionRowCategory.setTag(R.id.tag_id, category.getString(MenuService.category_id));
				sectionRowCategory.setOnClickListener(mOnClickSubInstrumentOrCategory);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void scrollMenuTo(final View v) {
		new Handler().postDelayed(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				((ScrollView)mainLayout).smoothScrollTo(0, v.getTop());
			}
		}, 200);
	}
	
	
	OnClickListener mOnClickSectionTitle = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			final View tagView = (View) v.getTag(R.id.tag_view);
			if (tagView.getVisibility() == View.VISIBLE) {
				Animation animFadeOut = AnimationUtils.loadAnimation(mActivity, R.anim.section_come_out);
				animFadeOut.setAnimationListener(new AnimationListener() {
					@Override
					public void onAnimationStart(Animation animation) {}
					
					@Override
					public void onAnimationRepeat(Animation animation) {}
					
					@Override
					public void onAnimationEnd(Animation animation) {
						// TODO Auto-generated method stub
						tagView.setVisibility(View.GONE);
					}
				});
				
				tagView.startAnimation(animFadeOut);
			} else {
				tagView.setVisibility(View.VISIBLE);
				Animation animFadeIn = AnimationUtils.loadAnimation(mActivity, R.anim.section_come_in);
				tagView.startAnimation(animFadeIn);
				
				scrollMenuTo(tagView);
			}
		}
	};
	
	OnClickListener mOnClickTopAlbum = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			mCurrentSelected.setSelected(false);
			mCurrentSelected = v;
			mCurrentSelected.setSelected(true);
			
			mFragmentMenuListener.onClickTopAlbum();
		}
	};
	
	OnClickListener mOnClickFavouriteAlbum = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			mCurrentSelected.setSelected(false);
			mCurrentSelected = v;
			mCurrentSelected.setSelected(true);
			
			mFragmentMenuListener.onClickFavouriteAlbums();
		}
	};
	
	OnClickListener mOnClickSubInstrumentOrCategory = new OnClickListener() {
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			mCurrentSelected.setSelected(false);
			mCurrentSelected = v;
			mCurrentSelected.setSelected(true);
			
			mFragmentMenuListener.onSelectInstrumentOrCategory(v.getTag(R.id.tag_type).toString(), v.getTag(R.id.tag_id).toString());
		}
	};
	
	
	interface FragmentMenuListener {
		public void onClickTopAlbum();
		public void onClickFavouriteAlbums();
		public void onSelectInstrumentOrCategory(String type, String id);
	}

}
