package com.tubefilm.collection;

import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;

import android.os.Bundle;
import android.app.Activity;
import android.util.Log;
import android.view.Menu;
import android.widget.ListView;

public class MainActivity extends Activity {
	
	ListView mListView;
	FilmAdapter mFilmAdapter;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		initImageLoader();
		initUI();
		loadFilm("Crime", 0);
	}
	
	public void initImageLoader() {
		ImageLoaderConfiguration config = new ImageLoaderConfiguration.Builder(getApplicationContext())
		.threadPoolSize(3)
		.threadPriority(Thread.NORM_PRIORITY - 2)
		.memoryCacheSize(2 * 1024 * 1024)
		.memoryCache(new WeakMemoryCache())
		.denyCacheImageMultipleSizesInMemory()
		.discCacheFileNameGenerator(new Md5FileNameGenerator())
		.tasksProcessingOrder(QueueProcessingType.FIFO)
		.build();
		
		ImageLoader.getInstance().init(config);				
	}
	
	public void initUI() {
		mListView = (ListView) findViewById(R.id.listview);
		mFilmAdapter = new FilmAdapter(this);
		mListView.setAdapter(mFilmAdapter);
	}
	
	public void loadFilm(final String category, final int page) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String api = "http://backupserverone.info/Movies/Hollywood%20Movies/NEW_3/" + category + "_" + page + ".txt";
				final String response = ServiceHelper.get(api, "");
				runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						if (response == null) {
							Utils.checkInternet(getApplicationContext());
							return;
						}
						
						String[] listFilm = response.split("\n");
						
						Log.e("stk", "listFilmLenght=" + listFilm.length);
						
						mFilmAdapter.setListFilm(listFilm);
						mFilmAdapter.notifyDataSetChanged();
					}
				});
			}
		}).start();
	}

}
