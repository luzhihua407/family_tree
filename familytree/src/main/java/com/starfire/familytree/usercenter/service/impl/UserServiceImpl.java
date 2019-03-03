package com.starfire.familytree.usercenter.service.impl;

import com.starfire.familytree.usercenter.entity.User;
import com.starfire.familytree.usercenter.mapper.UserMapper;
import com.starfire.familytree.usercenter.service.IUserService;
import com.starfire.familytree.validation.EmailExistsException;
import com.starfire.familytree.vo.UserVO;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
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
	public UserVO loadUserByUsername(String userName) throws UsernameNotFoundException {
		User user=baseMapper.getUserByUserName(userName);
		List<GrantedAuthority> authorities=new ArrayList<GrantedAuthority>();
		UserVO userVO= new UserVO(user.getUsername(), user.getPassword(), authorities);
		BeanUtils.copyProperties(user, userVO);
		return userVO;
	}
}
