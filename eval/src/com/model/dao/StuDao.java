package com.model.dao;

import java.util.List;

import com.model.entity.Stu;

public interface StuDao {
	
    //学生登录，手机号+密码
    public Stu stuLogin(String userName,String pwd);
    
    //查询学生个人信息
    public Stu getStu();
    
    //修改学生个人信息
    public void  updateStu();
    
    //查询suoyou
    public List<Stu> stus();
    
    //
    
}