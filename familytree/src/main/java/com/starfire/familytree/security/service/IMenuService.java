package com.starfire.familytree.security.service;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.security.entity.Menu;
import com.starfire.familytree.vo.MenuTree;
import com.starfire.familytree.vo.PageInfo;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface IMenuService extends IService<Menu> {

    public PageInfo<Map<String, Object>, Menu> page(PageInfo<Map<String, Object>, Menu> pageInfo);

    public List<Menu> getChildMenu(Long parentId);

    public List<Menu> getParentMenu(Long menuId);

    public List<Long> getParentMenuIds(List<Long> childMenuIds);

    public List<Menu> getParentMenus();

    public List<Menu> getByIds(List<Long> menuIds);

    public List<MenuTree> getMenusTree();

    public List<Menu> getMenusByRoleId(Long roleId);

    public Menu getMenuByCode(String code);

    public List<Menu> getParentMenusByAdmin();

    public List<Menu> getMenusByUserId(Long userId);
}
