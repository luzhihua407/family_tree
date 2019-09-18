package com.starfire.familytree.usercenter.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.starfire.familytree.entity.VerificationToken;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.Menu;
import com.starfire.familytree.security.entity.Role;
import com.starfire.familytree.security.service.IMenuService;
import com.starfire.familytree.security.service.IRoleMenuService;
import com.starfire.familytree.security.service.IRoleService;
import com.starfire.familytree.security.service.IUserRoleService;
import com.starfire.familytree.service.IVerificationTokenService;
import com.starfire.familytree.service.OnRegistrationCompleteEvent;
import com.starfire.familytree.usercenter.entity.User;
import com.starfire.familytree.usercenter.service.IUserService;
import com.starfire.familytree.utils.FieldErrorUtils;
import com.starfire.familytree.vo.*;
import io.swagger.annotations.Api;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.util.Assert;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.ServletWebRequest;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.security.Principal;
import java.util.*;

/**
 * <p>
 * 用户控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@RestController
@RequestMapping("/usercenter/user")
@Api(tags = "用户接口")
public class UserController {
    @Autowired
    private IUserService userService;

    @Autowired
    private IVerificationTokenService service;

    @Autowired
    ApplicationEventPublisher eventPublisher;

    @Autowired
    private IMenuService menuService;

    @Autowired
    private IRoleMenuService roleMenuService;

    @Autowired
    private IRoleService roleService;

    @Autowired
    private IUserRoleService userRoleService;
    @RequestMapping("/current")
    public PrincipalVO user(Principal principal) {
        UsernamePasswordAuthenticationToken auth = (UsernamePasswordAuthenticationToken) principal;
        User user = (User) auth.getPrincipal();
        PrincipalVO principalVO=new PrincipalVO();
        UserVO userVO = new UserVO();
        BeanUtils.copyProperties(user, userVO);
        Collection<GrantedAuthority> authorities = auth.getAuthorities();
        for (GrantedAuthority grantedAuthority : authorities) {
            String roleCode = grantedAuthority.getAuthority();
            if(roleCode.startsWith("ROLE_")){
                roleCode=roleCode.replace("ROLE_","");
            }
            Role role = roleService.getRoleByCode(roleCode);
            Long roleId=role.getId();
            userVO.setRoleId(roleId);
            //这里按父-子 父-子 顺序取菜单，不然antd 无法正常显示菜单
            List<Menu> parentMenus = menuService.getParentMenusByRoleId(roleId);
            for (Menu parentMenu : parentMenus) {
                RouteVO route=new RouteVO();
                route.setIcon(parentMenu.getIcon());
                route.setId(parentMenu.getId().toString());
                route.setName(parentMenu.getName());
                route.setRoute(parentMenu.getUrl());
                principalVO.getMenus().add(route);
                Long parentId=parentMenu.getId();
                List<Menu> childMenu = menuService.getChildMenu(parentId);
                for (Menu menu : childMenu) {
                    route=new RouteVO();
                    route.setIcon(menu.getIcon());
                    route.setId(menu.getId().toString());
                    route.setName(menu.getName());
                    route.setRoute(menu.getUrl());
                    route.setBreadcrumbParentId(menu.getParent()==null?"":menu.getParent().toString());
                    route.setMenuParentId(menu.getParent()==null?"":menu.getParent().toString());
                    principalVO.getMenus().add(route);
                }
            }
        }
        principalVO.setUser(userVO);
        return principalVO;
    }

    @RequestMapping("/regitrationConfirm")
    public Response<String> regitrationConfirm(String token) {
        Response<String> response = new Response<String>();
        VerificationToken verificationToken = service.getVerificationToken(token);
        Long userId = verificationToken.getUserId();
        userService.activeUser(userId);
        return response.success(null);
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public Response registerUserAccount(@ModelAttribute("user") @Valid User user, BindingResult result,
                                        ServletWebRequest request, Errors errors) throws JsonProcessingException {
        User registered = new User();
        if (!result.hasErrors()) {
            registered = createUserAccount(user, result);
            if (registered == null) {
                result.rejectValue("email", "message.regError");
            } else {

            }
            String appUrl = "http://" + request.getRequest().getServerName() + ":"
                    + request.getRequest().getServerPort();
            eventPublisher.publishEvent(new OnRegistrationCompleteEvent(registered, request.getLocale(), appUrl));
        } else {
            List<FieldError> fieldErrors = result.getFieldErrors();
            String error = FieldErrorUtils.toString(fieldErrors);
            return Response.failure(100, error);
        }
        Response<Boolean> response = new Response<Boolean>();
        return response.success(null);
    }

    private User createUserAccount(User user, BindingResult result) {
        User registered = null;
        registered = userService.registerNewUserAccount(user);
        return registered;
    }

    /**
     * 新增或修改
     *
     * @param user
     * @return
     * @author luzh
     */
    @PostMapping("/addOrUpdate")
    public Response<User> addOrUpdateUser(@RequestBody(required = false) @Valid User user) {
        String username = user.getUsername();
        User byUserName = userService.getUserByUserName(username);
        if(byUserName!=null && user.getId()==null){
            throw  new  RuntimeException("该用户名已存在，请换一个用户名");
        }
        userService.saveOrUpdateUser(user);
        Response<User> response = new Response<User>();
        return response.success(user);

    }

    /**
     * 删除
     *
     * @return
     * @author luzh
     */
    @PostMapping("/delete")
    public Response<String> deleteUser(@RequestBody DeleteVO<Long[]> deleteVO) {
        boolean flag = false;
        Long[] ids = deleteVO.getIds();
        flag = userService.removeByIds(Arrays.asList(ids));
        Response<String> response = new Response<String>();
        if (!flag) {
            return response.failure();
        }
        return response.success();

    }
    /**
     * 获取单个用户
     *
     * @return
     * @author luzh
     */
    @GetMapping("/get")
    public Response<User> getUser(Long id) {
        User user = userService.getById(id);
        List<Long> userId = userRoleService.getRoleIdsByUserId(user.getId());
        String[] roles=new String[userId.size()];
        for (int i = 0; i < userId.size(); i++) {
            Long aLong =  userId.get(i);
            roles[i]=String.valueOf(aLong);
        }
            user.setRoles(roles);
        Response<User> response = new Response<>();
        return response.success(user);

    }

    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @PostMapping("/page")
    public Response<PageInfo<Map<String, Object>, User>> page(@RequestBody(required = false)  PageInfo<Map<String, Object>, User> page) {
        page=page==null?new PageInfo<>():page;
        PageInfo<Map<String, Object>, User> pageInfo = userService.page(page);
        Response<PageInfo<Map<String, Object>, User>> response = new Response<PageInfo<Map<String, Object>, User>>();
        return response.success(pageInfo);

    }

    @PostMapping("/resetPassword")
    public Response resetPassword(@RequestBody ResetPasswordVO resetPasswordVO) {
       String password = resetPasswordVO.getPassword();
         String againPassword = resetPasswordVO.getAgainPassword();
         if(!password.equals(againPassword)){
             throw new RuntimeException("两次密码不一致，请检查");
         }
        userService.resetPassword(resetPasswordVO);
        Response response = new Response();
        return response.success();

    }


}
