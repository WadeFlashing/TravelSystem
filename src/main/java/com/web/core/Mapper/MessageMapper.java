package com.web.core.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.core.Entity.Message;

public interface MessageMapper {

	public int AddMessage(@Param("did")int did,@Param("mcontent")String mcontent,@Param("mtime")String mtime);
	
	public List<Message> listMessageByDid(@Param("did")int did);
	
}
