package com.web.core.Entity;

public class HotelOrder {

	private int horderid;
	private int hid;
	private String hotelName;
	private int uid;
	private double price;
	private String travelTime;
	private String orderTime;
	private String room;
	private String days;
	private String orderState;
	private String name;
	private String phone;
	private String hotelAddress;
	
	
	public HotelOrder() {
		super();
	}

	public HotelOrder(int horderid, int hid, String hotelName, int uid, double price, String travelTime,
			String orderTime, String room, String days, String orderState,String name,String phone,String hotelAddress) {
		super();
		this.horderid = horderid;
		this.hid = hid;
		this.hotelName = hotelName;
		this.uid = uid;
		this.price = price;
		this.travelTime = travelTime;
		this.orderTime = orderTime;
		this.room = room;
		this.days = days;
		this.orderState = orderState;
		this.name = name;
		this.phone = phone;
		this.hotelAddress = hotelAddress;
	}

	public int getHorderid() {
		return horderid;
	}

	public void setHorderid(int horderid) {
		this.horderid = horderid;
	}

	public int getHid() {
		return hid;
	}

	public void setHid(int hid) {
		this.hid = hid;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getTravelTime() {
		return travelTime;
	}

	public void setTravelTime(String travelTime) {
		this.travelTime = travelTime;
	}

	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getDays() {
		return days;
	}

	public void setDays(String days) {
		this.days = days;
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

	public String getHotelAddress() {
		return hotelAddress;
	}

	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
	}
	
	
}
