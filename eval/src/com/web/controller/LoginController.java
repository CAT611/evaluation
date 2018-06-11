package com.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.dao.TeacherDao;
import com.model.entity.Power;
import com.model.entity.Stu;
import com.model.entity.Teacher;
import com.model.service.LoginService;
import com.model.service.PowerService;

@Controller
public class LoginController {
	
	@Resource
	private LoginService loginService;
	@Resource
	private TeacherDao teacherDao;
	@Resource
	private PowerService powerService;
	
	@RequestMapping(value="login" ,method=RequestMethod.POST)
	public String login(String userName, String pwd,String shenfen,HttpServletRequest request){
		System.out.println(userName+"------"+pwd+"------"+shenfen);
		List<Power> onelist = powerService.onelist(0);
		for(Power p:onelist){
			System.out.println(p);
		}
		request.setAttribute("onelist", onelist);
		HttpSession session = request.getSession();
		//获取下拉列表框值
		if("1".equals(shenfen)){
			//学生登录
			Stu stuLogin = loginService.stuLogin(userName, pwd);
			session.setAttribute("stuLogin", stuLogin);
			if(stuLogin!=null){
				List<Teacher> getlist = teacherDao.getlist();	
				request.setAttribute("getlist", getlist);
				session.setAttribute("userName",userName);
				return "test";
			}
			return "login";
		}else if("2".equals(shenfen)){
			//老师登录
			Teacher teacherLogin = loginService.teacherLogin(userName, pwd);
			session.setAttribute("teacherLogin", teacherLogin);
			if(teacherLogin!=null){
				List<Teacher> getlist = teacherDao.getlist();
				request.setAttribute("getlist", getlist);
				session.setAttribute("userName",userName);
				return "index";
			}
			return "login";
		}
		return "login";
	}

}
