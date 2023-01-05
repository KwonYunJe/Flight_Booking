package com.flight.booking.tour;

public class CovidDTO {

	private String region;

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	@Override
	public String toString() {
		return "CovidDTO [region=" + region + "]";
	}
	
}
