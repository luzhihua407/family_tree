//package com.starfire.familytree.config;
//
//import javax.sql.DataSource;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
//import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
//import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
//import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
//import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
//import org.springframework.security.oauth2.provider.token.TokenStore;
//import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;
//
//import com.starfire.familytree.usercenter.service.impl.UserServiceImpl;
//
//@Configuration
//@EnableAuthorizationServer
//public class AuthorizationServerConfig extends AuthorizationServerConfigurerAdapter {
//
//	@Autowired
//	private DataSource dataSource;
//
//	AuthenticationManager authenticationManager;
//
//	public AuthorizationServerConfig(AuthenticationConfiguration authenticationConfiguration) throws Exception {
//		this.authenticationManager = authenticationConfiguration.getAuthenticationManager();
//	}
//
//	@Autowired
//	private UserServiceImpl userDetailsService;
//
//	@Bean
//	public TokenStore tokenStore() {
//		return new JdbcTokenStore(dataSource);
//
//	}
//
//	@Bean
//	public PasswordEncoder passwordEncoder() {
//		return new BCryptPasswordEncoder();
//	}
//
//	@Override
//	public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
//		security.tokenKeyAccess("permitAll()").checkTokenAccess("isAuthenticated()");
//	}
//
//	@Override
//	public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
//	    MyCustomJdbcClientDetailsServiceBuilder clientDetailsServiceBuilder = new MyCustomJdbcClientDetailsServiceBuilder();
//	    clientDetailsServiceBuilder.dataSource(dataSource).passwordEncoder(passwordEncoder()).withClient("family_tree").secret("family_tree")
//				.scopes("read", "write").authorizedGrantTypes("password", "authorization_code", "client_credentials").resourceIds("family_tree-resource")
//				.accessTokenValiditySeconds(100000);
//	    clients.setBuilder(clientDetailsServiceBuilder);
//	}
//
//	@Override
//	public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
//		endpoints.tokenStore(tokenStore()).authenticationManager(authenticationManager)
//				.userDetailsService(userDetailsService);
//	}
//
//}
