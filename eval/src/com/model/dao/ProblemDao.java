package com.model.dao;

import java.util.List;

import com.model.entity.Problem;

public interface ProblemDao {

	//向数据库中增加评论
	public void insertProblem(Problem problem);
	
	//删除数据库中的评论问题
	public void deleteProblem(int pid);
	
	//修改数据库中得评论问题
	public void updateProblem(Problem problem);
	
	//查看数据库中得评论问题
	public List<Problem> selectProblem();
}