package com.web.core.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.core.Entity.Tree_menu;

public interface Tree_menuMapper {

	public List<Tree_menu> selectAll();
	
	public List<Tree_menu> selectPid(@Param("pid")int pid);
	
}
