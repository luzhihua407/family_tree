package com.starfire.familytree.bs.service.impl;

import com.starfire.familytree.bs.entity.ImageFile;
import com.starfire.familytree.bs.mapper.ImageFileMapper;
import com.starfire.familytree.bs.service.IImageFileService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-12-18
 */
@Service
public class ImageFileServiceImpl extends ServiceImpl<ImageFileMapper, ImageFile> implements IImageFileService {


    @Override
    public List<ImageFile> getImageFiles(Long otherId) {
        List<ImageFile> imageFiles = baseMapper.getImageFiles(otherId);
        for (int i = 0; i < imageFiles.size(); i++) {
            ImageFile imageFile =  imageFiles.get(i);
            imageFile.setPath("http://localhost/images/"+imageFile.getPath());
        }
        return imageFiles;
    }
}
