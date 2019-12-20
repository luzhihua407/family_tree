package com.starfire.familytree.bs.mapper;

import com.starfire.familytree.bs.entity.ImageFile;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-12-18
 */
public interface ImageFileMapper extends BaseMapper<ImageFile> {

    public List<ImageFile> getImageFiles(Long otherId);
}
