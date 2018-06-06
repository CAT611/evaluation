package com.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.dao.TeacherDao;
import com.model.entity.Stu;
import com.model.entity.Teacher;
import com.model.service.LoginService;

@Controller
public class LoginController {
	
	@Resource
	private LoginService loginService;
	@Resource
	private TeacherDao teacherDao;
	
	@RequestMapping(value="login" ,method=RequestMethod.POST)
	public String login(String userName, String pwd,HttpServletRequest request){
		//管理员登陆
		Teacher adminLogin = loginService.adminLogin(userName, pwd);
		//学生登录
		Stu stuLogin = loginService.stuLogin(userName, pwd);
		//老师登录
		Teacher teacherLogin = loginService.teacherLogin(userName, pwd);
		List<Teacher> getlist = teacherDao.getlist();
		request.setAttribute("getlist", getlist);
		if(adminLogin!=null||stuLogin!=null||teacherLogin!=null){
			request.setAttribute("userName", userName);
			return "index.jsp";
		}
		return "login";
	}

}
