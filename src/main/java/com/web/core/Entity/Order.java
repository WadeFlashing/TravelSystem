package com.web.core.Entity;

public class Order {

	private int orderid;
	private int uid;
	private int pid;
	private double cost;
	private String orderTime;
	private String travelTime;
	private String orderState;
	private String name;
	private String phone;
	private String pname;
	
	
	public Order() {
		super();
	}

	public Order(int orderid, int uid, int pid, double cost, String orderTime, String travelTime, String orderState,String name,String phone,String pname) {
		super();
		this.orderid = orderid;
		this.uid = uid;
		this.pid = pid;
		this.cost = cost;
		this.orderTime = orderTime;
		this.travelTime = travelTime;
		this.orderState = orderState;
		this.name = name;
		this.phone = phone;
		this.pname = pname;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}

	public String getTravelTime() {
		return travelTime;
	}

	public void setTravelTime(String travelTime) {
		this.travelTime = travelTime;
	}

	public String getOrderState() {
		return orderState;
	}

	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}
	
	
}
