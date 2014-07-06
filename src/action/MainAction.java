package action;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import model.DataPackage;
import vo.StatusVO;
import vo.ViewObject;

import com.opensymphony.xwork2.ActionSupport;

public class MainAction extends ActionSupport{
	private static final long serialVersionUID = 6503785056428684687L;
	private String s1;
	private String s2;
	private ArrayList<String> photoUrls;
	private int subjectHotLevel;
	private int subjectScore;
	private List<Integer> attitudeSplit;
	private Map<String, Integer> locationDistribution;
	private int totalTweet;
	private List<StatusVO> top5GoodStatus;
	private List<StatusVO> top5BadStatus;

	public String excuteSearch(){
		String keyword = s1+" "+s2;
		ViewObject vo = (ViewObject) MyCacheManager.getInstance().get("CWSCache",keyword );
		if(vo!=null){
			photoUrls = vo.getPhotoUrls();
			subjectHotLevel = vo.getSubjectHotLevel();
			subjectScore = vo.getSubjectScore();
			attitudeSplit = vo.getAttitudeSplit();
			locationDistribution = vo.getLocationDistribution();
			totalTweet = vo.getTotalTweet();
			top5GoodStatus = vo.getTop10GoodStatus();
			top5BadStatus = vo.getTop5BadStatus();
		}else{
			Flickr flickr = new Flickr();
			photoUrls = flickr.getPhoto(keyword);
			DataPackage dp = Twitter.searchTwitter(keyword);
			Aggregation ag = new Aggregation();
			subjectHotLevel = ag.getSubjectHotLevel(dp);
			subjectScore = ag.getSubjectScore(dp);
			top5GoodStatus = ag.getTop10Tweets(dp);
			top5BadStatus = ag.getTop5BandStatus(dp);
			int[] temp = ag.getAttitudeSplit(dp);
			if(temp!=null&&temp.length>0){
				attitudeSplit = Arrays.asList(temp[0],temp[1],temp[2]);
			}
			locationDistribution = ag.getLocationDistribution(dp);
			totalTweet = ag.getTotalTweet(dp);
			ViewObject voTemp = new ViewObject();
			
			voTemp.setLocationDistribution(locationDistribution);
			voTemp.setAttitudeSplit(attitudeSplit); 
			voTemp.setPhotoUrls(photoUrls);
			voTemp.setSubjectHotLevel(subjectHotLevel);
			voTemp.setSubjectScore(subjectScore);
			voTemp.setTotalTweet(totalTweet);
			voTemp.setTop10GoodStatus(top5GoodStatus);
			voTemp.setTop5BadStatus(top5BadStatus);
			MyCacheManager.getInstance().put("CWSCache", keyword, voTemp);
		}
		
		
		return "out";
	}
	
	public String getS1() {
		return s1;
	}
	public void setS1(String s1) {
		this.s1 = s1;
	}
	public String getS2() {
		return s2;
	}
	public void setS2(String s2) {
		this.s2 = s2;
	}
	public ArrayList<String> getPhotoUrls() {
		return photoUrls;
	}
	public void setPhotoUrls(ArrayList<String> photoUrls) {
		this.photoUrls = photoUrls;
	}
	public int getSubjectHotLevel() {
		return subjectHotLevel;
	}
	public void setSubjectHotLevel(int subjectHotLevel) {
		this.subjectHotLevel = subjectHotLevel;
	}
	public int getSubjectScore() {
		return subjectScore;
	}
	public void setSubjectScore(int subjectScore) {
		this.subjectScore = subjectScore;
	}
	
	public List<Integer> getAttitudeSplit() {
		return attitudeSplit;
	}

	public void setAttitudeSplit(List<Integer> attitudeSplit) {
		this.attitudeSplit = attitudeSplit;
	}

	public Map<String, Integer> getLocationDistribution() {
		return locationDistribution;
	}
	public void setLocationDistribution(Map<String, Integer> locationDistribution) {
		this.locationDistribution = locationDistribution;
	}
	public int getTotalTweet() {
		return totalTweet;
	}
	public void setTotalTweet(int totalTweet) {
		this.totalTweet = totalTweet;
	}

	public List<StatusVO> getTop5GoodStatus() {
		return top5GoodStatus;
	}

	public void setTop10GoodStatus(List<StatusVO> top5GoodStatus) {
		this.top5GoodStatus = top5GoodStatus;
	}

	public List<StatusVO> getTop5BadStatus() {
		return top5BadStatus;
	}

	public void setTop5BadStatus(List<StatusVO> top5BadStatus) {
		this.top5BadStatus = top5BadStatus;
	}
	
}
