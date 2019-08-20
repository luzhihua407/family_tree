package com.starfire.familytree.security.controller;


import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.UserMenu;
import com.starfire.familytree.security.service.IUserMenuService;
import com.starfire.familytree.vo.PageInfo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@RestController
@RequestMapping("/security/user_menu")
@Api("用户菜单模块")
public class UserMenuController {
    @Autowired
    private IUserMenuService userMenuService;

    /**
     * 新增或修改
     *
     * @param userMenu
     * @return
     * @author luzh
     */
    @RequestMapping("/addOrUpdate")
    public Response<UserMenu> addOrUpdateUserMenu(@RequestBody UserMenu userMenu) {
        userMenuService.saveOrUpdate(userMenu);
        Response<UserMenu> response = new Response<UserMenu>();
        return response.success(userMenu);

    }

    /**
     * 删除
     *
     * @param id
     * @return
     * @author luzh
     */
    @GetMapping("/delete")
    public Response<String> deleteUserMenu(Long id) {
        boolean flag = userMenuService.removeById(id);
        Response<String> response = new Response<String>();
        if (!flag) {
            return response.failure();
        }
        return response.success();

    }

    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @RequestMapping("/page")
    public Response<PageInfo<Map<String, Object>, UserMenu>> page(@RequestBody PageInfo<Map<String, Object>, UserMenu> page) {
        PageInfo<Map<String, Object>, UserMenu> pageInfo = userMenuService.page(page);
        Response<PageInfo<Map<String, Object>, UserMenu>> response = new Response<PageInfo<Map<String, Object>, UserMenu>>();
        return response.success(pageInfo);

    }
}
