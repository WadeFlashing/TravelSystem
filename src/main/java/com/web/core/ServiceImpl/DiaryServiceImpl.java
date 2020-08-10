package com.web.core.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.core.Entity.Diary;
import com.web.core.Mapper.DiaryMapper;
import com.web.core.Service.DiaryService;

@Service
public class DiaryServiceImpl implements DiaryService {

	@Autowired
	private DiaryMapper diaryMapper;
	
	@Override
	public List<Diary> listDiary() {
		return diaryMapper.listDiary();
	}

	@Override
	public Diary findDiaryByname(String dname) {
		return diaryMapper.findDiaryByname(dname);
	}


}
