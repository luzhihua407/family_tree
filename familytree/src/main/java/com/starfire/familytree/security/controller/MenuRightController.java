package com.starfire.familytree.security.controller;


import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.MenuRight;
import com.starfire.familytree.security.service.IMenuRightService;
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
@RequestMapping("/security/menu_right")
@Api("菜单权限模块")
public class MenuRightController {
    @Autowired
    private IMenuRightService menuRightService;

    /**
     * 新增或修改
     *
     * @param menuRight
     * @return
     * @author luzh
     */
    @RequestMapping("/addOrUpdate")
    public Response<MenuRight> addOrUpdateMenuRight(@RequestBody MenuRight menuRight) {
        menuRightService.saveOrUpdate(menuRight);
        Response<MenuRight> response = new Response<MenuRight>();
        return response.success(menuRight);

    }

    /**
     * 删除
     *
     * @param id
     * @return
     * @author luzh
     */
    @GetMapping("/delete")
    public Response<String> deleteMenuRight(Long id) {
        boolean flag = menuRightService.removeById(id);
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
    public Response<PageInfo<Map<String, Object>, MenuRight>> page(@RequestBody PageInfo<Map<String, Object>, MenuRight> page) {
        PageInfo<Map<String, Object>, MenuRight> pageInfo = menuRightService.page(page);
        Response<PageInfo<Map<String, Object>, MenuRight>> response = new Response<PageInfo<Map<String, Object>, MenuRight>>();
        return response.success(pageInfo);

    }
}
