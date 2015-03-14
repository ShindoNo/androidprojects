package vn.muachung.cod.muachungmobile;

import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONObject;

import vn.muachung.cod.dao.NoteSortSmsDAO;
import vn.muachung.cod.services.NameSpace;


public class SortDealHelper {
	NoteSortSmsDAO noteSortSmsDAO;
	HashMap<String, JSONObject> mapDateToData;
	
	public SortDealHelper(NoteSortSmsDAO noteSortSmsDAO, HashMap<String, JSONObject> mapDateToData) {
		// TODO Auto-generated constructor stub
		this.noteSortSmsDAO = noteSortSmsDAO;
		this.mapDateToData = mapDateToData;
	}
	
	public void checkSortInDbAndRearrange(String date) {
		if (checkSortInDb(date)) {
			reArrangeSort(date);
		}
	}
	
	/**
	 * Return true if need rearrange, false otherwise
	 * @param date
	 * @return
	 */
	public boolean checkSortInDb(String date) {
		try {
			String sortInDb = noteSortSmsDAO.getSort(date);
			String[] sortInDbArray = sortInDb.split(" ");
			JSONArray works = mapDateToData.get(date).getJSONArray(NameSpace.WORK);
			String worksString = works.toString();
			
			// 1. compare id in works to id in sortdb
			for (int i = 0; i < works.length(); i++) {
				String id = works.getJSONObject(i).getString(NameSpace.ID);
				if (!sortInDb.contains(id)) {
					return false;
				}
			}
			
			// 2. check each id in works
			for (int i = 0; i < sortInDbArray.length; i++) {
				String id = sortInDbArray[i];
				if (!worksString.contains("\"" + id + "\"")) {
					return false;
				}
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return true;
	}
	
	public void reArrangeSort(String date) {
		try {
			JSONArray works = mapDateToData.get(date).getJSONArray(NameSpace.WORK);
			JSONArray sortedWorks = new JSONArray();
			
			String [] sortInDbArray = noteSortSmsDAO.getSort(date).split(" ");
			for (int i = 0; i < sortInDbArray.length; i++) {
				String id = sortInDbArray[i];
				for (int k = 0; k < works.length(); k++) {
					if (works.getJSONObject(k).getString(NameSpace.ID).equals(id)) {
						sortedWorks.put(works.getJSONObject(k));
						break;
					}
				}
			}
			
			// put sorted works to data
			mapDateToData.get(date).put(NameSpace.WORK, sortedWorks);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void saveSort() {
		String [] dates = new String[mapDateToData.size()];
		mapDateToData.keySet().toArray(dates);
		
		for (int i = 0; i < dates.length; i++) {
			try {
				String date = dates[i];
				JSONArray works = mapDateToData.get(date).getJSONArray(NameSpace.WORK); 
				if (works.length() > 0) {
					StringBuilder builder = new StringBuilder();
					for (int k = 0; k < works.length(); k++) {
						builder.append(works.getJSONObject(k).getString(NameSpace.ID)).append(" ");
					}
					
					if (noteSortSmsDAO.checkSortExist(date)) {
						noteSortSmsDAO.updateSort(date, builder.toString());
					} else {
						noteSortSmsDAO.insertSort(date, builder.toString());
					}
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
}
