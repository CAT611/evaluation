package com.model.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.dao.TeacherDao;
import com.model.entity.Teacher;
import com.model.service.TeacherService;
@Service
@Transactional
public class TeacherServiceImpl implements TeacherService {
	@Resource
	private TeacherDao teacherDao;
	
	@Override
	public List<Teacher> getlist() {
		// TODO Auto-generated method stub
		return teacherDao.getlist();
	}

	@Override
	public Teacher getTeacher(int id) {
		// TODO Auto-generated method stub
		return teacherDao.getTeacher(id);
	}

}
