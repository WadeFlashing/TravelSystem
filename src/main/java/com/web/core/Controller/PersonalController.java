package com.web.core.Controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.core.Entity.Diary;
import com.web.core.Entity.HotelOrder;
import com.web.core.Entity.Order;
import com.web.core.Entity.User;
import com.web.core.Service.PersonalService;

@Controller
public class PersonalController {

	@Autowired
	private PersonalService personalService;
	
	//跳转个人主页
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	//个人主页，包括个人游记信息、个人信息、订单信息
	@RequestMapping("/homePage")
	public void  listMyDiary(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws ServletException, IOException{
		if(session.getAttribute("uid")==null) {
			response.sendRedirect("http://localhost:8080/TravelSystem/login");
		}else {
		List<User> us = personalService.ListInformation((int)session.getAttribute("uid"));
		List<Order> order = personalService.ListTravelOrder((int)session.getAttribute("uid"));
		List<HotelOrder> hotelOrder = personalService.ListHotelOrder((int)session.getAttribute("uid"));
		List<Diary>  rs = personalService.listMyDiary((int)session.getAttribute("uid"));
		if(rs.isEmpty() && personalService.countDiary((int)session.getAttribute("uid"))==0 && personalService.countDisableDiary((int)session.getAttribute("uid"))==0) {
			request.setAttribute("diaryMessage", "你还没有发表游记，快去发表吧！");
			request.setAttribute("user",us);
			request.setAttribute("order",order);
			request.setAttribute("hotelOrder",hotelOrder);
		}else {
		request.setAttribute("list",rs);
		request.setAttribute("user",us);
		request.setAttribute("order",order);
		request.setAttribute("hotelOrder",hotelOrder);
		}
		if(personalService.countDiary((int)session.getAttribute("uid"))!=0 || personalService.countDisableDiary((int)session.getAttribute("uid"))!=0) {
			request.setAttribute("countDiary","你有 "+personalService.countDiary((int)session.getAttribute("uid"))+" 篇游记待审核，"
					+personalService.countDisableDiary((int)session.getAttribute("uid"))+" 篇游记审核不通过");
		}
		request.getRequestDispatcher("home").forward(request, response);
		}
		
	}
	
/* ======================================================================= */
	
	//重置密码
	@RequestMapping("/resetPassword")
	@ResponseBody
	public int resetPassword(int uid,String oldpassword,String newpassword,String secondpassword,HttpServletRequest request) {
		int index = personalService.resetPassword(uid,oldpassword, newpassword, secondpassword);
		return index;
	}
	
/* ======================================================================= */	

	//发表游记到后台审核
	@RequestMapping("/addDiaryCheck")
	public String AddDiaryCheck(@RequestParam("dname")String c_dname,@RequestParam("dcontent")String c_dcontent,String c_dimage,
			@RequestParam("filename")MultipartFile[] filename,HttpServletRequest request,HttpServletResponse response,HttpSession session,RedirectAttributes attribute) throws IOException {
		Date time = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String c_diarytime = df.format(time);
		int c_uid = (int) session.getAttribute("uid");
		
		if(filename!=null && filename.length>0) {
			StringBuilder imagePath = new StringBuilder();
			//循环获取file数组中的文件  
			for(int i = 0, length=filename.length ;i<length; i++) {
				MultipartFile file = filename[i];
			//获取存取路径
			String road = request.getServletContext().getRealPath("/upload/");
			String[] arry = road.split("\\.");
			StringBuilder path = new StringBuilder(arry[0]);
			path.append("TravelSystem\\src\\main\\webapp\\upload");
	//		String path = "D:\\eclipse-workspace\\TravelSystem\\src\\main\\webapp\\images";
	//		StringBuilder path = new StringBuilder(System.getProperty("user.dir"));
	//		path.append("\\src\\main\\webapp\\upload\\");
			System.out.println("path= "+path);
			String dimage = file.getOriginalFilename();
			System.out.println(dimage);
			File filepath = new File(path.toString(), dimage);
			if(!filepath.getParentFile().exists()) {
				filepath.getParentFile().mkdirs();
			}
			try {
				// 转存文件  
				file.transferTo(new File(path+File.separator+ dimage));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			imagePath.append("upload/");
			imagePath.append(dimage);
			imagePath.append(",");
			
		}
			//删除掉图片路径最后的一个逗号
			imagePath.deleteCharAt(imagePath.length()-1);
			System.out.println(imagePath.toString());
			personalService.AddDiaryCheck(c_dname, c_dcontent.toString(), imagePath.toString(), c_diarytime, c_uid);
			attribute.addFlashAttribute("msg1", "发表成功！请等待审核");
			return "redirect:/homePage";
		 }else {
			attribute.addFlashAttribute("msg2", "发表失败！");
			return "redirect:/homePage";
		    }
		
	}
	
	/**
	 * 上传文件大小异常捕获
	 * springmvc-config.xml配置了 <property name="resolveLazily" value="true" />
	 * 才有效
	 * @param ex
	 */
	@ExceptionHandler
    public void doExcepiton(Exception ex){
        if(ex instanceof MaxUploadSizeExceededException){
            System.out.println("图片文件太大");
        }
    }
	

/* ======================================================================= */
	//修改个人信息
	@RequestMapping("/updatePersonal")
	@ResponseBody
	public int updatePersonal(int uid,String name, String sex, String phone, String address, String signature) {
		int index = personalService.updatePersonal(uid,name, sex, phone, address, signature);
		return index;
	}
	
	
}
