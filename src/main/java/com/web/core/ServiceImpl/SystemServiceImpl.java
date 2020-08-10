package com.web.core.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.core.Entity.DatagridPage;
import com.web.core.Entity.DiaryCheck;
import com.web.core.Entity.Hotel;
import com.web.core.Entity.HotelOrder;
import com.web.core.Entity.Order;
import com.web.core.Entity.Project;
import com.web.core.Mapper.SystemMapper;
import com.web.core.Service.SystemService;

@Service
public class SystemServiceImpl implements SystemService {

	@Autowired
	private SystemMapper systemMapper;
	
	//分页查询旅游项目
	@Override
	public DatagridPage showProject(@RequestParam(defaultValue = "1")int pageNumber,@RequestParam(defaultValue = "2")int pageSize) {
		// TODO Auto-generated method stub
		DatagridPage datagridPage = new DatagridPage();
		datagridPage.setRows(systemMapper.selectProjectByPage(pageSize*(pageNumber-1), pageSize));
		datagridPage.setTotal(systemMapper.selectProjectCount());
		return datagridPage;
	}

	//修改旅游项目
	@Override
	public int updateProject(Project project) {
		// TODO Auto-generated method stub
		return systemMapper.updateProject(project);
	}

	//删除旅游项目
	@Override
	public int deleteProject(int pid) {
		// TODO Auto-generated method stub
		return systemMapper.deleteProject(pid);
	}

	//添加旅游项目
	@Override
	public int addProject(String pname,String pdescribe,String pcontent,String pbegin,String pend,
			String province,double pcost,String pimage) {
		// TODO Auto-generated method stub
		return systemMapper.addProject(pname, pdescribe, pcontent, pbegin, pend, province, pcost, pimage);
	}
	
/* ======================================================================= */

	//分页查询旅游游记
	@Override
	public DatagridPage showDiary(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		DatagridPage datagridPage = new DatagridPage();
		datagridPage.setRows(systemMapper.selectDiaryByPage(pageSize*(pageNumber-1), pageSize));
		datagridPage.setTotal(systemMapper.selectDiaryCount());
		return datagridPage;
	}

	//删除旅游游记
	@Override
	public int deleteDiary(int did) {
		// TODO Auto-generated method stub
		return systemMapper.deleteDiary(did);
	}
	
/* ======================================================================= */
	
	//分页查询留言
	@Override
	public DatagridPage showMessage(int pageNumber, int pageSize) {
		DatagridPage datagridPage = new DatagridPage();
		datagridPage.setRows(systemMapper.selectMessageByPage(pageSize*(pageNumber-1), pageSize));
		datagridPage.setTotal(systemMapper.selectMessageCount());
		return datagridPage;
	}

	//删除留言
	@Override
	public int deleteMessage(int messageid) {
		return systemMapper.deleteMessage(messageid);
	}

/* ======================================================================= */
	//分页查询线路需求
	@Override
	public DatagridPage showRequirement(int pageNumber, int pageSize) {
		DatagridPage datagridPage = new DatagridPage();
		datagridPage.setRows(systemMapper.selectRequirementByPage(pageSize*(pageNumber-1), pageSize));
		datagridPage.setTotal(systemMapper.selectRequirementCount());
		return datagridPage;
	}

	//删除需求
	@Override
	public int deleteRequirement(int requireid) {
		return systemMapper.deleteRequirement(requireid);
	}

/* ======================================================================= */	

	//分页查询审核游记
	@Override
	public DatagridPage showCheckDiary(int pageNumber, int pageSize) {
		DatagridPage datagridPage = new DatagridPage();
		datagridPage.setRows(systemMapper.selectCheckDiaryByPage(pageSize*(pageNumber-1), pageSize));
		datagridPage.setTotal(systemMapper.selectCheckDiaryCount());
		return datagridPage;
	}

	//删除审核游记
	@Override
	public int deleteCheckDiary(int c_did) {
		return systemMapper.deleteCheckDiary(c_did);
	}

	//修改审核游记状态
	@Override
	public int alterCheckDiary(DiaryCheck diaryCheck) {
		return systemMapper.alterCheckDiary(diaryCheck);
	}

/* ======================================================================= */	
	
	//分页查询旅游项目订单
	@Override
	public DatagridPage showProjectOrder(int pageNumber, int pageSize) {
		DatagridPage datagridPage = new DatagridPage();
		datagridPage.setRows(systemMapper.showProjectOrderByPage(pageSize*(pageNumber-1), pageSize));
		datagridPage.setTotal(systemMapper.selectProjectOrderCount());
		return datagridPage;
	}

	//修改旅游订单状态
	@Override
	public int alterProjectOrder(Order order) {
		return systemMapper.alterProjectOrder(order);
	}

/* ======================================================================= */	
	
	//分页查询酒店信息
	@Override
	public DatagridPage showHotel(int pageNumber, int pageSize) {
		DatagridPage datagridPage = new DatagridPage();
		datagridPage.setRows(systemMapper.selectHotelByPage(pageSize*(pageNumber-1), pageSize));
		datagridPage.setTotal(systemMapper.selectHotelCount());
		return datagridPage;
	}

	//添加酒店
	@Override
	public int AddHotel(String hotelName, String hotelAddress, String introduce, String room, String hotelImage,
			double price) {
		return systemMapper.AddHotel(hotelName, hotelAddress, introduce, room, hotelImage, price);
	}

	//修改酒店信息
	@Override
	public int UpdateHotel(Hotel hotel) {
		return systemMapper.UpdateHotel(hotel);
	}

	//删除酒店
	@Override
	public int DeleteHotel(int hid) {
		return systemMapper.DeleteHotel(hid);
	}

/* ======================================================================= */		

	//分页查询酒店订单
	@Override
	public DatagridPage showHotelOrder(int pageNumber, int pageSize) {
		DatagridPage datagridPage = new DatagridPage();
		datagridPage.setRows(systemMapper.showHotelOrderByPage(pageSize*(pageNumber-1), pageSize));
		datagridPage.setTotal(systemMapper.selectHotelOrderCount());
		return datagridPage;
	}

	//修改酒店订单状态
	@Override
	public int alterHotelOrder(HotelOrder hotelOrder) {
		return systemMapper.alterHotelOrder(hotelOrder);
	}

	
	//分页查询用户信息
	@Override
	public DatagridPage showUserInfo(int pageNumber, int pageSize) {
		DatagridPage datagridPage = new DatagridPage();
		datagridPage.setRows(systemMapper.showUserInfoByPage(pageSize*(pageNumber-1), pageSize));
		datagridPage.setTotal(systemMapper.selectUserCount());
		return datagridPage;
	}

	//注销用户
	@Override
	public int DeleteUser(int uid) {
		return systemMapper.DeleteUser(uid);
	}

}
