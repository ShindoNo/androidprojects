package com.nano.lxus;

import org.json.JSONArray;

import android.app.Activity;
import android.app.ProgressDialog;
import android.location.Location;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.maps.android.clustering.ClusterManager;
import com.google.maps.android.clustering.ClusterManager.OnClusterItemClickListener;
import com.nano.lxus.util.MyClusterItem;
import com.nano.lxus.util.MyClusterRenderer;
import com.nano.lxus.util.MyHotelAdapter;
import com.nano.lxus.util.MyInfoWindowAdapter;
import com.nano.lxus.util.MyLog;
import com.nano.lxus.util.NameSpace;
import com.nano.lxus.util.ServiceHelper;

public class FragmentListHotels extends Fragment {
	
	JSONArray mListHotels;
	
	View mCurrentViewType;

	GoogleMap mGoogleMap;
	GoogleApiClient mGoogleApiClient;
	ClusterManager<MyClusterItem> mClusterManager;	
	boolean pendingDetectingLocation;
	Location detectedLoation;

	ListView mListView;
	MyHotelAdapter mHotelAdapter;
	

	ProgressDialog mProgressDialog;
	Activity mActivity;
	
	

	public static FragmentListHotels getInstance(Activity activity) {
		FragmentListHotels fragmentListHotels = new FragmentListHotels();
		fragmentListHotels.init(activity);
		return fragmentListHotels;
	}
	
	public void init(Activity activity) {
		mActivity = activity;
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		return inflater.inflate(R.layout.fragment_list_hotels, container, false);
	}

	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onViewCreated(view, savedInstanceState);
		initUI();
	}

	/**
	 * init UI
	 */
	public void initUI() {
		mProgressDialog = new ProgressDialog(getActivity());
		mProgressDialog.setMessage(getString(R.string.deteting_location));

		// for map
		mGoogleMap = ((SupportMapFragment) getChildFragmentManager().findFragmentById(R.id.fragment_map_result)).getMap();
		
		mClusterManager = new ClusterManager<MyClusterItem>(getActivity(), mGoogleMap);
		mClusterManager.setOnClusterItemClickListener(new OnClusterItemClickListener<MyClusterItem>() {
			@Override
			public boolean onClusterItemClick(MyClusterItem item) {
				// TODO Auto-generated method stub
				
				return false;
			}
		});
		mClusterManager.setRenderer(new MyClusterRenderer(mActivity, mGoogleMap, mClusterManager));
		
		mGoogleMap.setOnCameraChangeListener(mClusterManager);
		mGoogleMap.setOnMarkerClickListener(mClusterManager);
		mGoogleMap.setInfoWindowAdapter(new MyInfoWindowAdapter(mActivity));
		
		// for listview
		mListView = (ListView)getView().findViewById(R.id.lv_result);
		mHotelAdapter = new MyHotelAdapter(mActivity);
		mListView.setAdapter(mHotelAdapter);
		
		// button map & listview
		mCurrentViewType = getView().findViewById(R.id.btn_view_type_map);
		mCurrentViewType.setSelected(true);
		
		getView().findViewById(R.id.btn_view_type_map).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mCurrentViewType.setSelected(false);
				mCurrentViewType = getView().findViewById(R.id.btn_view_type_map);
				mCurrentViewType.setSelected(true);
				getView().findViewById(R.id.fragment_map_result).setVisibility(View.VISIBLE);
				getView().findViewById(R.id.lv_result).setVisibility(View.GONE);
			}
		});
		
		getView().findViewById(R.id.btn_view_type_list).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				mCurrentViewType.setSelected(false);
				mCurrentViewType = getView().findViewById(R.id.btn_view_type_list);
				mCurrentViewType.setSelected(true);
				getView().findViewById(R.id.fragment_map_result).setVisibility(View.GONE);
				getView().findViewById(R.id.lv_result).setVisibility(View.VISIBLE);				
			}
		});
	}
	
	/**
	 * Load current location
	 */
	public void loadLocation() {
		if (detectedLoation != null) {
			displayDetectedLocation(detectedLoation.getLatitude(), detectedLoation.getLongitude());
			downloadData();
			return;
		}
		
		pendingDetectingLocation = true;
		connectGoogleApiClient();
	}

	/**
	 * Connect to Google Api Client
	 */
	public void connectGoogleApiClient() {
		
		if (mGoogleApiClient == null) {
			GoogleApiClient.ConnectionCallbacks connectionCallbacks = new GoogleApiClient.ConnectionCallbacks() {
				@Override
				public void onConnected(Bundle bundle) {
					MyLog.log(getClass().getName() + ": onConnected");
					detectLocation();
				}

				@Override
				public void onConnectionSuspended(int i) {
					mProgressDialog.dismiss();
				}
			};

			GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = new GoogleApiClient.OnConnectionFailedListener() {
				@Override
				public void onConnectionFailed(ConnectionResult connectionResult) {
					MyLog.log(getClass().getName() + ": onConnectionFailed; connectionResult="
							+ connectionResult.getErrorCode());
					mProgressDialog.dismiss();
				}
			};

			mGoogleApiClient = new GoogleApiClient.Builder(getActivity()).addConnectionCallbacks(connectionCallbacks)
					.addOnConnectionFailedListener(onConnectionFailedListener)
					.addApi(LocationServices.API)
					.build();

		}

		mProgressDialog.show();
		mGoogleApiClient.connect();
	}

	/**
	 * Detect current location
	 */
	public void detectLocation() {
		mProgressDialog.show();

		LocationRequest locationRequest = new LocationRequest();
		locationRequest.setInterval(10000);
		locationRequest.setFastestInterval(5000);
		locationRequest.setPriority(LocationRequest.PRIORITY_HIGH_ACCURACY);

		LocationListener locationListener = new LocationListener() {
			@Override
			public void onLocationChanged(Location location) {
				mProgressDialog.dismiss();
				detectedLoation = location;
				
				if (pendingDetectingLocation) {
					pendingDetectingLocation = false;
					displayDetectedLocation(location.getLatitude(), location.getLongitude());
					downloadData();
				}
			}
		};
		
		LocationServices.FusedLocationApi.requestLocationUpdates(mGoogleApiClient, locationRequest, locationListener);
	}
	
	/**
	 * Display user location
	 * @param lat
	 * @param lng
	 */
    public void displayDetectedLocation(double lat, double lng) {
        mGoogleMap.clear();
        
        mGoogleMap.addMarker(new MarkerOptions()
                        .position(new LatLng(lat, lng))
                        .draggable(true)
                        .icon(BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_BLUE))
        );
        
        mGoogleMap.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(lat, lng), 14));
    }
    
    public void downloadData() {
    	mProgressDialog.setMessage(getString(R.string.loading));
    	mProgressDialog.show();
    	
    	new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				MyLog.log("detectedLoation.getLongitude()=" + detectedLoation.getLongitude());
				final String response = ServiceHelper.get(NameSpace.API_SEARCH +  detectedLoation.getLongitude() + "/" + detectedLoation.getLatitude() + "/1");
//				final String response = ServiceHelper.get("http://tag2.channelvn.net/API/GoogleDirections/105.85339000000000450/21.03654300000000180/1");
				mActivity.runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mProgressDialog.dismiss();
						
						if (response == null) {
							Toast.makeText(mActivity, "response=null", Toast.LENGTH_SHORT).show();
						} else {
							try {
								mListHotels = new JSONArray(response);
								displayResults(mListHotels);
							} catch (Exception e) {
								// TODO: handle exception
								e.printStackTrace();
							}
						}
					}
				});
			}
		}).start();
    }
    

    
    /**
     * Display list hotels
     * @param listHotels
     */
    public void displayResults(JSONArray listHotels) {
    	// for map
    	try {
    		MyLog.log("listHotels=" + listHotels.length());
			mClusterManager.clearItems();
			
			for (int i = 0; i < listHotels.length(); i++) {
				MyClusterItem myClusterItem = new MyClusterItem(listHotels.getJSONObject(i).getDouble("HX"),
																listHotels.getJSONObject(i).getDouble("HY"),
																listHotels.getJSONObject(i));
				mClusterManager.addItem(myClusterItem);
			}
			
			mClusterManager.cluster();
    		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    	
    	// for listview
    	mHotelAdapter.setListHotels(mListHotels);
    	
    }
    
    
	
	

}
