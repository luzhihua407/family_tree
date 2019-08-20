package com.starfire.familytree.security.controller;

import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.Role;
import com.starfire.familytree.security.service.IRoleService;
import com.starfire.familytree.vo.PageInfo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.Map;

/**
 * <p>
 * 角色操作控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@RestController
@RequestMapping("/security/role")
@Api("角色模块")
public class RoleController {

    @Autowired
    private IRoleService roleService;

    @RequestMapping("/page")
    public PageInfo<Map<String, Object>, Role> page(@RequestBody(required = false) PageInfo<Map<String, Object>, Role> page) {
        PageInfo<Map<String, Object>, Role> pageInfo = roleService.page(page);
        return pageInfo;
    }

    /**
     * 新增或修改
     *
     * @param role
     * @return
     * @author luzh
     */
    @RequestMapping("/addOrUpdate")
    public Response<String> addOrUpdateRole(@RequestBody @Valid Role role) {
        roleService.saveOrUpdate(role);
        Response<String> response = new Response<String>();
        return response.success();

    }

    /**
     * 删除
     *
     * @param id
     * @return
     * @author luzh
     */
    @GetMapping("/delete")
    public Response<String> deleteRole(Long id) {
        boolean flag = roleService.removeById(id);
        Response<String> response = new Response<String>();
        if (!flag) {
            return response.failure();
        }
        return response.success();

    }

}
