package com.starfire.familytree.response;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor(staticName="build")
public class Response<T> implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int code = 200;

	@NonNull
	private String msg;

	private T data;

	public static Response<String> failure(int code, String msg) {
		Response<String> response = Response.of(100, msg, null);
		return response;

	}
	
	public static Response<String> success(String msg) {
		Response<String> response = Response.of(200, msg, null);
		return response;
		
	}
	
	public Response<T> success(T data) {
		Response<T> response = Response.of(200, null, data);
		return response;
		
	}

}
