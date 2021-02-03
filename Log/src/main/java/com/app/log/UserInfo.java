package com.app.log;

public class UserInfo {
	private String Name;
	private String Phone;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	@Override
	public String toString() {
		return "UserInfo [Name=" + Name + ", Phone=" + Phone + "]";
	}
	
}
