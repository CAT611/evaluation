package com.model.service;

import java.util.List;

import com.model.entity.Teacher;

public interface TeacherService {

	// 查询所有
	public List<Teacher> getlist();

	// 教师查看个人信息
	public Teacher getTeacher(int id);
}
