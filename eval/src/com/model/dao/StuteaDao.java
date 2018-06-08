package com.model.dao;

import java.util.List;

import com.model.entity.Stutea;

public interface StuteaDao {

	//根据学生userName查询学生所对应的老师 
	public List<Stutea> selectTeacher(int sid);


}