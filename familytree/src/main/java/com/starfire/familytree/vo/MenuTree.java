package com.starfire.familytree.vo;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class MenuTree {

	private String title;
	private String  value;
	private String  key;
	private List<MenuTree> children=new ArrayList<MenuTree>();
	public MenuTree(String title, String value, String key) {
		super();
		this.title = title;
		this.value = value;
		this.key = key;
	}
	
	
}
