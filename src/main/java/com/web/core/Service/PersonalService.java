package com.web.core.Service;

import java.util.List;


import com.web.core.Entity.Diary;
import com.web.core.Entity.HotelOrder;
import com.web.core.Entity.Order;
import com.web.core.Entity.User;

public interface PersonalService {

	//我的游记
	public List<Diary> listMyDiary(int uid);
	
	//重置密码
	public int resetPassword(int uid,String oldpassword,String newpassword,String secondpassword);
	
	
	//查看个人信息
	public List<User> ListInformation(int uid);
	
	//修改个人信息
	public int updatePersonal(int uid,String name,String sex,String phone,String address,String signature);
	
	//发表游记到后台审核
	public int AddDiaryCheck(String c_dname,String c_dcontent,String c_dimage,String c_diarytime,int c_uid);
	
	//统计待审核的游记
	public int countDiary(int c_uid);
	
	//统计审核不通过的游记
	public int countDisableDiary(int c_uid);
	
	//查看个人旅游订单
	public  List<Order> ListTravelOrder(int uid);
	
	//查看个人酒店订单
	public  List<HotelOrder> ListHotelOrder(int uid);
	
}
