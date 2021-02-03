package com.app.log;

public class User {
	private String userID;
	private String userPW;
	private String Name;
	private String Phone;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	public String getName() {
		return Name;
	}
	public void setName(String Name) {
		this.Name = Name;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String Phone) {
		this.Phone = Phone;
	}
	@Override
	public String toString() {
		return "User [userID=" + userID + ", userPW=" + userPW + ", Name=" + Name + ", Phone=" + Phone + "]";
	}
	

}
