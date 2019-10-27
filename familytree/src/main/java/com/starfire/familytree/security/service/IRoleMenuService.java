package com.starfire.familytree.security.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.security.entity.RoleMenu;
import com.starfire.familytree.vo.PageInfo;
import com.starfire.familytree.vo.RoleMenuVO;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface IRoleMenuService extends IService<RoleMenu> {
    public PageInfo<Map<String, Object>, RoleMenu> page(PageInfo<Map<String, Object>, RoleMenu> pageInfo);


    public RoleMenuVO getRoleMenuByRoleId(Long roleId);

    public List<RoleMenu> getListByRoleId(Long roleId);

    public void deleteByRoleId(Long roleId);

    public void addOrUpdateRoleMenu(RoleMenuVO roleMenuVo);
}
