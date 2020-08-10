package com.web.core.Service;


import com.web.core.Entity.DatagridPage;
import com.web.core.Entity.DiaryCheck;
import com.web.core.Entity.Hotel;
import com.web.core.Entity.HotelOrder;
import com.web.core.Entity.Order;
import com.web.core.Entity.Project;

public interface SystemService {

	//分页查询旅游项目
	DatagridPage showProject(int pageNumber,int pageSize);
	
	//修改旅游项目
	public  int updateProject(Project project);
	
	//删除旅游项目
	public int deleteProject(int pid);
	
	//添加旅游项目
	public int addProject(String pname,String pdescribe,String pcontent,String pbegin,String pend,
			String province,double pcost,String pimage);
	
/* ======================================================================= */
	
	//分页查询旅游游记
	DatagridPage showDiary(int pageNumber,int pageSize);
	
	//删除旅游游记
	public int deleteDiary(int did);
	
/* ======================================================================= */	
	
	//分页查询留言
	DatagridPage showMessage(int pageNumber,int pageSize);
	
	//删除留言
	public int deleteMessage(int messageid);
	
/* ======================================================================= */	
	
	//分页查询线路需求
	DatagridPage showRequirement(int pageNumber,int pageSize);
	
	//删除需求
	public int deleteRequirement(int requireid);
	
/* ======================================================================= */	
	
	//分页查询旅游游记
	DatagridPage showCheckDiary(int pageNumber,int pageSize);
	
	//删除审核游记
	public int deleteCheckDiary(int c_did);
	
	//修改审核游记状态
	public int alterCheckDiary(DiaryCheck diaryCheck);
	
/* ======================================================================= */	
	
	//分页查询旅游项目订单
	DatagridPage showProjectOrder(int pageNumber,int pageSize);
	
	//修改旅游订单状态
	public int alterProjectOrder(Order order);
	
/* ======================================================================= */	
	
	//分页查询酒店信息
	DatagridPage showHotel(int pageNumber,int pageSize);
	
	//添加酒店
	public int AddHotel(String hotelName,String hotelAddress,String introduce,String room,String hotelImage,double price);
	
	//修改酒店信息
	public  int UpdateHotel(Hotel hotel);
	
	//删除酒店
	public int DeleteHotel(int hid);
	
/* ======================================================================= */	
	
	//分页查询酒店订单
	DatagridPage showHotelOrder(int pageNumber,int pageSize);
	
	//修改酒店订单状态
	public int alterHotelOrder(HotelOrder hotelOrder);
	
/* ======================================================================= */	
	
	//分页查询用户信息
	DatagridPage showUserInfo(int pageNumber,int pageSize);
	
	//注销用户
	public int DeleteUser(int uid);
	
}
