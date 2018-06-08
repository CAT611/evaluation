package com.model.service;

import java.util.List;

import com.model.entity.Problem;
import com.model.entity.Stutea;

public interface EvaluationService {

	//查看数据库中得评论问题
	public List<Problem> selectProblem();
	
	//根据学生userName查询学生所对应的老师 
	public List<Stutea> selectTeacher(int sid);

}
