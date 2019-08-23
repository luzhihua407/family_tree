package com.starfire.familytree.security.controller;


import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.UserRole;
import com.starfire.familytree.security.service.IUserRoleService;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
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
    @PostMapping("/addOrUpdate")
    public Response<UserRole> addOrUpdateUserRole(@RequestBody UserRole userRole) {
        userRoleService.saveOrUpdate(userRole);
        Response<UserRole> response = new Response<UserRole>();
        return response.success(userRole);

    }

    /**
     * 删除
     *
     * @return
     * @author luzh
     */
    @PostMapping("/delete")
    public Response<String> deleteUserRole(@RequestBody DeleteVO<String[]> deleteVO) {
        String[] ids = deleteVO.getIds();
        boolean flag = userRoleService.removeByIds(Arrays.asList(ids));
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
    @PostMapping("/page")
    public Response<PageInfo<Map<String, Object>, UserRole>> page(@RequestBody(required = false) PageInfo<Map<String, Object>, UserRole> page) {
        if(page==null){
            page=new PageInfo<>();
        }
        PageInfo<Map<String, Object>, UserRole> pageInfo = userRoleService.page(page);
        Response<PageInfo<Map<String, Object>, UserRole>> response = new Response<PageInfo<Map<String, Object>, UserRole>>();
        return response.success(pageInfo);

    }
}
