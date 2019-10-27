package com.starfire.familytree.security.controller;

import java.util.*;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.starfire.familytree.security.entity.MenuRight;
import com.starfire.familytree.security.service.IMenuRightService;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.MenuRightVO;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.Menu;
import com.starfire.familytree.security.service.IMenuService;
import com.starfire.familytree.vo.MenuTree;
import com.starfire.familytree.vo.PageInfo;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;

/**
 * <p>
 * 菜单控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@RestController
@RequestMapping("/security/menu")
@Api(tags = "菜单接口")
public class MenuController {

    @Autowired
    private IMenuService menuService;

    @Autowired
    private IMenuRightService menuRightService;
    /**
     * 新增或修改
     *
     * @param menu
     * @return
     * @author luzh
     */
    @PostMapping("/addOrUpdate")
    public Response<Menu> addOrUpdateMenu(@RequestBody @Valid Menu menu) {
        String code = menu.getCode();
        Menu menuByCode = menuService.getMenuByCode(code);
        if(menuByCode!=null && menu.getId()==null){
            throw new  RuntimeException("已存在该编码，请换一个编码");
        }
        menuService.saveOrUpdate(menu);
        List<MenuRightVO> menuRights = menu.getMenuRights();
        List<MenuRight> menuRightList=new ArrayList<>();
        for (int i = 0; i < menuRights.size(); i++) {
            MenuRightVO menuRightVO =  menuRights.get(i);
            MenuRight mr=new MenuRight();
            mr.setCode(menuRightVO.getKey());
            mr.setName(menuRightVO.getLabel());
            mr.setMenuId(menu.getId());
            menuRightList.add(mr);
        }
        menuRightService.removeByMenuId(menu.getId());
        menuRightService.saveBatch(menuRightList);
        Response<Menu> response = new Response<Menu>();
        return response.success(menu);

    }

    /**
     * 删除
     *
     * @return
     * @author luzh
     */
    @PostMapping("/delete")
    public Response<String> deleteMenu(@RequestBody DeleteVO<String[]> deleteVO) {
        String[] ids = deleteVO.getIds();
        boolean flag = menuService.removeByIds(Arrays.asList(ids));
        Response<String> response = new Response<String>();
        if (!flag) {
            return response.failure();
        }
        return response.success();

    }
    /**
     * 获取单个实体内容
     * @param id
     * @return
     */
    @GetMapping("/get")
    public Response<Menu> getUser(Long id) {
        Menu menu = menuService.getById(id);
        List<MenuRight> menuRights = menuRightService.getList(menu.getId());
        List<MenuRightVO> menuRightVOList = menuRightService.convert(menuRights);
        menu.setMenuRights(menuRightVOList);
        Response<Menu> response = new Response<Menu>();
        return response.success(menu);
    }
    /**
     * 获取所有父级菜单
     * @return
     */
    @GetMapping("/getParentMenus")
    public Response<List<Menu>> getParentMenus() {
        List<Menu> menus = menuService.getParentMenus();
        Response<List<Menu>> response = new Response<List<Menu>>();
        return response.success(menus);
    }
    /**
     * 获取菜单Tree
     * @return
     */
    @GetMapping("/getMenuTree")
    public Response<List<MenuTree>> getMenus() {
        List<MenuTree> menus = menuService.getMenusTree();
        Response<List<MenuTree>> response = new Response<List<MenuTree>>();
        return response.success(menus);
    }

    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @PostMapping("/page")
    public Response<PageInfo<Map<String, Object>, Menu>> page(@RequestBody(required = false) PageInfo<Map<String, Object>, Menu> page) {
        if(page==null){
            page=new PageInfo<>();
        }
        PageInfo<Map<String, Object>, Menu> pageInfo = menuService.page(page);
        Response<PageInfo<Map<String, Object>, Menu>> response = new Response<PageInfo<Map<String, Object>, Menu>>();
        return response.success(pageInfo);

    }
}
