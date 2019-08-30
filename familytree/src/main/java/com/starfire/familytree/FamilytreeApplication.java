package com.starfire.familytree;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
public class FamilytreeApplication {

    private final static Logger log = LoggerFactory.getLogger(FamilytreeApplication.class);

    public static void main(String[] args) throws Exception {
        SpringApplication.run(FamilytreeApplication.class, args);
    }


}
