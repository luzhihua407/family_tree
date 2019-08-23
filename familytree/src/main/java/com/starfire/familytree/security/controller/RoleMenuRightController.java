package com.starfire.familytree.security.controller;


import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.RoleMenuRight;
import com.starfire.familytree.security.service.IRoleMenuRightService;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;

/**
 * <p>
 * 角色菜单权限控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@RestController
@RequestMapping("/security/role_menu_right")
@Api("角色菜单权限模块")
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
    @PostMapping("/addOrUpdate")
    public Response<RoleMenuRight> addOrUpdateRoleMenuRight(@RequestBody RoleMenuRight roleRoleMenuRightRight) {
        roleMenuRightRightService.saveOrUpdate(roleRoleMenuRightRight);
        Response<RoleMenuRight> response = new Response<RoleMenuRight>();
        return response.success(roleRoleMenuRightRight);

    }

    /**
     * 删除
     *
     * @return
     * @author luzh
     */
    @PostMapping("/delete")
    public Response<String> deleteRoleMenuRight(@RequestBody DeleteVO<String[]> deleteVO) {
        String[] ids = deleteVO.getIds();
        boolean flag = roleMenuRightRightService.removeByIds(Arrays.asList(ids));
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
    public Response<PageInfo<Map<String, Object>, RoleMenuRight>> page(@RequestBody(required = false) PageInfo<Map<String, Object>, RoleMenuRight> page) {
        if(page==null){
            page=new PageInfo<>();
        }
        PageInfo<Map<String, Object>, RoleMenuRight> pageInfo = roleMenuRightRightService.page(page);
        Response<PageInfo<Map<String, Object>, RoleMenuRight>> response = new Response<PageInfo<Map<String, Object>, RoleMenuRight>>();
        return response.success(pageInfo);

    }
}
