package com.starfire.familytree.security.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.starfire.familytree.security.entity.RoleMenu;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface RoleMenuMapper extends BaseMapper<RoleMenu> {

	public List<Long> getMenuIdsByRoleId(Long roleId);
}
