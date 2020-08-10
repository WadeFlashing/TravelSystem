package com.web.core.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.core.Entity.Administrator;
import com.web.core.Service.AdministratorService;

@Controller
public class AdministratorController {

	@Autowired
	private  AdministratorService administratorService;
	
	@RequestMapping("/adminLogin")
	@ResponseBody
	public String findAdmin(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		session.setAttribute("user", account);
		Administrator administrator = administratorService.findAdmin(account, password);
		if(administrator!=null) {
			return "1";
		}else {
			return "0";
		}
						
	}
	
}
