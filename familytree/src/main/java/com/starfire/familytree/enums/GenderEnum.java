package com.starfire.familytree.enums;

public enum GenderEnum {

	男(1), 女(0);
	
	public Integer value;
	GenderEnum(Integer value) {
		this.value=value;
	}
}
