package com.model.dao;

import com.model.entity.Answer;

public interface AnswerDao {
	
	
	//向数据库中插入评论结果
	public int insertAnswer(Answer answer);
	
	//查询数据库中所有评论结果
	public Answer getListAnswer();
	
	//删除数据库中的评论结果
	public void deleteAnswer(int aid);

}