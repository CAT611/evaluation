package com.model.service;

import com.model.entity.Stu;
import com.model.entity.Teacher;

public interface LoginService {

	
	//学生登录，手机号+密码
    public Stu stuLogin(String userName,String pwd);
    
    //管理员登陆,权限为3的为管理员
  	public Teacher adminLogin(String userName,String pwd);
  	
    //教师登录，权限为2的为教师
    public Teacher teacherLogin(String userName,String pwd);
}
