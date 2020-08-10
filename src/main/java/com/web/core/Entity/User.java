package com.web.core.Entity;

public class User {

	private int uid;
	private String username;
	private String password;
	private String sex;
	private String phone;
	private String name;
	private String address;
	private String signature;
	
	
	public User() {
		super();
		
	}

	public User(int uid, String username, String password, String sex, String phone,String name,String address,String signature) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.phone = phone;
		this.name = name;
		this.address = address;
		this.signature = signature;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	
}
