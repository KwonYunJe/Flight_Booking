package com.flight.booking.air;

public class SearchAreaVO {
	private String drank;
	private String date;
	
	public String getDrank() {
		return drank;
	}
	public void setDrank(String drank) {
		this.drank = drank;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "SearchAreaVO [drank=" + drank + ", date=" + date + "]";
	}
	
}
