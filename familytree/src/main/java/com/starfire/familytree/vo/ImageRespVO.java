package com.starfire.familytree.vo;

import com.starfire.familytree.bs.entity.ImageFile;
import com.starfire.familytree.response.Response;
import lombok.Data;

import java.util.List;

/**
 * @author luzh
 * @version 1.0.0
 * @ClassName ImageRespVO.java
 * @Description TODO
 * @createTime 2019年12月19日 20:26:00
 */
@Data
public class ImageRespVO {
    private List<FileInfoVO> fileList;
}
