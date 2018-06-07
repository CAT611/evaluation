package com.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.entity.Answer;
import com.model.entity.Problem;
import com.model.entity.Stu;
import com.model.service.EvaluationService;

@Controller
public class EvaluationController {
	
	@Resource
	private EvaluationService evaluationService;
	
	//查看所有的评价问题
	@RequestMapping(value="/getEvluation",method=RequestMethod.GET)
	public String getEvluation(HttpServletRequest request){
		List<Problem> list = evaluationService.selectProblem();
		request.setAttribute("list", list);
		return "evaluation.jsp";
		
	}
	
	//将学生评论保存到数据库中
	@RequestMapping(value="savaAnswer",method=RequestMethod.POST)
	public String savaAnswer(Answer answer,HttpServletRequest request){
		//获取session
		HttpSession session = request.getSession();
		session.setAttribute("stu", new Stu(123,"小白","123"));
		//获取用户名账号
		Stu stu = (Stu) session.getAttribute("stu");
		//获取学生的ID
		int sid = stu.getSid();
		//获取当前时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String atime = df.format(new Date());
		//获取评论的内容
		int ascore1 =Integer.parseInt((String) request.getParameter("panswer1"));
		int ascore2 =Integer.parseInt((String) request.getParameter("panswer2"));
		int ascore3 =Integer.parseInt((String) request.getParameter("panswer3"));
		int ascore4 =Integer.parseInt((String) request.getParameter("panswer4"));
		int ascore5 =Integer.parseInt((String) request.getParameter("panswer5"));
		int ascore6 =Integer.parseInt((String) request.getParameter("panswer6"));
		int ascore7 =Integer.parseInt((String) request.getParameter("panswer7"));
		int ascore8 =Integer.parseInt((String) request.getParameter("panswer8"));
		int ascore9 =Integer.parseInt((String) request.getParameter("panswer9"));
		int ascore10 =Integer.parseInt((String) request.getParameter("panswer10"));
		
		int ascore=ascore1+ascore2+ascore3+ascore4+ascore5+ascore6+ascore7+ascore8+ascore9+ascore10;
		//将查询到的结果放入数据库
		answer.setAscore(ascore);
		answer.setSid(sid);
		answer.setAtime(atime);
		answer.setAscore1(ascore1);
		answer.setAscore2(ascore2);
		answer.setAscore2(ascore3);
		answer.setAscore2(ascore4);
		answer.setAscore2(ascore5);
		answer.setAscore2(ascore6);
		answer.setAscore2(ascore7);
		answer.setAscore2(ascore8);
		answer.setAscore2(ascore9);
		answer.setAscore2(ascore10);
		System.out.println(answer.getSid());
		
		
		
		return "index.jsp";
	}
	

}
