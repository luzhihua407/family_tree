package com.starfire.familytree.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.entity.User;
import com.starfire.familytree.mapper.UserMapper;
import com.starfire.familytree.service.IUserService;
import com.starfire.familytree.validation.EmailExistsException;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public User findUserByEmail(String email) {
		return null;
	}

	@Transactional
	@Override
	public User registerNewUserAccount(User user) {

		if (existsUsername(user.getUsername())) {
			throw new EmailExistsException("已存在该用户:" + user.getUsername());
		}
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		super.save(user);
		return user;
	}

	private boolean existsUsername(String username) {
		User user=baseMapper.getUserByUserName(username);
		if (user != null) {
			return true;
		}
		return false;
	}

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		User user=baseMapper.getUserByUserName(userName);
		 List<GrantedAuthority> authorities=new ArrayList<GrantedAuthority>();
		org.springframework.security.core.userdetails.User u=new org.springframework.security.core.userdetails.User(user.getUsername(),user.getPassword(),authorities);
		return u;
	}

}
