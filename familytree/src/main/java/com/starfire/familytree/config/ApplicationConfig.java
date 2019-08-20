package com.starfire.familytree.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.ApplicationEventMulticaster;
import org.springframework.context.event.SimpleApplicationEventMulticaster;
import org.springframework.core.task.SimpleAsyncTaskExecutor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.security.oauth2.client.resource.OAuth2ProtectedResourceDetails;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.filter.CommonsRequestLoggingFilter;
import springfox.documentation.swagger2.web.Swagger2Controller;

import javax.sql.DataSource;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.TimeZone;

@Configuration
public class ApplicationConfig {

    @Bean(name = "applicationEventMulticaster")
    public ApplicationEventMulticaster simpleApplicationEventMulticaster() {
        SimpleApplicationEventMulticaster eventMulticaster
                = new SimpleApplicationEventMulticaster();

        eventMulticaster.setTaskExecutor(new SimpleAsyncTaskExecutor());
        return eventMulticaster;
    }

//    @Bean
//    public CommonsRequestLoggingFilter logFilter() {
//        CommonsRequestLoggingFilter filter
//                = new CommonsRequestLoggingFilter();
//        filter.setIncludeQueryString(true);
//        filter.setIncludePayload(true);
//        filter.setMaxPayloadLength(10000);
//        filter.setIncludeHeaders(false);
//        filter.setAfterMessagePrefix("REQUEST DATA : ");
//        return filter;
//    }

    @Bean
    public RestTemplate rt() {
        return new RestTemplate();
    }

    @Bean
    public OAuth2RestTemplate ort(OAuth2ProtectedResourceDetails details) {
        OAuth2RestTemplate oAuth2RestTemplate = new OAuth2RestTemplate(details);
        return oAuth2RestTemplate;
    }
    @Bean
    public PasswordEncoder passwordEncoder() {

        return new BCryptPasswordEncoder();
    }

    @Bean
    @ConfigurationProperties("spring.datasource.druid")
    public DataSource dataSource() {
        return new DruidDataSource();
    }

    @org.springframework.beans.factory.annotation.Value("${spring.jackson.date-format:yyyy-MM-dd HH:mm:ss}")
    private String pattern;

    @Bean
    public LocalDateTimeSerializer localDateTimeDeserializer() {
        return new LocalDateTimeSerializer(DateTimeFormatter.ofPattern(pattern));
    }

    /**
     * 去掉时间格式中间的T字符
     * @return
     */
    @Bean
    public Jackson2ObjectMapperBuilderCustomizer jackson2ObjectMapperBuilderCustomizer() {
        return builder -> builder.serializerByType(LocalDateTime.class, localDateTimeDeserializer());
    }
}
