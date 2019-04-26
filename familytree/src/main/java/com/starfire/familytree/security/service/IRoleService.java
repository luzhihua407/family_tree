package com.starfire.familytree.security.service;


import java.util.Map;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.security.entity.Role;
import com.starfire.familytree.vo.PageInfo;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface IRoleService extends IService<Role> {

	public PageInfo<Map<String,Object>, Role> page(PageInfo<Map<String,Object>, Role> page);

	public Role getRoleByCode(String code);
}
