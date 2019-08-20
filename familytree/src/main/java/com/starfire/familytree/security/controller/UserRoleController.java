package com.starfire.familytree.security.controller;


import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.UserRole;
import com.starfire.familytree.security.service.IUserRoleService;
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
@RequestMapping("/security/user_role")
@Api("用户角色模块")
public class UserRoleController {
    @Autowired
    private IUserRoleService userRoleService;

    /**
     * 新增或修改
     *
     * @param userRole
     * @return
     * @author luzh
     */
    @RequestMapping("/addOrUpdate")
    public Response<UserRole> addOrUpdateUserRole(@RequestBody UserRole userRole) {
        userRoleService.saveOrUpdate(userRole);
        Response<UserRole> response = new Response<UserRole>();
        return response.success(userRole);

    }

    /**
     * 删除
     *
     * @param id
     * @return
     * @author luzh
     */
    @GetMapping("/delete")
    public Response<String> deleteUserRole(Long id) {
        boolean flag = userRoleService.removeById(id);
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
    public Response<PageInfo<Map<String, Object>, UserRole>> page(@RequestBody(required = false) PageInfo<Map<String, Object>, UserRole> page) {
        if(page==null){
            page=new PageInfo<>();
        }
        PageInfo<Map<String, Object>, UserRole> pageInfo = userRoleService.page(page);
        Response<PageInfo<Map<String, Object>, UserRole>> response = new Response<PageInfo<Map<String, Object>, UserRole>>();
        return response.success(pageInfo);

    }
}
