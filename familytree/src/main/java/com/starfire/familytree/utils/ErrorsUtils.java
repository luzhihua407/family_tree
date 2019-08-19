package com.starfire.familytree.utils;

import java.util.List;

import org.springframework.validation.FieldError;

public class ErrorsUtils {

	public static String[] convert(List<FieldError> errors) {
		String[] error=new String[errors.size()];
		int i=0;
		for (FieldError fieldError : errors) {
			String field = fieldError.getField();
			String defaultMessage = fieldError.getDefaultMessage();
			error[i++]=field+defaultMessage;
		}
		return error;
	}
}
