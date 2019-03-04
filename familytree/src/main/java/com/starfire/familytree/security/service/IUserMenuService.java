package com.starfire.familytree.security.service;

import com.starfire.familytree.security.entity.UserMenu;
import com.starfire.familytree.security.entity.UserUserMenu;

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
public interface IUserUserMenuService extends IService<UserMenu> {
	public PageInfo<Map<String, Object>, UserMenu> page(PageInfo<Map<String, Object>, UserMenu> pageInfo);
}
