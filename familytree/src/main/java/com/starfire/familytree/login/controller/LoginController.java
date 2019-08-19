package com.starfire.familytree.login.controller;

import java.io.IOException;
import java.security.Principal;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.starfire.familytree.login.vo.LoginReq;

@Controller
public class LoginController {

	@Autowired
	private RestTemplate rt;

	@Autowired
	private OAuth2RestTemplate ort;

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/bashboard")
	public String bashboard() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			return "bashboard";
	}

	@RequestMapping("/doLogin")
	public String doLogin(@Valid LoginReq loginReq,HttpServletResponse response) throws IOException {
		UriComponents uc = ServletUriComponentsBuilder.fromCurrentRequest().path("/oauth/token").build();
		String uriString = uc.toUriString().replace("/doLogin", "");
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
		headers.add("Authorization", "Basic ZmFtaWx5X3RyZWU6ZmFtaWx5X3RyZWU=");
		MultiValueMap<String,String> map=new LinkedMultiValueMap<>();
		map.add("grant_type", loginReq.getGrant_type());
		map.add("password", loginReq.getPassword());
		map.add("scope", loginReq.getScope());
		map.add("username", loginReq.getUsername());
		 HttpEntity<MultiValueMap<String,String>> entity = new HttpEntity<MultiValueMap<String,String>>(map, headers);
		ResponseEntity<JsonNode> responseEntity = rt.postForEntity(uriString, entity, JsonNode.class);
		JsonNode node = responseEntity.getBody();
		String access_token = node.findValue("access_token").asText();

		if(StringUtils.isNotEmpty(access_token)) {
			response.addHeader("Authorization","bearer "+access_token);
			response.sendRedirect("/bashboard");
		}
		return "login";
	}
}
