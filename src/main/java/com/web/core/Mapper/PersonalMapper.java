package com.web.core.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.core.Entity.Diary;
import com.web.core.Entity.HotelOrder;
import com.web.core.Entity.Order;
import com.web.core.Entity.User;

//个人主页
public interface PersonalMapper {
	
	//我的游记
	public List<Diary> listMyDiary(@Param("uid")int uid);
	
	//重置密码
	public int resetPassword(@Param("uid")int uid,@Param("oldpassword")String oldpassword,
			@Param("newpassword")String newpassword,@Param("secondpassword")String secondpassword);
	
	
	//查看个人信息
	public List<User> ListInformation(@Param("uid")int uid);
	
	//修改个人信息
	public int updatePersonal(@Param("uid")int uid,@Param("name")String name,@Param("sex")String sex,@Param("phone")String phone,
			@Param("address")String address,@Param("signature")String signature);
	
	//发表游记到后台审核
	public int AddDiaryCheck(@Param("c_dname")String c_dname,@Param("c_dcontent")String c_dcontent,
			@Param("c_dimage")String c_dimage,@Param("c_diarytime")String c_diarytime,@Param("c_uid")int c_uid);
	
	//统计待审核的游记
	public int countDiary(@Param("c_uid")int c_uid);
	
	//统计审核不通过的游记
	public int countDisableDiary(@Param("c_uid")int c_uid);
	
	//查看个人旅游订单
	public  List<Order> ListTravelOrder(@Param("uid")int uid);
	
	//查看个人酒店订单
	public  List<HotelOrder> ListHotelOrder(@Param("uid")int uid);
	
}
