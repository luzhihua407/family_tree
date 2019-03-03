package com.starfire.familytree.usercenter.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.starfire.familytree.usercenter.entity.User;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface IUserService  extends UserDetailsService {
	public User findUserByEmail(String email);

	public User registerNewUserAccount(User user);
}
