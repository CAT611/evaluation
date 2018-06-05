package com.model.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.dao.StuDao;
import com.model.dao.TeacherDao;
import com.model.entity.Stu;
import com.model.entity.Teacher;
import com.model.service.LoginService;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {
	
	@Resource
	private StuDao stuDao; 
	
	@Resource
	private TeacherDao teacherDao;
	
	@RequestMapping
	@Override
	public Stu stuLogin(String userName,String pwd) {
		// TODO Auto-generated method stub
		return stuDao.stuLogin(userName,pwd);
	}


	@Override
	public Teacher teacherLogin(String userName,String pwd) {
		// TODO Auto-generated method stub
		return teacherDao.teacherLogin(userName,pwd);
	}


	@Override
	public Teacher adminLogin(String userName,String pwd) {
		// TODO Auto-generated method stub
		return teacherDao.adminLogin(userName,pwd);
	}
	
	
	

}
