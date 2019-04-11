package com.starfire.familytree.usercenter.entity;

import java.time.LocalDateTime;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.boot.SpringApplication;

import com.baomidou.mybatisplus.annotation.TableName;
import com.starfire.familytree.security.entity.AbstractEntity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_user")
public class User extends AbstractEntity {

	private static final long serialVersionUID = 1L;

	@NotEmpty(message = "邮箱不能为空")
	@Email
	private String email;

	private Boolean firstLogin = false;

	private LocalDateTime lastLoginTime;

	private String mobile;

	@NotEmpty(message = "用户名不能为空")
	@Size(min = 2, max = 32, message = "用户名长度为2-32个字符") 
	private String username;

	@NotEmpty(message = "密码不能为空")
	@Size(min = 6, max = 32, message = "密码长度为6-32个字符") 
	private String password;

	private String realName;

	private LocalDateTime registerTime=LocalDateTime.now() ;

	private Integer type;

	private Integer age;

	@NotNull
	private Integer gender;

	private Integer province;
	
	private Integer city;
	
	private Integer district;

	private String address;

	public static void main(String[] args) throws Exception {
		String aa="1111";
		new User().change(aa);
		System.err.println(new User().change(aa));
	}
	public String change(String text) {
		text="aaa";
		return text;
	}

	
}
