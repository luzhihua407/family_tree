//package com.starfire.familytree.config;
//
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//
//@Configuration
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//
//
//	@Override
//	public void configure(HttpSecurity http) throws Exception {
//	        http
//	                .csrf().disable()
//	                .authorizeRequests()
//	                .antMatchers("/user/registration").permitAll()
//	                .anyRequest().authenticated()
//	                .and().anonymous().disable();
//	    }
//}