package com.flight.booking.air;

public class RecommendVO {
	private String userid;
	private String dest;
	private String date;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getDest() {
		return dest;
	}
	public void setDest(String dest) {
		this.dest = dest;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "RecommendVO [userid=" + userid + ", dest=" + dest + ", date=" + date + "]";
	}
	

}
