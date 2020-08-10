package com.web.core.Service;

public interface OrderService {

	//购买旅游项目
	public int buyProject(int uid,int pid,double cost,String orderTime,String travelTime);
	
	//预订酒店
	public int bookHotel(int uid,int hid,String hotelName,double price,String travelTime,String orderTime
			,String room,String days);
	
}
