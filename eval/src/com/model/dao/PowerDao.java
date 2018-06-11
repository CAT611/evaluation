package com.model.dao;

import java.util.List;

import com.model.entity.Power;

public interface PowerDao {
    int deleteByPrimaryKey(Integer pid);

    int insert(Power record);

    int insertSelective(Power record);

    Power selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Power record);

    int updateByPrimaryKey(Power record);
    
    public List<Power> onelist(int sjid);
}