package com.starfire.familytree.bs.controller;


import com.starfire.familytree.bs.entity.ImageFile;
import com.starfire.familytree.bs.entity.Village;
import com.starfire.familytree.bs.service.IImageFileService;
import com.starfire.familytree.bs.service.IVillageService;
import com.starfire.familytree.response.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author luzh
 * @since 2019-12-18
 */
@RestController
@RequestMapping("imageFile")
public class ImageFileController {

    @Autowired
    private IVillageService villageService;

    @Autowired
    private IImageFileService imageFileService;

    @GetMapping("/getVillageImages")
    public Response<Object> getVillageImages() {
        String villageCode="changqitang";
        Village village = villageService.getVillage(villageCode);
        List<ImageFile> imageFiles = imageFileService.getImageFiles(village.getId());
        Response<Object> response = new Response<>();
        Map<String,Object> map=new HashMap<>();
        map.put("images",imageFiles);
        return response.success(map);

    }

}
