package com.flight.booking.air;

public class ValueObject {
	private String drank;
	private int date;
	
	public String getDrank() {
		return drank;
	}
	public void setDrank(String drank) {
		this.drank = drank;
	}
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "ValueObject [drank=" + drank + ", date=" + date + "]";
	}
	
}
