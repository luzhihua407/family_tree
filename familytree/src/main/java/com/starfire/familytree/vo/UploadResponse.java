package com.starfire.familytree.vo;

import lombok.Data;

/**
 * @author luzh
 * @version 1.0.0
 * @ClassName a.java
 * @Description TODO
 * @createTime 2019年12月19日 21:07:00
 */
@Data
public class UploadResponse{
    private  String name;
    private  String status= "done";
    private  String thumbUrl;
    private  String url;
    private  int height;
    private  int width;
}