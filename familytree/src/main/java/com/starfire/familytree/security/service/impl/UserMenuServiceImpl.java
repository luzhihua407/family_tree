package com.starfire.familytree.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.Role;
import com.starfire.familytree.security.entity.UserMenu;
import com.starfire.familytree.security.entity.UserMenuRight;
import com.starfire.familytree.security.mapper.UserMenuMapper;
import com.starfire.familytree.security.mapper.UserMenuRightMapper;
import com.starfire.familytree.security.service.IUserMenuRightService;
import com.starfire.familytree.security.service.IUserMenuService;
import com.starfire.familytree.vo.PageInfo;
import com.starfire.familytree.vo.RoleMenuVO;
import com.starfire.familytree.vo.UserMenuVO;
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
public class UserMenuServiceImpl extends ServiceImpl<UserMenuMapper, UserMenu> implements IUserMenuService {

    @Autowired
    private UserMenuRightMapper userMenuRightMapper;

    @Autowired
    private IUserMenuRightService userMenuRightService;

    @Override
    public PageInfo<Map<String, Object>, UserMenu> page(PageInfo<Map<String, Object>, UserMenu> pageInfo) {
        QueryWrapper<UserMenu> qw = new QueryWrapper<UserMenu>();
        Page<UserMenu> page = pageInfo.toMybatisPlusPage();
        Page<UserMenu> selectPage = (Page<UserMenu>) baseMapper.selectPage(page, qw);
        pageInfo.from(selectPage);
        return pageInfo;
    }

    @Override
    @Transactional
    public void addOrUpdateUserMenu(UserMenuVO userMenuVO) {
        String userId = userMenuVO.getUserId();
        List<String> menuIds = userMenuVO.getMenuIds();
        HashSet<Long> menuSetLevel2=new HashSet();
        HashSet<Long> menuSetLevel3=new HashSet();
        HashSet<Long> menuRightSet=new HashSet();

        for (int i = 0; i < menuIds.size(); i++) {
            String s =  menuIds.get(i);
            boolean matches = s.matches("\\d+-\\d+-\\d+");
            boolean level2 = s.matches("\\d+-\\d+");
            if(level2){
                String[] split = s.split("-");
                String s2 = split[1];
                menuSetLevel2.add(Long.valueOf(s2));
            }
            if(matches){
                String[] split = s.split("-");
                String s1 = split[0];
                String s2 = split[1];
                String s3 = split[2];
                Long menuId= Long.valueOf(s2);
                Long menuRightId= Long.valueOf(s3);
                menuSetLevel3.add(menuId);
                menuRightSet.add(menuRightId);
            }
        }
        List<Boolean> rs=new ArrayList<Boolean>();
        List<UserMenu> list = baseMapper.getListByUserId(Long.valueOf(userId));
        for (int i = 0; i < list.size(); i++) {
            UserMenu userMenu =  list.get(i);
            Long userMenuId = userMenu.getId();
            userMenuRightMapper.deleteByUserMenuId(userMenuId);
        }
        baseMapper.deleteByUserId(Long.valueOf(userId));
        for (Long menuId : menuSetLevel2) {
            UserMenu userMenu=new UserMenu();
            userMenu.setMenuId(menuId);
            userMenu.setUserId(Long.valueOf(userMenuVO.getUserId()));
            saveOrUpdate(userMenu);
        }
        for (Long menuId : menuSetLevel3) {
            UserMenu userMenu=new UserMenu();
            userMenu.setMenuId(menuId);
            userMenu.setUserId(Long.valueOf(userId));
            boolean flag = saveOrUpdate(userMenu);
            userMenuRightMapper.deleteByMenuId(menuId);
            for (Long menuRightId : menuRightSet) {
                UserMenuRight userMenuRight = new UserMenuRight();
                userMenuRight.setMenuId(menuId);
                userMenuRight.setMenuRightId(menuRightId);
                userMenuRight.setUserMenuId(userMenu.getId());
                userMenuRightService.saveOrUpdate(userMenuRight);
            }
        }
    }

    @Override
    public UserMenuVO getUserMenuByUserId(Long userId) {
        List<Map> list = userMenuRightMapper.getCheckedMenuByUserId(userId);
        UserMenuVO vo=new UserMenuVO();
        for (int i = 0; i < list.size(); i++) {
            StringBuilder sb=new StringBuilder();
            Map userMenuRight =  list.get(i);
            Long menuId = (Long) userMenuRight.get("menu_id");
            Long menuRightId = (Long) userMenuRight.get("menu_right_id");
            Long userMenuId = (Long) userMenuRight.get("user_menu_id");
            Long parent = (Long) userMenuRight.get("parent");
            if(parent!=null){
                sb.append(parent);
            }
            if(menuId!=null){
                sb.append("-").append(menuId);
            }
            if(menuRightId!=null){
                sb.append("-").append(menuRightId);
            }
            vo.getMenuIds().add(sb.toString());
        }
        vo.setUserId(userId==null?"":userId.toString());
        return vo;
    }
}
