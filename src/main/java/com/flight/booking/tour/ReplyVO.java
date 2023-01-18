package com.flight.booking.tour;

public class ReplyVO {
	
	private int reid;
	private String userid;
	private String recont;
	private String retime;
	private int bbsnum;
	public int getReid() {
		return reid;
	}
	public void setReid(int reid) {
		this.reid = reid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getRecont() {
		return recont;
	}
	public void setRecont(String recont) {
		this.recont = recont;
	}
	public String getRetime() {
		return retime;
	}
	public void setRetime(String retime) {
		this.retime = retime;
	}
	public int getBbsnum() {
		return bbsnum;
	}
	public void setBbsnum(int bbsnum) {
		this.bbsnum = bbsnum;
	}
	@Override
	public String toString() {
		return "ReplyVO [reid=" + reid + ", userid=" + userid + ", recont=" + recont + ", retime=" + retime
				+ ", bbsnum=" + bbsnum + "]";
	}
	
	
}
