package com.flight.booking.tour;

public class UserVO {
	private String userid;
	private String password;
	private String name;
	private String tel;
	private String gender;
	private String nickname;
	private int buying;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getBuying() {
		return buying;
	}
	public void setBuying(int buying) {
		this.buying = buying;
	}
	@Override
	public String toString() {
		return "UserVO [userid=" + userid + ", password=" + password + ", name=" + name + ", tel=" + tel + ", gender="
				+ gender + ", nickname=" + nickname + ", buying=" + buying + "]";
	}
	
}
