package com.web.core.Controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.web.core.Entity.DatagridPage;
import com.web.core.Entity.DiaryCheck;
import com.web.core.Entity.Hotel;
import com.web.core.Entity.HotelOrder;
import com.web.core.Entity.Order;
import com.web.core.Entity.Project;
import com.web.core.Service.SystemService;

@Controller
public class SystemController {

	@Autowired
	private SystemService systemService;
	
	//后台系统页面
	@RequestMapping("/main")
	public String main() {
		return "main";
	}		
	
	//添加旅游项目和酒店后的后台系统页面
	@RequestMapping("/mainAdd")
	public String mainAdd() {
		return "mainAdd";
	}
	
	//分页查询旅游项目
	@RequestMapping("system/showProject")
	@ResponseBody
	public DatagridPage showProject(@RequestParam(defaultValue = "1")int page,@RequestParam(defaultValue = "2")int rows) {
		return systemService.showProject(page,rows);
	}
	
	
	//修改旅游项目
	@RequestMapping("system/updateProject")
	@ResponseBody
	public int updateProject(Project project) {
		int index = systemService.updateProject(project);
		return index;
	}
	
	//删除旅游项目
	@RequestMapping("system/deleteProject")
	@ResponseBody
	public int deleteProject(int pid) {
		int index = systemService.deleteProject(pid);
		return index;
	}
	
	//添加旅游项目
	@RequestMapping("system/addProject")
	public String addProject(@RequestParam("pimage")MultipartFile[] filename,HttpServletRequest request) {
		String pname = request.getParameter("pname");
		String pdescribe = request.getParameter("pdescribe");
		String pcontent = request.getParameter("pcontent");
		String pbegin = request.getParameter("pbegin");
		String pend = request.getParameter("pend");
		String province = request.getParameter("province");
		double pcost = Double.parseDouble(request.getParameter("pcost"));
		if(filename!=null && filename.length>0) {
			StringBuilder imagePath = new StringBuilder();
			//循环获取file数组中的文件  
			for(int i = 0, length=filename.length ;i<length; i++) {
				MultipartFile file = filename[i];
			//获取存取路径
			String road = request.getServletContext().getRealPath("/images/");
			String[] arry = road.split("\\.");
			StringBuilder path = new StringBuilder(arry[0]);
			path.append("TravelSystem\\src\\main\\webapp\\images");
			String dimage = file.getOriginalFilename();
			File filepath = new File(path.toString(), dimage);
			if(!filepath.getParentFile().exists()) {
				filepath.getParentFile().mkdirs();
			}
			try {
				// 转存文件  
				file.transferTo(new File(path+File.separator+ dimage));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			imagePath.append("images/");
			imagePath.append(dimage);
			imagePath.append(",");
			
		}
			//删除掉图片路径最后的一个逗号
			imagePath.deleteCharAt(imagePath.length()-1);
			System.out.println(imagePath.toString());
			String pimage = imagePath.toString();
			systemService.addProject(pname, pdescribe, pcontent, pbegin, pend, province, pcost, pimage);
			return "redirect:/mainAdd";
		}else {
			return "redirect:/mainAdd";
		}
		
		
	}
	
/* ======================================================================= */
	
	//分页查询旅游游记
	@RequestMapping("system/showDiary")
	@ResponseBody
	public DatagridPage showDiary(int page, int rows) {
		return systemService.showDiary(page, rows);
	}
	
	//删除旅游游记
	@RequestMapping("system/deleteDiary")
	@ResponseBody
	public int deleteDiary(int did) {
		int index = systemService.deleteDiary(did);
		return index;
	}
	
/* ======================================================================= */
	
	//分页查询留言
	@RequestMapping("system/showMessage")
	@ResponseBody
	public DatagridPage showMessage(int page, int rows) {
		return systemService.showMessage(page, rows);
	}

	//删除留言
	@RequestMapping("system/deleteMessage")
	@ResponseBody
	public int deleteMessage(int messageid) {
		int index = systemService.deleteMessage(messageid);
		return index;
	}
	
/* ======================================================================= */	
	
	//分页查询线路需求
	@RequestMapping("system/showRequirement")
	@ResponseBody
	public DatagridPage showRequirement(int page, int rows) {
		return systemService.showRequirement(page, rows);
	}
	
	//删除需求
	@RequestMapping("system/deleteRequirement")
	@ResponseBody
	public int deleteRequirement(int requireid) {
		int index = systemService.deleteRequirement(requireid);
		return index;
	}
	
/* ======================================================================= */
	
	@RequestMapping("system/showCheckDiary")
	@ResponseBody
	//分页查询审核游记
	public DatagridPage showCheckDiary(int page, int rows) {
		return  systemService.showCheckDiary(page, rows);
	}
	
	@RequestMapping("system/deleteCheckDiary")
	@ResponseBody
	//删除审核游记
	public int deleteCheckDiary(int c_did) {
		int index = systemService.deleteCheckDiary(c_did);
		return index;
	}
	
	@RequestMapping("system/alterCheckDiary")
	@ResponseBody
	//修改审核游记状态
	public String alterCheckDiary(DiaryCheck diaryCheck) {
		int index = systemService.alterCheckDiary(diaryCheck);
		if(index > 0) {
			return "true";
		}else {
			return "false";
		}
	}
	
/* ======================================================================= */
	
	//分页查询旅游项目订单
	@RequestMapping("system/showProjectOrder")
	@ResponseBody
	public DatagridPage showProjectOrder(int page,int rows) {
		return systemService.showProjectOrder(page, rows);
	}
	
	//修改项目订单状态
	@RequestMapping("system/alterProjectOrder")
	@ResponseBody
	public String alterProjectOrder(Order order) {
		int index  = systemService.alterProjectOrder(order);
		if(index > 0) {
			return "true";
		}else {
			return "false";
		}
	}
	
/* ======================================================================= */
	
	//分页查询酒店信息
	@RequestMapping("system/showSystemHotel")
	@ResponseBody
	public DatagridPage showHotel(int page,int rows) {
		return systemService.showHotel(page, rows);
	}
	
	//添加酒店
	@RequestMapping("system/addHotel")
	public String AddHotel(@RequestParam("hotelImage")MultipartFile[] filename,HttpServletRequest request) {
		String hotelName = request.getParameter("hotelName");
		String hotelAddress = request.getParameter("hotelAddress");
		String introduce = request.getParameter("introduce");
		String room = request.getParameter("room");
		double price = Double.parseDouble(request.getParameter("price"));
		if(filename!=null && filename.length>0) {
			StringBuilder imagePath = new StringBuilder();
			//循环获取file数组中的文件  
			for(int i = 0, length=filename.length ;i<length; i++) {
				MultipartFile file = filename[i];
			//获取存取路径
			String road = request.getServletContext().getRealPath("/images/");
			String[] arry = road.split("\\.");
			StringBuilder path = new StringBuilder(arry[0]);
			path.append("TravelSystem\\src\\main\\webapp\\images");
			String dimage = file.getOriginalFilename();
			File filepath = new File(path.toString(), dimage);
			if(!filepath.getParentFile().exists()) {
				filepath.getParentFile().mkdirs();
			}
			try {
				// 转存文件  
				file.transferTo(new File(path+File.separator+ dimage));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			imagePath.append("images/");
			imagePath.append(dimage);
			imagePath.append(",");
			
		}
			//删除掉图片路径最后的一个逗号
			imagePath.deleteCharAt(imagePath.length()-1);
			System.out.println(imagePath.toString());
			String hotelImage = imagePath.toString();
			systemService.AddHotel(hotelName, hotelAddress, introduce, room, hotelImage, price);
			return "redirect:/mainAdd";
		}else {
			return "redirect:/mainAdd";
		}
	}
	
	//修改酒店信息
	@RequestMapping("system/updateHotel")
	@ResponseBody
	public int UpdateHotel(Hotel hotel) {
		int index = systemService.UpdateHotel(hotel);
		return index;
	}
	
	//删除酒店
	@RequestMapping("system/deleteHotel")
	@ResponseBody
	public int DeleteHotel(int hid) {
		int index = systemService.DeleteHotel(hid);
		return index;
	}
	
/* ======================================================================= */
	
	//分页查询酒店订单
	@RequestMapping("system/showHotelOrder")
	@ResponseBody
	public DatagridPage showHotelOrder(int page,int rows) {
		return systemService.showHotelOrder(page, rows);
	}
	
	//修改酒店订单状态
	@RequestMapping("system/alterHotelOrder")
	@ResponseBody
	public String alterHotelOrder(HotelOrder hotelOrder) {
		int index  = systemService.alterHotelOrder(hotelOrder);
		if(index > 0) {
			return "true";
		}else {
			return "false";
		}
	}
	
/* ======================================================================= */
	
	//分页查询用户信息
	@RequestMapping("system/showUserInfo")
	@ResponseBody
	public DatagridPage showUserInfo(int page,int rows) {
		return systemService.showUserInfo(page, rows);
	}
	
	//注销用户
	@RequestMapping("system/deleteUser")
	@ResponseBody
	public int DeleteUser(int uid) {
		int index = systemService.DeleteUser(uid);
		return index;
	}
	
}
