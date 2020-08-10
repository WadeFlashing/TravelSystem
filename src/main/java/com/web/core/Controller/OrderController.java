package com.web.core.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.core.Service.OrderService;

@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	//购买旅游项目
	@RequestMapping("/buyProject")
	@ResponseBody
	public int buyProject(int uid, int pid, double cost, String travelTime) {
		Date time = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String orderTime = df.format(time);
		int index = orderService.buyProject(uid, pid, cost, orderTime, travelTime);
		return index;
	}
	
	//预订酒店
	@RequestMapping("/bookHotel")
	@ResponseBody
	public int bookHotel(int uid, int hid, double price, String travelTime,String room, String days,HttpSession session) {
		Date time = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String orderTime = df.format(time);
		String hotelName = (String) session.getAttribute("hname");
		int index = orderService.bookHotel(uid, hid, hotelName, price, travelTime, orderTime, room, days);
		return index;
	}
	
}
