package com.starfire.familytree.security.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.security.entity.Menu;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface MenuMapper extends BaseMapper<Menu> {

    public List<Menu> getChildMenu(Long parentMenuId);

    public List<Menu> getParentMenu(Long menuId);

    public IPage<Menu> queryPage(Page page,@Param("queryCon")Map<String,Object> queryCon);

    public List<Menu> getRootMenuTree();

    public List<Menu> getInvisibleMenus();

    public List<Menu> getParentMenus();

    public List<Menu> getByIds(@Param("menuIds") List<Long> menuIds);

    public List<Menu> getMenusByRoleId(Long roleId);

    public List<Menu> getParentMenusByRoleId(Long roleId);

    public List<Long> getParentMenuIds(@Param("childMenuIds")List<Long> childMenuIds);

    public  Menu getMenuByCode(String code);

    public List<Menu> getParentMenusByAdmin();
}
