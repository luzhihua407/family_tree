package com.starfire.familytree.bs.service;

import com.starfire.familytree.bs.entity.ImageFile;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author luzh
 * @since 2019-12-18
 */
public interface IImageFileService extends IService<ImageFile> {

    public List<ImageFile> getImageFiles(Long otherId);
}
