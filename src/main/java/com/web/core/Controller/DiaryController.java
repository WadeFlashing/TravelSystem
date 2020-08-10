package com.web.core.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.core.Entity.Diary;
import com.web.core.Entity.Message;
import com.web.core.Entity.User;
import com.web.core.Service.DiaryService;
import com.web.core.Service.MessageService;
import com.web.core.Service.PersonalService;

@Controller
public class DiaryController {

	@Autowired
	private DiaryService diaryService;
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private PersonalService personalService;
	
	//跳转旅游游记页面
	@RequestMapping("/diaryPage")
	public String diaryPage() {
		return "diaryPage";
	}
	
	//跳转旅游游记详情页面
		@RequestMapping("/diaryView")
		public String diaryView() {
			return "diaryView";
		}
		
	//跳转旅游游记详情页面
		@RequestMapping("/diaryViewBackup")
		public String diaryViewBackup() {
			return "diaryViewBackup";
		}
	
	//列出所有旅游游记
		@RequestMapping("/listDiary")
		public void listProject(HttpServletRequest request,HttpServletResponse response) throws IOException {
			
			List<Diary>  rs = diaryService.listDiary();
			if(rs.size()>0) {
				request.setAttribute("list",rs);
				
			}else {
				response.sendRedirect("index");
			}
			try {
				request.getRequestDispatcher("diaryPage").forward(request, response);
			} catch (ServletException | IOException e) {
				
				e.printStackTrace();
			}
			
		}
	
		//旅游游记详情
		@RequestMapping("/findDiary")
		public void findProject(String dname,HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException, ServletException {
			dname = request.getParameter("dname");
			Diary diary = diaryService.findDiaryByname(dname);
			//查出游记作者的ID
			List<Diary> list = new ArrayList<>();
			List<Message> message = messageService.listMessageByDid(diary.getDid());
			//查出作者信息
			List<User>  user = personalService.ListInformation(diary.getUid());
			if(diary.getDimage()==null) {
				list.add(diary);
				request.setAttribute("diary", list);
				request.setAttribute("message", message);
				request.setAttribute("user", user);
				request.setAttribute("name",user.get(0).getName());
				request.setAttribute("signature",user.get(0).getSignature());
				request.getRequestDispatcher("diaryViewBackup").forward(request, response);
			}else {
			session.setAttribute("did", diary.getDid());
			session.setAttribute("dname", diary.getDname());
			request.setAttribute("message", message);
			request.setAttribute("name",user.get(0).getName());
			request.setAttribute("signature",user.get(0).getSignature());
			if(diary!=null) {			
				list.add(diary);					
				request.setAttribute("diary", list);
			}
				request.getRequestDispatcher("diaryView").forward(request, response);
			}
	}
		
		
}
