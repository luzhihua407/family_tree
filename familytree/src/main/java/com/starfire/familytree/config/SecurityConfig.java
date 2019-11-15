package com.starfire.familytree.config;

import com.starfire.familytree.filter.CustomAuthenticationFilter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.ForwardAuthenticationFailureHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Value("${web.loginPage}")
    private String loginPage ;


    @Value("${web.successUrl}")
    private String successUrl ;

    @Override
    public void configure(WebSecurity web){
//        web.ignoring().anyRequest();
        web.ignoring()
                .antMatchers(
                        "/v2/api-docs",
                        "/swagger-resources/**",
                        "/swagger-ui.html/**",
                        "/webjars/**");
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {

http.authorizeRequests().antMatchers("/v2/api-docs",
        "/swagger-resources/**",
        "/swagger-ui.html/**",
        "/webjars/**").permitAll();
        http.cors().and()
                .antMatcher("/**").authorizeRequests()
                .antMatchers("/login**","/logout","/SignUp/**").permitAll()
                .anyRequest().authenticated()
                //这里必须要写formLogin()，不然原有的UsernamePasswordAuthenticationFilter不会出现，也就无法配置我们重新的UsernamePasswordAuthenticationFilter
                .and().formLogin().loginPage(loginPage).and().logout().logoutSuccessUrl(loginPage)
                .and().csrf().disable();
        http.addFilterAt(customAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class);
    }
    @Bean
    CustomAuthenticationFilter customAuthenticationFilter() throws Exception {
        CustomAuthenticationFilter filter = new CustomAuthenticationFilter();

        filter.setAuthenticationSuccessHandler(new SimpleUrlAuthenticationSuccessHandler(successUrl));
        filter.setAuthenticationFailureHandler(new ForwardAuthenticationFailureHandler(loginPage));
//        filter.setFilterProcessesUrl("/login");
        //这句很关键，重用WebSecurityConfigurerAdapter配置的AuthenticationManager，不然要自己组装AuthenticationManager
        filter.setAuthenticationManager(authenticationManagerBean());
        return filter;
    }
    @Bean // share AuthenticationManager for web and oauth
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }
}