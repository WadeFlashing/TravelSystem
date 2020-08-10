package com.web.core.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.core.Entity.Hotel;
import com.web.core.Mapper.HotelMapper;
import com.web.core.Service.HotelService;

@Service
public class HotelServiceImpl implements HotelService {

	@Autowired
	private HotelMapper hotelMapper;
	
	//酒店列表
	@Override
	public List<Hotel> listHotel() {
		return hotelMapper.listHotel();
	}

	//酒店详情页面
	@Override
	public Hotel findHotelByName(String hotelName) {
		return hotelMapper.findHotelByName(hotelName);
	}

}
