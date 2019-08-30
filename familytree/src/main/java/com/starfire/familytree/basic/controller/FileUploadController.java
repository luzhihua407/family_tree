package com.starfire.familytree.basic.controller;

import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * @version 1.0
 * @author: Luzh
 * @date: 2019/8/30 17:59
 */
@Slf4j
@RequestMapping("/upload")
@Api(tags = "文件上传接口")
public class FileUploadController {

    @PostMapping(value = "/upload")
    public String upload(@RequestParam(required = true) MultipartFile file) {



    }
}
