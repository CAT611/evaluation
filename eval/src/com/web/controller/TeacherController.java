package com.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.dao.TeacherDao;
import com.model.entity.Teacher;

@Controller
public class TeacherController {
	
	@Resource
	private TeacherDao teacherDao;
	
	@RequestMapping(value="getlist",method=RequestMethod.POST)
	public String getlist(HttpServletRequest httpServletRequest){
		System.out.println("111111");
		List<Teacher> getlist = teacherDao.getlist();
		httpServletRequest.setAttribute("getlist", getlist);
		return "login.do";
	}
}
