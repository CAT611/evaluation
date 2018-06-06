package com.model.service;

import java.util.List;

import com.model.entity.Problem;

public interface EvaluationService {

	//查看数据库中得评论问题
	public List<Problem> selectProblem();
}
