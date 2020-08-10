package com.web.core.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.core.Entity.Diary;
import com.web.core.Entity.HotelOrder;
import com.web.core.Entity.Order;
import com.web.core.Entity.User;
import com.web.core.Mapper.PersonalMapper;
import com.web.core.Service.PersonalService;

@Service
public class PersonalServiceImpl implements PersonalService {

	@Autowired
	private PersonalMapper personalMapper;
	
	//我的游记
	@Override
	public List<Diary> listMyDiary(int uid) {
		// TODO Auto-generated method stub
		return personalMapper.listMyDiary(uid);
	}

	//重置密码
	@Override
	public int resetPassword(int uid,String oldpassword, String newpassword, String secondpassword) {
		// TODO Auto-generated method stub
		return personalMapper.resetPassword(uid,oldpassword, newpassword, secondpassword);
	}


	//查看个人信息
	@Override
	public List<User> ListInformation(int uid) {
		// TODO Auto-generated method stub
		return personalMapper.ListInformation(uid);
	}
	
	//修改个人信息
	@Override
	public int updatePersonal(int uid,String name, String sex, String phone, String address, String signature) {
		// TODO Auto-generated method stub
		return personalMapper.updatePersonal(uid,name, sex, phone, address, signature);
	}

	//发表游记到后台审核
	@Override
	public int AddDiaryCheck(String c_dname, String c_dcontent, String c_dimage, String c_diarytime, int c_uid) {
		// TODO Auto-generated method stub
		return personalMapper.AddDiaryCheck(c_dname, c_dcontent, c_dimage, c_diarytime, c_uid);
	}

	//统计待审核的游记
	@Override
	public int countDiary(int c_uid) {
		return personalMapper.countDiary(c_uid);
	}
	
	//统计审核不通过的游记
	@Override
	public int countDisableDiary(int c_uid) {
		return personalMapper.countDisableDiary(c_uid);
	}

	//查看个人旅游订单
	@Override
	public List<Order> ListTravelOrder(int uid) {
		return personalMapper.ListTravelOrder(uid);
	}

	//查看个人酒店订单
	@Override
	public List<HotelOrder> ListHotelOrder(int uid) {
		return personalMapper.ListHotelOrder(uid);
	}


}
