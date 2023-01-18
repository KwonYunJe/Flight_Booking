package com.flight.booking.air;

public class RecommendVO {
	private String userid;
	private String dest;
	private String date;
	private String max_dest;
	
	public String getUserid()
	
	{
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
	public String getMax_dest() {
		return max_dest;
	}
	public void setMax_dest(String max_dest) {
		this.max_dest = max_dest;
	}
	@Override
	public String toString() {
		return "RecommendVO [userid=" + userid + ", dest=" + dest + ", date=" + date + ", max_dest=" + max_dest + "]";
	}
	
	

}
