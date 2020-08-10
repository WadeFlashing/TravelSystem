package com.web.core.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.core.Entity.Hotel;

public interface HotelMapper {

	//酒店列表
	public List<Hotel> listHotel();
	
	//酒店详情页面
	public Hotel findHotelByName(@Param("hotelName")String hotelName);
}
