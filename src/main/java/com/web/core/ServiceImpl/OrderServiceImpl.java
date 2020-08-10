package com.web.core.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.core.Mapper.OrderMapper;
import com.web.core.Service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper  orderMapper;
	
	//旅游项目订单
	@Override
	public int buyProject(int uid, int pid, double cost, String orderTime, String travelTime) {
		return orderMapper.buyProject(uid, pid, cost, orderTime, travelTime);
	}

	//预订酒店
	@Override
	public int bookHotel(int uid, int hid, String hotelName, double price, String travelTime, String orderTime,
			String room, String days) {
		return orderMapper.bookHotel(uid, hid, hotelName, price, travelTime, orderTime, room, days);
	}

}
