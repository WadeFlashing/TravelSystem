package com.web.core.Service;

import java.util.List;

import com.web.core.Entity.Diary;

public interface DiaryService {

	public List<Diary> listDiary();
	
	public  Diary findDiaryByname(String dname);
	
}
