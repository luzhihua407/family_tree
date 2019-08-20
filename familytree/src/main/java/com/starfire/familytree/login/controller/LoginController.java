package com.starfire.familytree.login.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.starfire.familytree.login.vo.LoginReq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;

@RestController
public class LoginController {

	@Autowired
	private RestTemplate rt;

	@Autowired
	private OAuth2RestTemplate ort;


	@RequestMapping("/doLogin")
	public String doLogin(@Valid @RequestBody LoginReq loginReq){
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
		return access_token;
	}
}
