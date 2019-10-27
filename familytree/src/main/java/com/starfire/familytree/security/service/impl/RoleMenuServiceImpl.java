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
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashSet;
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

    @Autowired
    private  IRoleMenuRightService roleMenuRightService;

    @Autowired
    private  IRoleMenuService roleMenuService;

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
    public List<RoleMenu> getListByRoleId(Long roleId) {
        return roleMenuMapper.getListByRoleId(roleId);
    }

    @Override
    public void deleteByRoleId(Long roleId) {
        roleMenuMapper.deleteByRoleId(roleId);
    }

    @Override
    @Transactional
    public void addOrUpdateRoleMenu(RoleMenuVO roleMenuVo) {
        String roleId = roleMenuVo.getRoleId();
        List<String> menuIds = roleMenuVo.getMenuIds();
        HashSet<Long> menuSet=new HashSet();
        HashSet<Long> menuRightSet=new HashSet();

        for (int i = 0; i < menuIds.size(); i++) {
            String s =  menuIds.get(i);
            boolean matches = s.matches("\\d+-\\d+-\\d+");
            boolean level2 = s.matches("\\d+-\\d+");
            if(level2){
                String[] split = s.split("-");
                String s2 = split[1];
                menuSet.add(Long.valueOf(s2));
            }
            if(matches){
                String[] split = s.split("-");
                String s1 = split[0];
                String s2 = split[1];
                String s3 = split[2];
                Long menuId= Long.valueOf(s2);
                Long menuRightId= Long.valueOf(s3);
                menuSet.add(menuId);
                menuRightSet.add(menuRightId);
            }
        }
        List<Boolean> rs=new ArrayList<Boolean>();
        List<RoleMenu> list = roleMenuMapper.getListByRoleId(Long.valueOf(roleId));
        for (int i = 0; i < list.size(); i++) {
            RoleMenu roleMenu =  list.get(i);
            Long roleMenuId = roleMenu.getId();
            roleMenuRightMapper.deleteByRoleMenuId(roleMenuId);
        }
        roleMenuMapper.deleteByRoleId(Long.valueOf(roleId));
        for (Long menuId : menuSet) {
            RoleMenu roleMenu=new RoleMenu();
            roleMenu.setMenuId(menuId);
            roleMenu.setRoleId(Long.valueOf(roleId));
            roleMenu.setOwn(roleMenuVo.getOwn());
            boolean flag = roleMenuService.saveOrUpdate(roleMenu);
            roleMenuRightMapper.deleteByMenuId(menuId);
            for (Long menuRightId : menuRightSet) {
                RoleMenuRight roleMenuRight = new RoleMenuRight();
                roleMenuRight.setMenuId(menuId);
                roleMenuRight.setMenuRightId(menuRightId);
                roleMenuRight.setRoleMenuId(roleMenu.getId());
                roleMenuRightService.saveOrUpdate(roleMenuRight);
            }
        }
    }
}
