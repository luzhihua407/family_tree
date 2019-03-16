package com.starfire.familytree.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.event.ApplicationEventMulticaster;
import org.springframework.context.event.SimpleApplicationEventMulticaster;
import org.springframework.core.task.SimpleAsyncTaskExecutor;
import org.springframework.web.filter.CommonsRequestLoggingFilter;

@SpringBootConfiguration
@EnableAutoConfiguration
@MapperScan({"com.starfire.familytree.*.mapper","com.starfire.familytree.mapper"})
public class ApplicationConfig {

	  @Bean(name = "applicationEventMulticaster")
	    public ApplicationEventMulticaster simpleApplicationEventMulticaster() {
	        SimpleApplicationEventMulticaster eventMulticaster 
	          = new SimpleApplicationEventMulticaster();
	         
	        eventMulticaster.setTaskExecutor(new SimpleAsyncTaskExecutor());
	        return eventMulticaster;
	    }
	  @Bean
	    public CommonsRequestLoggingFilter logFilter() {
	        CommonsRequestLoggingFilter filter
	          = new CommonsRequestLoggingFilter();
	        filter.setIncludeQueryString(true);
	        filter.setIncludePayload(true);
	        filter.setMaxPayloadLength(10000);
	        filter.setIncludeHeaders(false);
	        filter.setAfterMessagePrefix("REQUEST DATA : ");
	        return filter;
	    }
}
