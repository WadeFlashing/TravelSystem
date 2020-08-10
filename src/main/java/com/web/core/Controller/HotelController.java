package com.web.core.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.core.Entity.Hotel;
import com.web.core.Service.HotelService;

@Controller
public class HotelController {

	@Autowired
	private HotelService hotelService;
	
	//跳转酒店列表页面
	@RequestMapping("/ListHotel")
	public String diaryPage() {
		return "ListHotel";
	}
	
	//跳转酒店详情页面
	@RequestMapping("/HotelView")
	public String HotelView() {
		return "hotel";
	}
	
	//列出所有酒店
	@RequestMapping("/ShowHotel")
	public void listHotel(HttpServletRequest request,HttpServletResponse response) throws IOException{
		List<Hotel>  hotel = hotelService.listHotel();
		if(hotel.size()>0) {
			request.setAttribute("hotel",hotel);
			
		}else {
			response.sendRedirect("index");
		}
		try {
			request.getRequestDispatcher("ListHotel").forward(request, response);
		} catch (ServletException | IOException e) {
			
			e.printStackTrace();
		}
	}
	
	//根据酒店名称查看详情
	@RequestMapping("/findHotelByName")
	public void findHotelByName(String hotelName,HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
		
		hotelName = request.getParameter("hotelName");
		Hotel hotel = hotelService.findHotelByName(hotelName);
		if(hotel!=null) {			
			List<Hotel> list = new ArrayList<>();
			list.add(hotel);					
			request.setAttribute("hotel", list);
			
			//将酒店的的hid、hotelAddress、room、price参数传给订单
			session.setAttribute("hname", hotelName);
			request.setAttribute("hid", list.get(0).getHid());
			request.setAttribute("room", list.get(0).getRoom());
			request.setAttribute("price", list.get(0).getPrice());
		}else {
			response.sendRedirect("/ShowHotel");
		}
		try {
			request.getRequestDispatcher("HotelView").forward(request, response);
		} catch (ServletException e) {			
			e.printStackTrace();
		}
		
	}
	
}
