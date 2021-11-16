package com.kh.spring.near.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.near.model.dao.NearDao;
import com.kh.spring.near.model.vo.Near;

@Service
public class NearServiceImpl implements NearService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private NearDao nearDao;
		
	@Override
	public ArrayList<Near> nearList(Near near) {
		return nearDao.nearList(sqlSession, near);
	}
	
}
