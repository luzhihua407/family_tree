package com.starfire.familytree.usercenter.controller;


import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.WebRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.service.OnRegistrationCompleteEvent;
import com.starfire.familytree.usercenter.entity.User;
import com.starfire.familytree.usercenter.service.IUserService;
import com.starfire.familytree.vo.UserVO;

/**
 * <p>
 *  前端控制器
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
	ApplicationEventPublisher eventPublisher;
	
	@RequestMapping({"/current" })
	public UserVO user(Principal principal) {
		OAuth2Authentication auth=(OAuth2Authentication)principal;
		UserVO userVO =(UserVO) auth.getPrincipal();
		return userVO;
	}

	


	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public Response registerUserAccount(@ModelAttribute("user") @Valid User user, BindingResult result,
			WebRequest request, Errors errors) throws JsonProcessingException {
		User registered = new User();
		if (!result.hasErrors()) {
			registered = createUserAccount(user, result);
			if (registered == null) {
				result.rejectValue("email", "message.regError");
			}else {
				
			}
			String appUrl = request.getContextPath();
			eventPublisher.publishEvent(new OnRegistrationCompleteEvent
					(registered, request.getLocale(), appUrl));
		}else {
			List<FieldError> fieldErrors = result.getFieldErrors();
			String jsonString = Jackson2ObjectMapperBuilder.json().build().writeValueAsString(fieldErrors);
			return Response.failure(100, jsonString);
		}
		Response<Boolean> response = new Response<Boolean>();
		return response.success(null);
	}

	private User createUserAccount(User user, BindingResult result) {
		User registered = null;
		registered = userService.registerNewUserAccount(user);
		return registered;
	}
}

