package com.model.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.dao.ProblemDao;
import com.model.entity.Problem;
import com.model.service.EvaluationService;

@Service
@Transactional
public class EvaluationServiceImpl implements EvaluationService {
	
	@Resource
	private ProblemDao problemDao;
	
	//查看数据库中得评论问题
	@Override
	public List<Problem> selectProblem() {
		// TODO Auto-generated method stub
		return problemDao.selectProblem();
	}

}
