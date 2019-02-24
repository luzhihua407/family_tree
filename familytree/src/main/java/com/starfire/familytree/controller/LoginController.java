package com.starfire.familytree.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.WebRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.starfire.familytree.entity.User;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.service.IUserService;
import com.starfire.familytree.service.OnRegistrationCompleteEvent;

@RestController
public class LoginController {

	@Autowired
	private IUserService userService;

	@Autowired
	ApplicationEventPublisher eventPublisher;
	
	public String login(String email, String password) {
		userService.findUserByEmail(email);
		return null;
	}


	@RequestMapping(value = "/user/registration", method = RequestMethod.POST)
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
		return Response.success("注册成功");
	}

	private User createUserAccount(User user, BindingResult result) {
		User registered = null;
		registered = userService.registerNewUserAccount(user);
		return registered;
	}
}
