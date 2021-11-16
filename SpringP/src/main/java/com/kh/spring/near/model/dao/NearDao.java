package com.kh.spring.near.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.near.model.vo.Near;

@Repository
public class NearDao {
			
	public ArrayList<Near> nearList(SqlSessionTemplate sqlSession, Near near) {
		
		return (ArrayList)sqlSession.selectList("nearMapper.nearList", near);
	}
}
