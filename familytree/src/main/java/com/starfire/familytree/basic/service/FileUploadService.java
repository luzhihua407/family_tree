package com.starfire.familytree.basic.service;

import java.io.InputStream;

/**
 * @version 1.0
 * @author: Luzh
 * @date: 2019/8/30 17:55
 */
public interface FileUploadService {

    public String upload(InputStream inputStream,String path);
}
