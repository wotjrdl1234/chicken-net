package com.kh.spring.menu.model.service;

import java.util.ArrayList;

import com.kh.spring.board.model.vo.Board;
import com.kh.spring.menu.model.vo.Menu;

public interface MenuService {
	
	ArrayList<Menu> menuList();

	ArrayList<Menu> menupList();

	ArrayList<Menu> newList();
	
	int recommend(Menu menu);
	
	
}
