package com.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.entity.Problem;
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
	

}
