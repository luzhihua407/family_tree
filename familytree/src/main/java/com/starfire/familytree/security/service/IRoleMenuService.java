package com.starfire.familytree.security.service;

import java.util.Map;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.security.entity.RoleMenu;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface IRoleMenuService extends IService<RoleMenu> {
	public PageInfo<Map<String, Object>, RoleMenu> page(PageInfo<Map<String, Object>, RoleMenu> pageInfo);
}
