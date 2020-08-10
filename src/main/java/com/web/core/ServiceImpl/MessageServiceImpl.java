package com.web.core.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.core.Entity.Message;
import com.web.core.Mapper.MessageMapper;
import com.web.core.Service.MessageService;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	private MessageMapper messageMapper;
	
	@Override
	public int AddMessage(int did,String mcontent,String mtime) {
		// TODO Auto-generated method stub
		return messageMapper.AddMessage(did, mcontent, mtime);
	}

	@Override
	public List<Message> listMessageByDid(int did) {
		// TODO Auto-generated method stub
		return messageMapper.listMessageByDid(did);
	}

}
