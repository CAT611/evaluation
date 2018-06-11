package com.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.entity.Power;
import com.model.service.PowerService;

@Controller
public class PowerController {
	@Resource
	private PowerService powerService;
	
	@RequestMapping(value="one",method=RequestMethod.POST)
	public String one(HttpServletRequest request){
		List<Power> list = powerService.onelist(0);
		request.setAttribute("list", list);
		return "index.jsp";
	}
}
