package com.kh.spring.menu.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.spring.menu.model.service.MenuService;
import com.kh.spring.menu.model.vo.Menu;

@Controller
public class MenuController {
	
	@Autowired
	private MenuService menuService;
		
	@RequestMapping("rank.bo")
	public String menuList(Model model) {
		
	ArrayList<Menu> menu = menuService.menuList();	
	model.addAttribute("menu", menu);

	return "menu/menuListView";
	
	}
	
	@RequestMapping("menup.bo")
	public String menupList(Model model) {
	
	ArrayList<Menu> menu = menuService.menuList();

	model.addAttribute("menu", menu);

	return "menu/menupListView";
	
	}
	
	@RequestMapping("new.bo")
	public String newList(Model model) {
		
	ArrayList<Menu> menu = menuService.menuList();	
	model.addAttribute("menu", menu);

	return "menu/newListView";
	
	}
	
	@RequestMapping(value="recommend.bo", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody 
	public String recommend(Menu menu) {
		
		int result = menuService.recommend(menu);
		
		return null;
	}
	
	
	
}
