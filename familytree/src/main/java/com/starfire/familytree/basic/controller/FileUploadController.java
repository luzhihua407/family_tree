package com.starfire.familytree.basic.controller;

import com.starfire.familytree.basic.entity.Region;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.vo.PageInfo;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;

/**
 * @version 1.0
 * @author: Luzh
 * @date: 2019/8/30 17:59
 */
@Slf4j
@RestController
@RequestMapping("/file_upload")
@Api(tags = "文件上传接口")
public class FileUploadController {
    private String filePath=System.getProperty("user.home");
    @RequestMapping(value = "/upload")
    public Response<String> upload(@RequestParam("file") MultipartFile multipartFile) {
            Response<String> response = new Response<>();
        try {
            String filename = multipartFile.getOriginalFilename();
            File file=new File(filePath+"\\"+filename);
            FileOutputStream outputStream = new FileOutputStream(file);
            IOUtils.copy(multipartFile.getInputStream(),outputStream);
            return response.success(file.getPath());
        } catch (FileNotFoundException e) {
            log.error(e.getMessage(),e);
        } catch (IOException e) {
            log.error(e.getMessage(),e);
        }

        return response.failure();

    }
}
