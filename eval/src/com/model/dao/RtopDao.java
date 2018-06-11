package com.model.dao;

import com.model.entity.Rtop;

public interface RtopDao {
    int deleteByPrimaryKey(Integer rtopid);

    int insert(Rtop record);

    int insertSelective(Rtop record);

    Rtop selectByPrimaryKey(Integer rtopid);

    int updateByPrimaryKeySelective(Rtop record);

    int updateByPrimaryKey(Rtop record);
}