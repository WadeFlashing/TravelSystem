package com.web.core.Entity;

public class Hotel {

	private int hid;
	private String hotelName;
	private String hotelAddress;
	private String introduce;
	private String hotelImage;
	private String room;
	private double price;
	
	public Hotel() {
		super();
	}

	public Hotel(int hid, String hotelName, String hotelAddress, String room, double price,String introduce,String hotelImage) {
		super();
		this.hid = hid;
		this.hotelName = hotelName;
		this.hotelAddress = hotelAddress;
		this.room = room;
		this.price = price;
		this.introduce = introduce;
		this.hotelImage = hotelImage;
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

	public String getHotelAddress() {
		return hotelAddress;
	}

	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getHotelImage() {
		return hotelImage;
	}

	public void setHotelImage(String hotelImage) {
		this.hotelImage = hotelImage;
	}
	
	
}
