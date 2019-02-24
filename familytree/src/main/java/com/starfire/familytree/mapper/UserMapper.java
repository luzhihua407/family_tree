package com.starfire.familytree.mapper;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.starfire.familytree.entity.User;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-02-19
 */
public interface UserMapper extends BaseMapper<User> {

	public User getUserByUserName(@Param(value="username")String username);
}
