package com.starfire.familytree.security.controller;


import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.UserMenuRight;
import com.starfire.familytree.security.service.IUserMenuRightService;
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
@RequestMapping("/security/user_menu_right")
@Api("用户菜单权限模块")
public class UserMenuRightController {
    @Autowired
    private IUserMenuRightService userMenuRightService;

    /**
     * 新增或修改
     *
     * @param userMenuRight
     * @return
     * @author luzh
     */
    @PostMapping("/addOrUpdate")
    public Response<UserMenuRight> addOrUpdateUserMenuRight(@RequestBody UserMenuRight userMenuRight) {
        userMenuRightService.saveOrUpdate(userMenuRight);
        Response<UserMenuRight> response = new Response<UserMenuRight>();
        return response.success(userMenuRight);

    }

    /**
     * 删除
     *
     * @return
     * @author luzh
     */
    @PostMapping("/delete")
    public Response<String> deleteUserMenuRight(@RequestBody DeleteVO<String[]> deleteVO) {
        String[] ids = deleteVO.getIds();
        boolean flag = userMenuRightService.removeByIds(Arrays.asList(ids));
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
    public Response<PageInfo<Map<String, Object>, UserMenuRight>> page(@RequestBody(required = false) PageInfo<Map<String, Object>, UserMenuRight> page) {
        if(page==null){
            page=new PageInfo<>();
        }
        PageInfo<Map<String, Object>, UserMenuRight> pageInfo = userMenuRightService.page(page);
        Response<PageInfo<Map<String, Object>, UserMenuRight>> response = new Response<PageInfo<Map<String, Object>, UserMenuRight>>();
        return response.success(pageInfo);

    }
}
