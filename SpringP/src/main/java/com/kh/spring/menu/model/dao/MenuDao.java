package com.kh.spring.menu.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.board.model.vo.Board;
import com.kh.spring.menu.model.vo.Menu;

@Repository
public class MenuDao {
	
		
	public ArrayList<Menu> menuList(SqlSessionTemplate sqlSession) {		
		return (ArrayList)sqlSession.selectList("menuMapper.menuList");
	}
	
	public ArrayList<Menu> menupList(SqlSessionTemplate sqlSession) {		
		return (ArrayList)sqlSession.selectList("menuMapper.menuList");
	}
	
	public ArrayList<Menu> newList(SqlSessionTemplate sqlSession) {		
		return (ArrayList)sqlSession.selectList("menuMapper.menuList");
	}
	
	public int recommend(SqlSessionTemplate sqlSession, Menu menu) {
		return sqlSession.update("menuMapper.recommend", menu);
	}
}
