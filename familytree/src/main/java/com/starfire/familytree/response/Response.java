package com.starfire.familytree.response;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;

@Data
@AllArgsConstructor(staticName = "of")
public class Response<T> implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int code = 200;
	
	private boolean success = true;

	@NonNull
	private String msg;

	private T data;

	public static Response<String> failure(int code, String msg) {
		Response<String> response = Response.of(100,false, msg, null);
		return response;

	}
	
	public static Response<String> success(String msg) {
		Response<String> response = Response.of(200,true, msg, null);
		return response;
		
	}
	public static Response<Object> success(Object data) {
		Response<Object> response = Response.of(200,true, "成功", data);
		return response;
		
	}
	

}
