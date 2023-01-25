package com.flight.booking.air;

public class FlightVO {
	private String departure;
	private String arrival;
	private String airdate;
	private String adult;
	private String child;
	private String baby;
	
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
	public String getAdult() {
		return adult;
	}
	public void setAdult(String adult) {
		this.adult = adult;
	}
	public String getChild() {
		return child;
	}
	public void setChild(String child) {
		this.child = child;
	}
	public String getBaby() {
		return baby;
	}
	public void setBaby(String baby) {
		this.baby = baby;
	}
	@Override
	public String toString() {
		return "FlightVO [departure=" + departure + ", arrival=" + arrival + ", airdate=" + airdate + ", adult=" + adult
				+ ", child=" + child + ", baby=" + baby + "]";
	}
	
}
