package com.kh.spring.menu.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.menu.model.dao.MenuDao;
import com.kh.spring.menu.model.vo.Menu;

@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MenuDao menuDao;
		
	@Override
	public ArrayList<Menu> menuList() {
		return menuDao.menuList(sqlSession);
	}
	
	@Override
	public ArrayList<Menu> menupList() {
		return menuDao.menuList(sqlSession);
	}
	
	@Override
	public ArrayList<Menu> newList() {
		return menuDao.menuList(sqlSession);
	}

	@Override
	public int recommend(Menu menu) {
		return menuDao.recommend(sqlSession, menu);
	}
	
}
