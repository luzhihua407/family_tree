package com.starfire.familytree.usercenter.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.ServletWebRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.starfire.familytree.entity.VerificationToken;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.service.IVerificationTokenService;
import com.starfire.familytree.service.OnRegistrationCompleteEvent;
import com.starfire.familytree.usercenter.entity.User;
import com.starfire.familytree.usercenter.service.IUserService;
import com.starfire.familytree.utils.FieldErrorUtils;
import com.starfire.familytree.vo.PageInfo;
import com.starfire.familytree.vo.UserVO;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@RestController
@RequestMapping("/usercenter/user")
public class UserController {
	@Autowired
	private IUserService userService;

	@Autowired
	private IVerificationTokenService service;

	@Autowired
	ApplicationEventPublisher eventPublisher;

	@RequestMapping("/current")
	public UserVO user(Principal principal) {
		OAuth2Authentication auth = (OAuth2Authentication) principal;
		UserVO userVO = (UserVO) auth.getPrincipal();
		return userVO;
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
	@RequestMapping("/addOrUpdate")
	public Response<User> addOrUpdateUser(@RequestBody User user) {
		userService.saveOrUpdate(user);
		Response<User> response = new Response<User>();
		return response.success(user);

	}

	/**
	 * 删除
	 *
	 * @param id
	 * @return
	 * @author luzh
	 */
	@RequestMapping("/delete")
	public Response<String> deleteUser(@RequestBody Map<String,List<Long>> map) {
		boolean flag=false;
		List<Long> ids=map.get("ids");
			flag=userService.removeByIds(ids);
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
	public Response<PageInfo<Map<String, Object>, User>> page(
			@RequestBody() PageInfo<Map<String, Object>, User> page) {
		PageInfo<Map<String, Object>, User> pageInfo = userService.page(page);
		Response<PageInfo<Map<String, Object>, User>> response = new Response<PageInfo<Map<String, Object>, User>>();
		return response.success(pageInfo);

	}
}
