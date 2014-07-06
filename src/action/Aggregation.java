package action;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import vo.StatusVO;
import model.DataPackage;
import model.Status;

public class Aggregation {
	public int getSubjectHotLevel(DataPackage dp) {
		if (dp == null) {
			return -1;
		}
		List<Status> status = dp.getStatuses();
		if (status == null || status.size() == 0) {
			return -1;
		}
		return status.size() / 25;
	}
	
	
	public int getSubjectScore(DataPackage dp) {
		if (dp == null) {
			return -1;
		}
		HashMap<Long, Integer> polarity = dp.getMap();
		List<Status> status = dp.getStatuses();
		if (status == null || status.size() == 0 || polarity == null || polarity.size() == 0) {
			return -1;
		}
		Collection<Integer> numList = polarity.values();
		int sum = 0;
		for(Integer i : numList) {
			sum += i;
		}
		return (int)(((double) sum) / numList.size() * 25);
	}
	
	
	public int[] getAttitudeSplit(DataPackage dp) {
		if (dp == null) {
			return new int[0];
		}
		HashMap<Long, Integer> polarity = dp.getMap();
		List<Status> status = dp.getStatuses();
		if (status == null || status.size() == 0 || polarity == null || polarity.size() == 0) {
			return new int[0];
		}
		
		int[] opinion = new int[3];
		for(Integer pop : polarity.values()) {
			if (pop == 0) {
				opinion[0]++;
			} else if (pop == 2) {
				opinion[1]++;
			} else {
				opinion[2]++;
			}
		}
		/*int total = opinion[0] + opinion[1] + opinion[2];
		opinion[0] = (int)(((double)opinion[0] / total) * 100);
		opinion[1] = (int)(((double)opinion[1] / total) * 100);
		opinion[2] = (int)(((double)opinion[2] / total) * 100);*/
		return opinion;
	}
	
	
	public ArrayList<StatusVO> getTop10Tweets(DataPackage dp) {
		ArrayList<StatusVO> top = new ArrayList<StatusVO>();
		ArrayList<Status> tmp = new ArrayList<Status>(dp.getStatuses());
		if (tmp == null || tmp.size() == 0) {
			return top;
		}
		HashSet<String> set = new HashSet<String>();
		Collections.sort(tmp, new MyComparator());
		int i = 0;
		HashMap<Long,Integer> map = dp.getMap();
		int count = 0;
		while (i < tmp.size()) {
			Status status = tmp.get(i);
			if(map.get(status.getId())==4){
				if(!set.contains(status.getText())){
					set.add(status.getText());
					StatusVO statusVO = new StatusVO();
					statusVO.setText(status.getText());
					statusVO.setPolarity(map.get(status.getId()));
					top.add(statusVO);
					count++;
					if(count==5){
						break;
					}
				}
			}
			i++;
		}
		return top;
	}
	
	public ArrayList<StatusVO> getTop5BandStatus(DataPackage dp) {
		ArrayList<StatusVO> top = new ArrayList<StatusVO>();
		ArrayList<Status> tmp = new ArrayList<Status>(dp.getStatuses());
		if (tmp == null || tmp.size() == 0) {
			return top;
		}
		Collections.sort(tmp, new MyComparator());
		int i = 0;
		HashSet<String> set = new HashSet<String>();
		HashMap<Long,Integer> map = dp.getMap();
		int count = 0;
		while (i < tmp.size() && count < 5) {
			Status status = tmp.get(i);
			if(map.get(status.getId())==0){
				if(!set.contains(status.getText())){
					set.add(status.getText());
					StatusVO statusVO = new StatusVO();
					statusVO.setText(status.getText());
					statusVO.setPolarity(map.get(status.getId()));
					System.out.println(status.getText()+status.getId());
					top.add(statusVO);
					count++;
				}
			}
			i++;
		}
		return top;
	}
	
	
	
	
	public HashMap<String, Integer> getLocationDistribution(DataPackage dp) {
		HashMap<String, Integer> result = new HashMap<String, Integer>();
		if (dp == null) {
			return result;
		}
		ArrayList<Status> status = new ArrayList<Status>(dp.getStatuses());
		if (status == null || status.size() == 0) {
			return result;
		}
		HashSet<String> countries = new HashSet<String>();
		countries.add("Angola");
		countries.add("Australia");
		countries.add("Brazil");
		countries.add("Canada");
		countries.add("China");
		countries.add("France");
		countries.add("Germany");
		countries.add("Greece");
		countries.add("Hong Kong");
		countries.add("Italy");
		countries.add("Japan");
		countries.add("Korea");
		countries.add("Malaysia");
		countries.add("New Zealand");
		countries.add("Russian Federation");
		countries.add("United States");
		for(Status tmp : status) {
			if(tmp.getUser().getLocation().equals("")||!countries.contains(tmp.getUser().getLocation())){
				continue;
			}
			if (result.containsKey(tmp.getUser().getLocation())) {
				int count = result.get(tmp.getUser().getLocation());
				result.put(tmp.getUser().getLocation(), count + 1);
			} else {
				result.put(tmp.getUser().getLocation(), 1);
			}
		}
		return result;
	}
	
	
	public int getTotalTweet(DataPackage dp) {
		int count = -1;
		if (dp == null) {
			return count;
		}
		ArrayList<Status> status = new ArrayList<Status>(dp.getStatuses());
		if (status == null || status.size() == 0) {
			return count;
		}
		count = status.size();
		return count;
	}
	
	private class MyComparator implements Comparator<Status>{
		@Override
		public int compare(Status o1, Status o2) {
			int o1Hot = (int) (o1.getFavorite_count() + o1.getRetweet_count());
			int o2Hot = (int) (o2.getFavorite_count() + o2.getRetweet_count());
			return o1Hot - o2Hot;
		}
	}
	

}
