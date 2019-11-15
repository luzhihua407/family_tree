package com.starfire.familytree.bs.controller;


import com.starfire.familytree.bs.service.IVillageService;
import com.starfire.familytree.entity.VerificationToken;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.service.IVerificationTokenService;
import com.starfire.familytree.service.OnForgotPasswordEvent;
import com.starfire.familytree.service.OnRegistrationCompleteEvent;
import com.starfire.familytree.usercenter.entity.User;
import com.starfire.familytree.usercenter.service.IUserService;
import com.starfire.familytree.utils.FieldErrorUtils;
import com.starfire.familytree.vo.SignUpUserVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.ServletWebRequest;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  注册控制器
 * </p>
 *
 * @author luzh
 * @since 2019-11-12
 */
@Controller
@RequestMapping("/SignUp")
public class SignUpController {

    @Autowired
    private IVillageService villageService;

    @Autowired
    private IUserService userService;

    @Autowired
    private ApplicationEventPublisher eventPublisher;
    
    @Autowired
    private IVerificationTokenService verificationTokenService;

    @Value("${web.loginPage}")
    private String loginPage ;
    /*/**
     * @title 判断是否已经存在该村名
     * @description 
     * @author luzh 
     * @updateTime   
     * @throws 
     */
    @ResponseBody
    @GetMapping("/getVillageName")
    public Response<List<String>> getVillageName(String name) {
        List<String> list=new ArrayList<>();
        list = villageService.getVillageName(name);
        Response<List<String>> response = new Response<>();
        return response.success(list);
    }

    @ResponseBody
    @PostMapping(value = "/signUp")
    public Response signUp(@RequestBody @Valid SignUpUserVO userVO, BindingResult result,
                           ServletWebRequest request, Errors errors) {
        User newUser = new User();
        if (!result.hasErrors()) {
            User user=new User();
            BeanUtils.copyProperties(userVO,user);
            newUser = createUserAccount(user);
            if (newUser == null) {
                result.rejectValue("email", "message.regError");
            } else {

            }
            String appUrl = "http://" + request.getRequest().getServerName() + ":"
                    + request.getRequest().getServerPort();
            eventPublisher.publishEvent(new OnRegistrationCompleteEvent(newUser, request.getLocale(), appUrl));
        } else {
            List<FieldError> fieldErrors = result.getFieldErrors();
            String error = FieldErrorUtils.toString(fieldErrors);
            return Response.failure(100, error);
        }
        Response<Boolean> response = new Response<Boolean>();
        return response.success(null);
    }
    /*/**
     * @title 注册后激活账户页面
     * @description 
     * @author luzh 
     * @updateTime   
     * @throws 
     */
    @RequestMapping("/regitrationConfirm")
    public String regitrationConfirm(String token, Model model) {
        VerificationToken verificationToken = verificationTokenService.getVerificationToken(token);
        Long userId = verificationToken.getUserId();
        try{
            Boolean isActive = userService.activeUser(userId);
        }catch (RuntimeException e){
            model.addAttribute("error",e.getMessage());
        }
            model.addAttribute("loginPage",loginPage);
        return "ActiveAccountResult";
    }

    @ResponseBody
    @RequestMapping("/forgotPassword")
    public void forgotPassword(String email, ServletWebRequest request) {
        String appUrl = "http://" + request.getRequest().getServerName() + ":"
                + request.getRequest().getServerPort();
        eventPublisher.publishEvent(new OnForgotPasswordEvent(email));
    }

    private User createUserAccount(User user) {
        User newUser = null;
        newUser = userService.registerNewUserAccount(user);
        return newUser;
    }

}
