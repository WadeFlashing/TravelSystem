package com.web.core.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.core.Entity.User;
import com.web.core.Service.UserService;


@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/login")
	public String login(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	@RequestMapping("/regist")
	public String regist() {
		return "regist";
	}
	
	
	@RequestMapping("/rute")
	public String rute() {
		return "rute";
	}
	
	//旅游项目页面
		@RequestMapping("/destination")
		public String Destination() {
			return "destination";
		}
	
		@RequestMapping("/pricing")
		public String pricing() {
			return "pricing";
		}
		
	//旅游线路需求页面
		@RequestMapping("/contact")
			public String contact() {
				return "contact";
			}

	@RequestMapping("/register")
	public String register(HttpServletRequest request,HttpSession session,RedirectAttributes attribute)  throws Exception{
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			List<User> list = userService.checkUsername(username);
			if(list.isEmpty()) {
			if(username!="" && password!="") {
				userService.addUser(username, password, name, phone);
				
				}		 				
			attribute.addFlashAttribute("msg", "注册成功！请登录");
			 return "redirect:/login";
			}
			if(list.size()>0) 
				
				attribute.addFlashAttribute("msg", "注册失败！用户已存在");
				 return "redirect:/regist";
			
		}
	
	@RequestMapping("/logincheck")
	public String logincheck(HttpServletRequest request,HttpServletResponse response,HttpSession session,RedirectAttributes attribute) throws Exception{
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			User user = userService.findUser(username, password);
			
			if(user!=null && user.getPassword().equals(password)) {
				
				session.setAttribute("username", user.getUsername());
				session.setAttribute("uid", user.getUid());
				return "redirect:/index";
			}else {
			//	request.setAttribute("msg", "账号或密码错误！");	
				attribute.addFlashAttribute("msg", "账号或密码错误！");
				return "redirect:/login";
				
			}	
		}
	
	
}
