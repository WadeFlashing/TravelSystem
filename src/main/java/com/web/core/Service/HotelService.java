package com.web.core.Service;

import java.util.List;

import com.web.core.Entity.Hotel;

public interface HotelService {

	//酒店列表
	public List<Hotel> listHotel();
	
	//酒店详情页面
	public Hotel findHotelByName(String hotelName);
	
}
