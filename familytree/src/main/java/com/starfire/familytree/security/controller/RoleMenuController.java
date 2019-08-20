package com.starfire.familytree.security.controller;


import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.RoleMenu;
import com.starfire.familytree.security.service.IRoleMenuService;
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
@RequestMapping("/security/role_menu")
@Api("角色菜单模块")
public class RoleMenuController {
    @Autowired
    private IRoleMenuService roleMenuService;

    /**
     * 新增或修改
     *
     * @param roleMenu
     * @return
     * @author luzh
     */
    @RequestMapping("/addOrUpdate")
    public Response<RoleMenu> addOrUpdateRoleMenu(@RequestBody RoleMenu roleMenu) {
        roleMenuService.saveOrUpdate(roleMenu);
        Response<RoleMenu> response = new Response<RoleMenu>();
        return response.success(roleMenu);

    }

    /**
     * 删除
     *
     * @param id
     * @return
     * @author luzh
     */
    @GetMapping("/delete")
    public Response<String> deleteRoleMenu(Long id) {
        boolean flag = roleMenuService.removeById(id);
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
    public Response<PageInfo<Map<String, Object>, RoleMenu>> page(@RequestBody PageInfo<Map<String, Object>, RoleMenu> page) {
        PageInfo<Map<String, Object>, RoleMenu> pageInfo = roleMenuService.page(page);
        Response<PageInfo<Map<String, Object>, RoleMenu>> response = new Response<PageInfo<Map<String, Object>, RoleMenu>>();
        return response.success(pageInfo);

    }
}
