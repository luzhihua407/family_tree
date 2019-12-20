package com.starfire.familytree.basic.controller;

import com.starfire.familytree.basic.entity.Region;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.vo.PageInfo;
import com.starfire.familytree.vo.UploadResponse;
import io.swagger.annotations.Api;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.awt.image.BufferedImage;
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

    @Value("${village.upload.dir}")
    private String filePath;

    @RequestMapping(value = "/upload")
    public Response<UploadResponse> upload(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) {
            Response<UploadResponse> response = new Response<>();
        try {
            String filename = multipartFile.getOriginalFilename();
            File file=new File(filePath+"\\"+filename);
            FileOutputStream outputStream = new FileOutputStream(file);
            IOUtils.copy(multipartFile.getInputStream(),outputStream);
            BufferedImage sourceImg= ImageIO.read(multipartFile.getInputStream());
            int width = sourceImg.getWidth();
            int height = sourceImg.getHeight();
            UploadResponse uploadResponse = new UploadResponse();
            String fileName = file.getName();
            uploadResponse.setHeight(height);
            uploadResponse.setWidth(width);
            uploadResponse.setName(fileName);
            uploadResponse.setUrl("/village/"+fileName);
            uploadResponse.setThumbUrl(file.getPath());
            return response.success(uploadResponse);
        } catch (FileNotFoundException e) {
            log.error(e.getMessage(),e);
        } catch (IOException e) {
            log.error(e.getMessage(),e);
        }

        return response.failure();

    }


}

