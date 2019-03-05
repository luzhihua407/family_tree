package com.starfire.familytree.utils;

import java.util.List;

import org.springframework.validation.FieldError;

public class FieldErrorUtils {

	public static String toString(List<FieldError> list) {
		StringBuffer sb=new StringBuffer();
		for (FieldError fieldError : list) {
			String field = fieldError.getField();
			String defaultMessage = fieldError.getDefaultMessage();
			sb.append(field).append(defaultMessage).append(";");
		}
		return sb.toString();
		
	}
}
