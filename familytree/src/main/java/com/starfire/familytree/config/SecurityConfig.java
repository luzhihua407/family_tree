package com.starfire.familytree.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().anyRequest();
        web.ignoring().antMatchers("/usercenter/user/registration");
        web.ignoring().antMatchers("/login");
        web.ignoring().antMatchers("/doLogin");
        web.ignoring().antMatchers("/bashboard");
        web.ignoring().antMatchers("/bower_components/**", "/dist/**", "/plugins/**");
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        http.httpBasic().disable();
        http
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/user/registration").permitAll()
                .antMatchers("/folk/*").anonymous()
                .anyRequest().authenticated();
    }
}