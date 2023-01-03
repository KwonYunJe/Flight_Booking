package com.flight.booking.tour;

public class BbsVO {
	private String userId;
	private String title;
	private String contents;
	private String area;

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
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
	@Override
	public String toString() {
		return "BbsVO [userId=" + userId + ", title=" + title + ", contents=" + contents + ", area=" + area + "]";
	}
	
	
	
	
	
}
