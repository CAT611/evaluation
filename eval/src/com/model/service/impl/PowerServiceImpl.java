package com.model.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.dao.PowerDao;
import com.model.entity.Power;
import com.model.service.PowerService;

@Service
@Transactional
public class PowerServiceImpl implements PowerService {
	@Resource
	private PowerDao powerDao;
	
	//查询一级菜单
	@Override
	public List<Power> onelist(int sjid) {
		// TODO Auto-generated method stub
		return powerDao.onelist(sjid);
	}

}
