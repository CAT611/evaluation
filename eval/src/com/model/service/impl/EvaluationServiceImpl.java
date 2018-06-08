package com.model.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.dao.ProblemDao;
import com.model.dao.StuteaDao;
import com.model.entity.Problem;
import com.model.entity.Stutea;
import com.model.service.EvaluationService;

@Service
@Transactional
public class EvaluationServiceImpl implements EvaluationService {
	
	@Resource
	private ProblemDao problemDao;
	
	@Resource
	private StuteaDao stuteaDao;
	
	//查看数据库中得评论问题
	@Override
	public List<Problem> selectProblem() {
		// TODO Auto-generated method stub
		return problemDao.selectProblem();
	}

	@Override
	public List<Stutea> selectTeacher(int sid) {
		// TODO Auto-generated method stub
		return stuteaDao.selectTeacher(sid);
	}

}
