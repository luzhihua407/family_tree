package com.starfire.familytree.vo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class RouteVO {

	private String id;
	private String icon;
	private String name;
	
	private String route;
	
	private String  menuParentId;
	private String     breadcrumbParentId;
}
