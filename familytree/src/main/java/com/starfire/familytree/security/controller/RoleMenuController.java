package com.starfire.familytree.security.controller;


import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.RoleMenu;
import com.starfire.familytree.security.entity.RoleMenuRight;
import com.starfire.familytree.security.service.IMenuService;
import com.starfire.familytree.security.service.IRoleMenuRightService;
import com.starfire.familytree.security.service.IRoleMenuService;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import com.starfire.familytree.vo.RoleMenuVO;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * <p>
 * 角色菜单控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@RestController
@RequestMapping("/security/role_menu")
@Api(tags = "角色菜单模块")
public class RoleMenuController {
    @Autowired
    private IRoleMenuService roleMenuService;

    @Autowired
    private IRoleMenuRightService roleMenuRightService;

    @Autowired
    private IMenuService menuService;
    /**
     * 新增或修改 ,先删除所有菜单
     *
     * @return
     * @author luzh
     */
    @PostMapping("/addOrUpdate")
    public Response<String> addOrUpdateRoleMenu(@RequestBody RoleMenuVO roleMenuVo) {
        String roleId = roleMenuVo.getRoleId();
        List<String> menuIds = roleMenuVo.getMenuIds();
            HashSet<Long> menuSet=new HashSet();
            HashSet<Long> menuRightSet=new HashSet();

        for (int i = 0; i < menuIds.size(); i++) {
            String s =  menuIds.get(i);
            boolean matches = s.matches("\\d+-\\d+-\\d+");
            if(matches){
                String[] split = s.split("-");
                String s1 = split[0];
                String s2 = split[1];
                String s3 = split[2];
                Long menuId= Long.valueOf(s2);
                Long menuRightId= Long.valueOf(s3);
                menuSet.add(menuId);
                menuRightSet.add(menuRightId);
            }
        }
        List<Boolean> rs=new ArrayList<Boolean>();
        roleMenuService.deleteByRoleId(Long.valueOf(roleId));
        for (Long menuId : menuSet) {
            RoleMenu roleMenu=new RoleMenu();
            roleMenu.setMenuId(menuId);
            roleMenu.setRoleId(Long.valueOf(roleId));
            roleMenu.setOwn(roleMenuVo.getOwn());
            boolean flag = roleMenuService.saveOrUpdate(roleMenu);
            roleMenuRightService.deleteByMenuId(menuId);
            for (Long menuRightId : menuRightSet) {
                RoleMenuRight roleMenuRight = new RoleMenuRight();
                roleMenuRight.setMenuId(menuId);
                roleMenuRight.setMenuRightId(menuRightId);
                roleMenuRight.setRoleMenuId(roleMenu.getId());
                roleMenuRightService.saveOrUpdate(roleMenuRight);
            }
        }
        Response<String> response = new Response<String>();
        return response.success("保存成功");

    }

    /**
     * 提取父和子menuId
     * @param menuIds
     * @return
     */
    private List<Long> mergeParentAndChildMenusIds(List<String> menuIds){
        List<Long> list=new ArrayList<Long>();
        for (String menuId : menuIds) {
            list.add(Long.valueOf(menuId));
        }
        List<Long> mergeList =menuService.getParentMenuIds(list);
        list.addAll(mergeList);
        return list;
    }

    /**
     * 删除
     *
     * @return
     * @author luzh
     */
    @PostMapping("/delete")
    public Response<String> deleteRoleMenu(@RequestBody DeleteVO<String[]> deleteVO) {
        String[] ids = deleteVO.getIds();
        boolean flag = roleMenuService.removeByIds(Arrays.asList(ids));
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
    public Response<PageInfo<Map<String, Object>, RoleMenu>> page(@RequestBody(required = false) PageInfo<Map<String, Object>, RoleMenu> page) {
        if(page==null){
            page=new PageInfo<>();
        }
        PageInfo<Map<String, Object>, RoleMenu> pageInfo = roleMenuService.page(page);
        Response<PageInfo<Map<String, Object>, RoleMenu>> response = new Response<PageInfo<Map<String, Object>, RoleMenu>>();
        return response.success(pageInfo);

    }

    @GetMapping("/getRoleMenuByRoleId")
    public Response<RoleMenuVO> getRoleMenuByRoleId(Long roleId) {
        RoleMenuVO rmvo= roleMenuService.getRoleMenuByRoleId(roleId);
        Response<RoleMenuVO> response = new Response<RoleMenuVO>();
        return response.success(rmvo);

    }

}
