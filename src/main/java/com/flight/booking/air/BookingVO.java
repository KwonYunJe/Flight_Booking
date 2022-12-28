package com.flight.booking.air;

public class BookingVO {
	private String departure;
	private String arrival;
	private String airdate;
	private int adult;
	private int child;
	private int baby;
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getArrival() {
		return arrival;
	}
	public void setArrival(String arrival) {
		this.arrival = arrival;
	}
	public String getAirdate() {
		return airdate;
	}
	public void setAirdate(String airdate) {
		this.airdate = airdate;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getChild() {
		return child;
	}
	public void setChild(int child) {
		this.child = child;
	}
	public int getBaby() {
		return baby;
	}
	public void setBaby(int baby) {
		this.baby = baby;
	}
	@Override
	public String toString() {
		return "BookingVO [departure=" + departure + ", arrival=" + arrival + ", airdate=" + airdate + ", adult="
				+ adult + ", child=" + child + ", baby=" + baby + "]";
	}
	
	
	

}
