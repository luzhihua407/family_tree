package com.starfire.familytree;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class FamilytreeApplication extends SpringBootServletInitializer {
    private final static Logger log = LoggerFactory.getLogger(FamilytreeApplication.class);

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(FamilytreeApplication.class);
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(FamilytreeApplication.class, args);
    }

}
