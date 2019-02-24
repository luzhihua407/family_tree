package com.starfire.familytree.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.starfire.familytree.response.Response;

@ControllerAdvice
public class ExceptionController {

	@ExceptionHandler
	@ResponseBody
	public Response<String> handlerException(Exception e) {
		Response<String> response = Response.failure(100, e.getMessage());
		return response;
	}

}
