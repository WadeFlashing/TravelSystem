package com.web.core.Mapper;

import org.apache.ibatis.annotations.Param;

public interface OrderMapper {

	//购买旅游项目
	public int buyProject(@Param("uid")int uid,@Param("pid")int pid,@Param("cost")double cost,
			@Param("orderTime")String orderTime,@Param("travelTime")String travelTime);
	
	//预订酒店
	public int bookHotel(@Param("uid")int uid,@Param("hid")int hid,@Param("hotelName")String hotelName,
			@Param("price")double price,@Param("travelTime")String travelTime,@Param("orderTime")String orderTime,@Param("room")String room,
			@Param("days")String days);
	
}
