package com.web.core.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.core.Entity.Diary;
import com.web.core.Entity.DiaryCheck;
import com.web.core.Entity.Hotel;
import com.web.core.Entity.HotelOrder;
import com.web.core.Entity.Message;
import com.web.core.Entity.Order;
import com.web.core.Entity.Project;
import com.web.core.Entity.Requirement;
import com.web.core.Entity.User;

public interface SystemMapper {

	//分页查询旅游项目
	public List<Project> selectProjectByPage(@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	
	public int selectProjectCount();
	
	//修改旅游项目
	public  int updateProject(Project project);
			
	//删除旅游项目
	public int deleteProject(@Param("pid")int pid);
	
	//添加旅游项目
	public int addProject(@Param("pname")String pname,@Param("pdescribe")String pdescribe,@Param("pcontent")String pcontent,@Param("pbegin")String pbegin,
			@Param("pend")String pend,@Param("province")String province,@Param("pcost")double pcost,@Param("pimage")String pimage);
	
/* ======================================================================= */

	//分页查询旅游游记
	public List<Diary> selectDiaryByPage(@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	
	public int selectDiaryCount();
	
	//删除旅游游记
	public int deleteDiary(@Param("did") int did);
	
/* ======================================================================= */	
	
	//分页查询留言
	public List<Message> selectMessageByPage(@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
		
	public int selectMessageCount();
	
	//删除留言
	public int deleteMessage(@Param("messageid") int messageid);
	
/* ======================================================================= */	
	
	//分页查询线路需求
	public List<Requirement> selectRequirementByPage(@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	
	public int selectRequirementCount();
	
	//删除需求
	public int deleteRequirement(@Param("requireid") int requireid);
	
/* ======================================================================= */	
	
	//分页查询审核游记
	public List<Diary> selectCheckDiaryByPage(@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	
	public int selectCheckDiaryCount();
	
	//删除审核游记
	public int deleteCheckDiary(@Param("c_did") int c_did);
	
	//修改审核游记状态
	public int alterCheckDiary(DiaryCheck diaryCheck);
	
/* ======================================================================= */
	
	//分页查询旅游项目订单
	public List<Order> showProjectOrderByPage(@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	
	public int selectProjectOrderCount();
	
	//修改旅游订单状态
	public int alterProjectOrder(Order order);
	
/* ======================================================================= */
	
	//分页查询酒店信息
	public List<Hotel> selectHotelByPage(@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	
	public int selectHotelCount();
	
	//添加酒店
	public int AddHotel(@Param("hotelName")String hotelName,@Param("hotelAddress")String hotelAddress,@Param("introduce")String introduce,
			@Param("room")String room,@Param("hotelImage")String hotelImage,@Param("price")double price);
	
	//修改酒店信息
	public  int UpdateHotel(Hotel hotel);
	
	//删除酒店
	public int DeleteHotel(@Param("hid")int hid);

/* ======================================================================= */
	
	//分页查酒店订单
	public List<HotelOrder> showHotelOrderByPage(@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
		
	public int selectHotelOrderCount();
	
	//修改酒店订单状态
	public int alterHotelOrder(HotelOrder hotelOrder);
	
/* ======================================================================= */
	
	//分页查询用户信息
	public List<User> showUserInfoByPage(@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	
	public int selectUserCount();
	
	//注销用户
	public int DeleteUser(@Param("uid")int uid);
	
}
