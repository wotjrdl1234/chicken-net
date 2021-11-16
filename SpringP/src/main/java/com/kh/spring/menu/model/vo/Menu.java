package com.kh.spring.menu.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Menu {
	
	private String chicken;	
	private String brand;
	private String price;	
	private int point;
		
}
