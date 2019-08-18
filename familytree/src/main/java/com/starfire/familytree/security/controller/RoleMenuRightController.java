package com.starfire.familytree.security.controller;


import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.RoleMenuRight;
import com.starfire.familytree.security.service.IRoleMenuRightService;
import com.starfire.familytree.vo.PageInfo;
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
@RequestMapping("/security/role-menu-right")
public class RoleMenuRightController {
    @Autowired
    private IRoleMenuRightService roleMenuRightRightService;

    /**
     * 新增或修改
     *
     * @param roleRoleMenuRightRight
     * @return
     * @author luzh
     */
    @RequestMapping("/addOrUpdate")
    public Response<RoleMenuRight> addOrUpdateRoleMenuRight(@RequestBody RoleMenuRight roleRoleMenuRightRight) {
        roleMenuRightRightService.saveOrUpdate(roleRoleMenuRightRight);
        Response<RoleMenuRight> response = new Response<RoleMenuRight>();
        return response.success(roleRoleMenuRightRight);

    }

    /**
     * 删除
     *
     * @param id
     * @return
     * @author luzh
     */
    @GetMapping("/delete")
    public Response<String> deleteRoleMenuRight(Long id) {
        boolean flag = roleMenuRightRightService.removeById(id);
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
    public Response<PageInfo<Map<String, Object>, RoleMenuRight>> page(@RequestBody PageInfo<Map<String, Object>, RoleMenuRight> page) {
        PageInfo<Map<String, Object>, RoleMenuRight> pageInfo = roleMenuRightRightService.page(page);
        Response<PageInfo<Map<String, Object>, RoleMenuRight>> response = new Response<PageInfo<Map<String, Object>, RoleMenuRight>>();
        return response.success(pageInfo);

    }
}
