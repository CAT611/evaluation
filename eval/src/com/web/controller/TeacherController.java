package com.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.dao.StuDao;
import com.model.dao.TeacherDao;
import com.model.entity.Stu;
import com.model.entity.Teacher;

@Controller
public class TeacherController {
	
	@Resource
	private TeacherDao teacherDao;
	
	@Resource
	private StuDao	stuDao;
	
	@RequestMapping(value="getPerson",method=RequestMethod.POST)
	public String getPerson(HttpServletRequest request,String shenfen,Stu stu,Teacher teacher){
		HttpSession session = request.getSession();
		 if("1".equals(shenfen)){
			 stu=(Stu)session.getAttribute("stuLogin");
			 Stu sperson = stuDao.getStu(stu.getSid());
			 request.setAttribute("sperson", sperson);
			 
		 }else if("2".equals(shenfen)){
			 teacher=(Teacher)session.getAttribute("teacherLogin");
			 Teacher tperson = teacherDao.getTeacher(teacher.getTid());
			 request.setAttribute("tperson", tperson);
		 }
		return "login.do";
	}
}
