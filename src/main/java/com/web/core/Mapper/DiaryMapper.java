package com.web.core.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.core.Entity.Diary;

public interface DiaryMapper {

	//游记列表
	public List<Diary> listDiary();
	
	//游记详情
	public  Diary findDiaryByname(@Param("dname")String dname);
	
	
}
