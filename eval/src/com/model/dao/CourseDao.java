package com.model.dao;

import java.util.List;

import com.model.entity.Course;

public interface CourseDao {

	//向数据库中增加课程
	public int insertCourse(Course course);
	
	//删除课程信息
	public int deleteCourse(int cid);
	
	//查看数据库中课程信息
	public List<Course> getCourse();
	
	
}