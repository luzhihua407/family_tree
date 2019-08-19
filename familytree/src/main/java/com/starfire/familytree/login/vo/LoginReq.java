package com.starfire.familytree.login.vo;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Data
public class LoginReq implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1712567317430656144L;
	
	@NotEmpty(message="用户名不能为空")
	private String username;
	@NotEmpty(message="密码不能为空")
	private String password;
	private String scope;
	private String grant_type;
	
}
