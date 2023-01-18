package com.flight.booking.tour;

public class BbsVO {
	private String bbsnum;
	private String userId;
	private String title;
	private String bbscont;
	private String area;
	private String bbstime="";
	
	public BbsVO(){
		this.bbsnum  = "";
	}
	public String getBbsnum() {
		return bbsnum;
	}
	public void setBbsnum(String bbsnum) {
		this.bbsnum = bbsnum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getbbscont() {
		return bbscont;
	}
	public void setbbscont(String bbscont) {
		this.bbscont = bbscont;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getBbstime() {
		return bbstime;
	}
	public void setBbstime(String bbstime) {
		this.bbstime = bbstime;
	}
	@Override
	public String toString() {
		return "BbsVO [userId=" + userId + ", title=" + title + ", bbscont=" + bbscont + ", area=" + area + ", bbstime="
				+ bbstime;
	}
	
}
