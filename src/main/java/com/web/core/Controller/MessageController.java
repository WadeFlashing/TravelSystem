package com.web.core.Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.web.core.Service.DiaryService;
import com.web.core.Service.MessageService;

@Controller
public class MessageController {

	@Autowired
	private MessageService messageService;
	
	@Autowired
	private DiaryService diaryService;
	
	
	//发表留言
	@RequestMapping("/addMessage")
	public void AddMessage(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws ServletException, IOException {
		
		int did = Integer.parseInt(request.getParameter("did"));
		String mcontent = request.getParameter("mcontent");
		
		Date time = new Date();

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String mtime = df.format(time);
		System.out.println(did);
		System.out.println(mcontent);
		System.out.println(mtime);
		int i = messageService.AddMessage(did, mcontent, mtime);
		System.out.println(i);
		if(i==1) {
//			request.getRequestDispatcher("findDiary?dname="+session.getAttribute("dname")).forward(request, response);
			response.sendRedirect("/TravelSystem/MessageToDiaryView");
		}else {			
			response.sendRedirect("/TravelSystem/listDiary");
		}
		
	}
	
	@RequestMapping("/MessageToDiaryView")
	public void AddMessageToDiaryView(String dname,HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
				
		Diary diary = diaryService.findDiaryByname((String) session.getAttribute("dname"));
		List<Message> message = messageService.listMessageByDid(diary.getDid());
		request.setAttribute("message", message);
		
		if(diary!=null) {			
			List<Diary> list = new ArrayList<>();
			list.add(diary);					
			request.setAttribute("diary", list);
			
		}else {
			response.sendRedirect("/diaryPage");
		}
		try {
			request.getRequestDispatcher("diaryView").forward(request, response);
		} catch (ServletException e) {			
			e.printStackTrace();
		}
		
	}
	
}
