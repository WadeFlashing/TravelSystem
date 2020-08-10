package com.web.core.Service;

import java.util.List;

import com.web.core.Entity.Message;

public interface MessageService {

	public int AddMessage(int did,String mcontent,String mtime);
	
	public List<Message> listMessageByDid(int did);
	
}
