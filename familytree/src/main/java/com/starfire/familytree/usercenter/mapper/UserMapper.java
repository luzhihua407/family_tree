package com.starfire.familytree.usercenter.mapper;

import com.starfire.familytree.usercenter.entity.User;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface UserMapper extends BaseMapper<User> {
	public User getUserByUserName(@Param(value="username")String username);
}
