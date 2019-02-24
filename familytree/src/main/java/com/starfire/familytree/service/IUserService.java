package com.starfire.familytree.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.starfire.familytree.entity.User;

public interface IUserService extends UserDetailsService {

	public User findUserByEmail(String email);

	public User registerNewUserAccount(User user);
	
}
