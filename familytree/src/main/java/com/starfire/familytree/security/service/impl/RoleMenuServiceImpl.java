package com.starfire.familytree.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.Role;
import com.starfire.familytree.security.entity.RoleMenu;
import com.starfire.familytree.security.entity.RoleMenuRight;
import com.starfire.familytree.security.mapper.RoleMapper;
import com.starfire.familytree.security.mapper.RoleMenuMapper;
import com.starfire.familytree.security.mapper.RoleMenuRightMapper;
import com.starfire.familytree.security.service.IRoleMenuRightService;
import com.starfire.familytree.security.service.IRoleMenuService;
import com.starfire.familytree.vo.PageInfo;
import com.starfire.familytree.vo.RoleMenuVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@Service
public class RoleMenuServiceImpl extends ServiceImpl<RoleMenuMapper, RoleMenu> implements IRoleMenuService {

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private RoleMenuMapper roleMenuMapper;

    @Autowired
    private RoleMenuRightMapper roleMenuRightMapper;

    @Override
    public PageInfo<Map<String, Object>, RoleMenu> page(PageInfo<Map<String, Object>, RoleMenu> pageInfo) {
        QueryWrapper<RoleMenu> qw = new QueryWrapper<RoleMenu>();
        Page<RoleMenu> page = pageInfo.toMybatisPlusPage();
        Page<RoleMenu> selectPage = (Page<RoleMenu>) baseMapper.selectPage(page, qw);
        pageInfo.from(selectPage);
        return pageInfo;
    }

    @Override
    public RoleMenuVO getRoleMenuByRoleId(Long roleId) {
        Role role = roleMapper.selectById(roleId);
        List<Map> list = roleMenuRightMapper.getCheckedMenuByRoleId(roleId);
        RoleMenuVO vo=new RoleMenuVO();
        for (int i = 0; i < list.size(); i++) {
            Map roleMenuRight =  list.get(i);
            Long menuId = (Long) roleMenuRight.get("menu_id");
            Long menuRightId = (Long) roleMenuRight.get("menu_right_id");
            Long roleMenuId = (Long) roleMenuRight.get("role_menu_id");
            Long parent = (Long) roleMenuRight.get("parent");
            vo.getMenuIds().add(parent+"-"+menuId+"-"+menuRightId);
        }
        vo.setRoleId(roleId==null?"":roleId.toString());
        if(role!=null){
            vo.setRoleName(role.getName());
        }

        return vo;
    }

    @Override
    public void deleteByRoleId(Long roleId) {
        roleMenuMapper.deleteByRoleId(roleId);
    }
}
