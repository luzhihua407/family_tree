package com.starfire.familytree.security.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.starfire.familytree.security.entity.RoleMenuRight;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface RoleMenuRightMapper extends BaseMapper<RoleMenuRight> {

    public void deleteByMenuId(Long menuId);

    public List<Map> getCheckedMenuByRoleId(Long roleId);

    public List<String> getPermission(Long roleId);

    public List<String> getPermissionForAdmin();

    public void deleteByRoleMenuId(Long roleMenuId);
}
