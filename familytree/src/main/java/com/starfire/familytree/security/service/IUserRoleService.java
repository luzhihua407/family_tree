package com.starfire.familytree.security.service;

import com.starfire.familytree.security.entity.UserRole;
import com.starfire.familytree.security.entity.UserRole;

import java.util.Map;

import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface IUserRoleService extends IService<UserRole> {
	public PageInfo<Map<String, Object>, UserRole> page(PageInfo<Map<String, Object>, UserRole> pageInfo);
}
