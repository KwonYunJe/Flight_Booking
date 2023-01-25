package com.flight.booking.air;

public class FlightListVO {
	private String airline; // 항공사 
	private int price; //가격 
	private String tour; // 여행사
	private String depTime; //출발시간 
	private String arrTime; // 도착시간
	
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getTour() {
		return tour;
	}
	public void setTour(String tour) {
		this.tour = tour;
	}
	public String getDepTime() {
		return depTime;
	}
	public void setDepTime(String depTime) {
		this.depTime = depTime;
	}
	public String getArrTime() {
		return arrTime;
	}
	public void setArrTime(String arrTime) {
		this.arrTime = arrTime;
	}
	
	@Override
	public String toString() {
		return "FlightListVO [airline=" + airline + ", price=" + price + ", tour=" + tour + ", depTime=" + depTime
				+ ", arrTime=" + arrTime + "]";
	}
	
	
	
}
