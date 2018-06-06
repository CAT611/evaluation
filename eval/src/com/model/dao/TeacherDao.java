package com.model.dao;

import java.util.List;

import com.model.entity.Teacher;

public interface TeacherDao {
	
	//教师登陆
	public Teacher teacherLogin(String userName,String pwd);
	
	//管理员登录
	public Teacher adminLogin(String userName,String pwd);
	
	//教师查看个人信息
	public Teacher getTeacher();
	
	//教师修改个人信息
	public void updateTeacher();
	
	//查询所有
	public List<Teacher> getlist();
}