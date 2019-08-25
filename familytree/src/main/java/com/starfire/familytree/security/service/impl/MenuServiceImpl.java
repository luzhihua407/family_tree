package com.starfire.familytree.security.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.starfire.familytree.folk.entity.CategoryContent;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.Menu;
import com.starfire.familytree.security.mapper.MenuMapper;
import com.starfire.familytree.security.service.IMenuService;
import com.starfire.familytree.vo.MenuTree;
import com.starfire.familytree.vo.PageInfo;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements IMenuService {

    @Override
    public PageInfo<Map<String, Object>, Menu> page(PageInfo<Map<String, Object>, Menu> pageInfo) {
        Map<String, Object> param = pageInfo.getParam();
        Page<Menu> page = pageInfo.toMybatisPlusPage();
        Page<Menu> selectPage = (Page<Menu>) baseMapper.queryPage(page, param);
        pageInfo.from(selectPage);
        return pageInfo;
    }

    @Override
    public List<Menu> getChildMenu(Long parentMenuId){
        return baseMapper.getChildMenu(parentMenuId);
    }

    @Override
    public List<Menu> getParentMenu(Long menuId){
        return baseMapper.getParentMenu(menuId);
    }

    @Override
    public List<Menu> getParentMenus() {
        return baseMapper.getParentMenus();
    }

    @Override
    public List<Menu> getByIds(List<Long> menuIds) {
        return baseMapper.getByIds(menuIds);
    }

    @Override
    public List<MenuTree> getMenusTree() {
        List<MenuTree> menuTree=new ArrayList<MenuTree>();
        List<Menu> parentMenus = baseMapper.getParentMenus();
        for (int i = 0; i < parentMenus.size(); i++) {

            Menu menu = parentMenus.get(i);
            Long id = menu.getId();
            String code = menu.getCode();
            String name = menu.getName();
            MenuTree parent=new MenuTree(name,id.toString(),i+"");
            List<Menu> childMenu = getChildMenu(menu.getId());
            for (int j = 0; j < childMenu.size(); j++) {
                Menu sub = childMenu.get(j);
                Long _id = sub.getId();
                String _code = sub.getCode();
                String _name = sub.getName();
                MenuTree child=new MenuTree(_name,_id.toString(),i+"-"+j);
                parent.getChildren().add(child);
            }
            menuTree.add(parent);
        }
        return menuTree;
    }

    @Override
    public List<Menu> getParentMenusByRoleId(Long roleId){
        return baseMapper.getParentMenusByRoleId(roleId);
    }

    @Override
    public Menu getMenuByCode(String code) {
        Menu menu = baseMapper.getMenuByCode(code);
        return menu;
    }

    @Override
    public List<Long> getParentMenuIds(List<Long> childMenuIds) {
        return baseMapper.getParentMenuIds(childMenuIds);
    }
}
