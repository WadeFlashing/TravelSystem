package com.web.core.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.core.Entity.Requirement;
import com.web.core.Service.RequirementService;

@Controller
public class RequirementController {

	@Autowired
	private RequirementService requirementService;
	
	
	@RequestMapping("/listRequirement")
	public void listRequirement(HttpServletRequest request,HttpServletResponse response,RedirectAttributes attribute) throws ServletException, IOException {
		
		List<Requirement>  rs = requirementService.listRequirement();
		if(rs.size()>0) {
			request.setAttribute("list",rs);			
		}else {
			response.sendRedirect("contact");
		}
	}
	
	@RequestMapping("/AddRequirement")
	public String AddRequirement(HttpServletRequest request,HttpServletResponse response,HttpSession session,RedirectAttributes attribute) throws IOException {
		int uid = (int) session.getAttribute("uid");
		String requireplace = request.getParameter("requireplace");
		String scenicspot = request.getParameter("scenicspot");
		String requiredate = request.getParameter("requiredate");
		String requirements = request.getParameter("requirements");
		int i  = requirementService.AddRequirement(uid,requireplace, scenicspot, requiredate, requirements);
		if(i==1) {
			attribute.addFlashAttribute("msg", "提交旅游线路需求成功！请等待客服反馈....");
			return "redirect:/contact";			
		}else {			
			return "redirect:/contact";		
		}
		
	}
	
}
