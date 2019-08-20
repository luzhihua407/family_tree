package com.starfire.familytree.security.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.starfire.familytree.vo.DeleteVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.Menu;
import com.starfire.familytree.security.service.IMenuService;
import com.starfire.familytree.vo.MenuTree;
import com.starfire.familytree.vo.PageInfo;

import javax.validation.Valid;

/**
 * <p>
 * 菜单控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@RestController
@RequestMapping("/security/menu")
public class MenuController {

    @Autowired
    private IMenuService menuService;

    /**
     * 新增或修改
     *
     * @param menu
     * @return
     * @author luzh
     */
    @PostMapping("/addOrUpdate")
    public Response<Menu> addOrUpdateMenu(@RequestBody @Valid Menu menu) {
        menuService.saveOrUpdate(menu);
        Response<Menu> response = new Response<Menu>();
        return response.success(menu);

    }

    /**
     * 删除
     *
     * @return
     * @author luzh
     */
    @PostMapping("/delete")
    public Response<String> deleteMenu(@RequestBody DeleteVO<String[]> deleteVO) {
        boolean flag = false;
        String[] ids = deleteVO.getIds();
        flag = menuService.removeByIds(Arrays.asList(ids));
        Response<String> response = new Response<String>();
        if (!flag) {
            return response.failure();
        }
        return response.success();

    }
    /**
     * 获取单个实体内容
     * @param id
     * @return
     */
    @GetMapping("/get")
    public Response<Menu> getUser(Long id) {
        Menu menu = menuService.getById(id);
        Response<Menu> response = new Response<Menu>();
        return response.success(menu);
    }
    /**
     * 获取所有父级菜单
     * @return
     */
    @GetMapping("/getParentMenus")
    public Response<List<Menu>> getParentMenus() {
        List<Menu> menus = menuService.getParentMenus();
        Response<List<Menu>> response = new Response<List<Menu>>();
        return response.success(menus);
    }
    /**
     * 获取菜单Tree
     * @return
     */
    @GetMapping("/getMenuTree")
    public Response<List<MenuTree>> getMenus() {
        List<MenuTree> menus = menuService.getMenusTree();
        Response<List<MenuTree>> response = new Response<List<MenuTree>>();
        return response.success(menus);
    }
    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @PostMapping("/page")
    public Response<PageInfo<Map<String, Object>, Menu>> page(@RequestBody PageInfo<Map<String, Object>, Menu> page) {
        PageInfo<Map<String, Object>, Menu> pageInfo = menuService.page(page);
        Response<PageInfo<Map<String, Object>, Menu>> response = new Response<PageInfo<Map<String, Object>, Menu>>();
        return response.success(pageInfo);

    }
}
