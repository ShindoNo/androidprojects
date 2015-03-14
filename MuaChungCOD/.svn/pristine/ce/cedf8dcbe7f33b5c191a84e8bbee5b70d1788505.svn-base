package vn.muachung.cod.muachungmobile;

import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.json.JSONArray;
import org.json.JSONObject;

import vn.muachung.cod.muachungmobile.WorksViewCreator.WorksAdapter;
import vn.muachung.cod.services.ServiceHelper;
import vn.muachung.cod.services.NameSpace;
import vn.muachung.cod.services.SearchTools;
import vn.muachung.cod.services.Tools;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.util.Log;


public class SearchDealHelper {
	Context mContext;
	ProgressDialog mProgressDialog;
	
	HashMap<String, JSONObject> mMapIdToSearchResult;
	HashMap<String, JSONObject> mMapDateToData;
	
	WorksAdapter mWorksAdapter;
	JSONArray mListDates;
	
	int numberOfFilteredDate;
	String mSearchValue;
	String mSearchType;
	boolean isSearchingRelatedDeals;
	boolean isSearchingReworkDeals;
	
	ExecutorService executorService;
	
	SearchListener mSearchListener;
	
	public SearchDealHelper(Context context, HashMap<String, JSONObject> mapDateToData, HashMap<String, JSONObject> mapIdToSearchResult, WorksAdapter worksAdapter, SearchListener searchListener) {
		// TODO Auto-generated constructor stub
		mContext = context;
		mMapDateToData = mapDateToData; 
		mMapIdToSearchResult = mapIdToSearchResult;
		mWorksAdapter = worksAdapter;
		mSearchListener = searchListener;
		executorService = Executors.newFixedThreadPool(3);
	}
	
	public void search(String searchValue, String searchType, boolean isSearchingRelatedDeals) {
		mSearchValue = searchValue;
		mSearchType = searchType;
		this.isSearchingRelatedDeals = isSearchingRelatedDeals;
		if (!this.isSearchingRelatedDeals) {
			mProgressDialog = ProgressDialog.show(mContext, "", "Searching...");
		}
		
		mMapIdToSearchResult.clear();
		
		if (!isSearchingRelatedDeals) {
			mWorksAdapter.setWorkViewDisplayMode(NameSpace.WORK_DISPLAY_SEARCH);
			mWorksAdapter.notifyDataSetChanged();
		}
		
		if (mListDates != null)
			startSearching();
		else {
			new Thread(new Runnable() {
				public void run() {
					// TODO Auto-generated method stub
					// get list date
					try {
						String apiUrl = String.format(NameSpace.API_LIST_DATES, NameSpace.CLIENT_ID);
						JSONObject apiResponse = (JSONObject) ServiceHelper.downloadJsonData(apiUrl, true);
						if (apiResponse != null) {
							mListDates = apiResponse.getJSONArray(NameSpace.WORKS);
							startSearching();
						}
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
				}
			}).start();			
		}
	}	
	
	public void startSearching() {
		numberOfFilteredDate = 0;
		try {
			for (int i = 0; i < mListDates.length(); i++) {
				String date =  mListDates.getJSONObject(i).getString(NameSpace.DATE);
				if (mMapDateToData.containsKey(date)) {
					searchInDate(date);
				} else {
					executorService.submit(new GetDataRunnable(date));
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}	
	
	class GetDataRunnable implements Runnable {
		
		String date;
		
		public GetDataRunnable(String date) {
			// TODO Auto-generated constructor stub
			this.date = date;
		}
		
		public void run() {
			// TODO Auto-generated method stub
			String apiUrl = String.format(NameSpace.API_LIST_WORKS, NameSpace.CLIENT_ID, date);
			final JSONObject apiResponse = (JSONObject) ServiceHelper.downloadJsonData(apiUrl, true);
			
			((Activity) mContext).runOnUiThread(new Runnable() {
				public void run() {
					// TODO Auto-generated method stub
					if (apiResponse != null) {
						mMapDateToData.put(date, apiResponse);
						mSearchListener.checkSortInDbAndRearrange(date);
						searchInDate(date);
					} else {
						Tools.checkInternetAndToast(mContext);
						numberOfFilteredDate += 1;
						checkFilterDone();
					}
				}
			});					
		}
	}	
	
	public void searchInDate(String date) {
		try {
			JSONArray works = mMapDateToData.get(date).getJSONArray(NameSpace.WORK);
			
			for (int i = 0; i < works.length(); i++) {
				final JSONObject work = works.getJSONObject(i);
				
				// if this is filtering rework deals
				if (isSearchingReworkDeals) {
					String reWork = work.getString(NameSpace.RE_WORK);
					if (reWork.equals(NameSpace.DEAL_REWORK_YES)) {
						((Activity) mContext).runOnUiThread(new Runnable() {
							public void run() {
								// TODO Auto-generated method stub
								String orderId = work.optString(NameSpace.ORDER_ID);
								if (orderId != null) {
									mMapIdToSearchResult.put(orderId, work);
									mWorksAdapter.notifyDataSetChanged();
								}
							}
						});						
					}
				} else {
					// if this is searching deals
					String type = work.getString(NameSpace.TYPE);
					if (mSearchType.equals(NameSpace.SEARCH_ALL) || mSearchType.equals(type))  {
						String phone = work.getString(NameSpace.PHONE);
						String address = work.getString(NameSpace.NOTE) + " " + work.getString(NameSpace.STREET) + " " + work.getString(NameSpace.WARD);
						String itemTitle = work.getString(NameSpace.ITEM_TITLE);
						String orderId = work.getString(NameSpace.ORDER_ID);
						String itemId = work.getString(NameSpace.ITEM_ID);
						
						if (phone.contains(mSearchValue) 
							|| SearchTools.format(address).contains(mSearchValue)
							|| SearchTools.format(itemTitle).contains(mSearchValue)
							|| orderId.contains(mSearchValue)
							|| itemId.contains(mSearchValue)) {
							((Activity) mContext).runOnUiThread(new Runnable() {
								public void run() {
									// TODO Auto-generated method stub
									String orderId = work.optString(NameSpace.ORDER_ID);
									if (orderId != null) {
										mMapIdToSearchResult.put(orderId, work);
										mWorksAdapter.notifyDataSetChanged();
									}
								}
							});
						}
					}
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		numberOfFilteredDate += 1;
		checkFilterDone();
	}
	
	// if filtering done, toast number of found result
	public void checkFilterDone() {
		if (numberOfFilteredDate == mListDates.length()) {
			((Activity) mContext).runOnUiThread(new Runnable() {
				public void run() {
					// TODO Auto-generated method stub
					if (mProgressDialog != null) {
						mProgressDialog.dismiss();
					}
					
					if (isSearchingReworkDeals) {
						isSearchingReworkDeals = false;
						return;
					}
					
					if (isSearchingRelatedDeals) {
						mSearchListener.setPopupDealShipSearchResult(mMapIdToSearchResult.size() - 1);
					} else {
						Tools.toast(mContext, "Tìm thấy " + mMapIdToSearchResult.size() + " kết quả");
					}
				}
			});
		}
	}
	
	interface SearchListener {
		public void checkSortInDbAndRearrange(String date);
		public void setPopupDealShipSearchResult(int relatedDealNum);
	}
	

}
