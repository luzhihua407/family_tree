package com.starfire.familytree.security.controller;


import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.MenuRight;
import com.starfire.familytree.security.service.IMenuRightService;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;

/**
 * <p>
 * 菜单权限控制器
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
    @PostMapping("/addOrUpdate")
    public Response<MenuRight> addOrUpdateMenuRight(@RequestBody MenuRight menuRight) {
        menuRightService.saveOrUpdate(menuRight);
        Response<MenuRight> response = new Response<MenuRight>();
        return response.success(menuRight);

    }

    /**
     * 删除
     *
     * @return
     * @author luzh
     */
    @PostMapping("/delete")
    public Response<String> deleteMenuRight(@RequestBody DeleteVO<String[]> deleteVO) {
        String[] ids = deleteVO.getIds();
        boolean flag = menuRightService.removeByIds(Arrays.asList(ids));
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
    public Response<PageInfo<Map<String, Object>, MenuRight>> page(@RequestBody(required = false) PageInfo<Map<String, Object>, MenuRight> page) {
        if(page==null){
            page=new PageInfo<>();
        }
        PageInfo<Map<String, Object>, MenuRight> pageInfo = menuRightService.page(page);
        Response<PageInfo<Map<String, Object>, MenuRight>> response = new Response<PageInfo<Map<String, Object>, MenuRight>>();
        return response.success(pageInfo);

    }
}
