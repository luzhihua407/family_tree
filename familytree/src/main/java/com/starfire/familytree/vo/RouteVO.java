package com.starfire.familytree.vo;

import lombok.Data;

@Data
public class RouteVO {

	private String id;
	private String icon;
	private String name;
	
	private String route;
	
	private String  menuParentId;
	private String     breadcrumbParentId;
}
