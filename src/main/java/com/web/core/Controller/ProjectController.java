package com.web.core.Controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.core.Entity.Project;
import com.web.core.Service.ProjectService;

@Controller
public class ProjectController {

	@Autowired
	private ProjectService projectService;
	
	
	//跳转旅游项目详情页面
		@RequestMapping("/ProjectView")
		public String ProjectView() {
			return "ProjectView";
		}
		
	//跳转搜索旅游项目页面
		@RequestMapping("/SearchProjectView")
		public String SearchProjectView() {
			return "SearchProjectView";
		}		
	
		
	//旅游项目详情
	@RequestMapping("/findProject")
	public void findProject(String projectname,HttpServletRequest request,HttpServletResponse response) throws IOException {
		projectname = request.getParameter("projectname");
		Project project = projectService.findProject(projectname);
		if(project!=null) {			
			List<Project> list = new ArrayList<>();
			list.add(project);					
			request.setAttribute("project", list);
			//将旅游项目的pid、cost参数传给订单
			request.setAttribute("pid", list.get(0).getPid());
			request.setAttribute("cost", list.get(0).getPcost());
		}else {
			response.sendRedirect("/listProject");
		}
		try {
			request.getRequestDispatcher("ProjectView").forward(request, response);
		} catch (ServletException e) {			
			e.printStackTrace();
		}
	}
	
	//列出旅游项目
	@RequestMapping("/listProject")
	public void listProject(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		List<Project>  rs = projectService.listProject();
		if(rs.size()>0) {
			request.setAttribute("list",rs);
			
		}else {
			response.sendRedirect("index");
		}
		try {
			request.getRequestDispatcher("destination").forward(request, response);
		} catch (ServletException | IOException e) {			
			e.printStackTrace();
		}		
	}
	
	//搜索旅游项目
	@RequestMapping("/SearchProject")
	 public void searchProjectByProvince(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		 
		 String scope = request.getParameter("scope");
		 String province = request.getParameter("province");
		 String placename = request.getParameter("placename");
		 if(scope.equals("place")) {
			 List<Project>  rs = projectService.searchProjectByProvince(province);
			 request.setAttribute("search",rs);
			 request.getRequestDispatcher("SearchProjectView").forward(request, response);
			 
		 }else if(scope.equals("country") && projectService.searchProjectByName(placename)!=null) {
			 List<Project>  rs = projectService.searchProjectByName(placename);
			 request.setAttribute("search",rs);
			 request.getRequestDispatcher("SearchProjectView").forward(request, response);
		 }else {
			 response.sendRedirect("listProject");
		}
		 
	 }
	
}
