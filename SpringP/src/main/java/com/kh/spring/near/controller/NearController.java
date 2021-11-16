package com.kh.spring.near.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.spring.menu.model.vo.Menu;
import com.kh.spring.near.model.service.NearService;
import com.kh.spring.near.model.vo.Near;



@Controller
public class NearController {
	
	@Autowired
	private NearService nearService;
		
	@RequestMapping("near.bo")
	public String nearList(Model model, Near near) {
	
	if(near == null || "".equals(near.getCBrand())) {
		near.setCBrand("BHC");
	}
		
	ArrayList<Near> nearList = nearService.nearList(near);	
	model.addAttribute("near", nearList);
	
	return "near/nearListView";
	
	}
	
	@RequestMapping(value="nearChange.bo", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public Map<String, Object> nearChange(Near near) {

		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("near", nearService.nearList(near));
		
		return map;
	}
	
}
