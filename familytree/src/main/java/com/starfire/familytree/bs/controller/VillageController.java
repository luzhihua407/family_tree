package com.starfire.familytree.bs.controller;


import com.starfire.familytree.bs.entity.Village;
import com.starfire.familytree.bs.service.IVillageService;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author luzh
 * @since 2019-11-12
 */
@RestController
@RequestMapping("/bs/village")
public class VillageController {

    @Autowired
    private IVillageService villageService;

    /**
     * 新增或修改
     *
     * @param village
     * @return
     * @author luzh
     */
    @PostMapping("/addOrUpdate")
    public Response<Village> addOrUpdateVillage(@RequestBody @Valid Village village) {
        String code = village.getCode();
        if(village.getId()==null){

            Village d = villageService.getVillage(code);
            if(d!=null){
                throw  new RuntimeException("乡村编码"+code+"已存在，请换一个");
            }
        }
        villageService.saveOrUpdate(village);
        Response<Village> response = new Response<Village>();
        return response.success(village);

    }

    /**
     * 删除
     *
     * @return
     * @author luzh
     */
    @PostMapping("/delete")
    public Response<String> deleteVillage(@RequestBody DeleteVO<Long[]> deleteVO) {
        Long[] ids = deleteVO.getIds();
        boolean flag = villageService.removeByIds(Arrays.asList(ids));
        Response<String> response = new Response<String>();
        if (!flag) {
            return response.failure();
        }
        return response.success();

    }

    /**
     * 获取乡村详情
     * @param id
     * @return
     */
    @GetMapping("/get")
    public Response<Village> getVillage(@RequestParam(required = true) Long id) {
        Village village = villageService.getById(id);
        Response<Village> response = new Response<>();
        return response.success(village);

    }
    /**
     * 获取乡村详情
     * @return
     */
    @GetMapping("/getCurrentVillage")
    public Response<Village> getCurrentVillage() {
        Village village = villageService.getVillage("changqitang");
        Response<Village> response = new Response<>();
        return response.success(village);

    }

 /**
     * 获取乡村概述
     * @return
     */
    @GetMapping("/getOverview")
    public Response<Map<String, List<Map<String, String>>>> getOverview() {
        String villageCode=null;
        Map<String, List<Map<String, String>>> map = villageService.getOverview(villageCode);
        Response<Map<String, List<Map<String, String>>>> response = new Response<>();
        return response.success(map);

    }


    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @PostMapping("/page")
    public Response<PageInfo<Map<String, Object>, Village>> page(@RequestBody(required = false) PageInfo<Map<String, Object>, Village> page) {
        page=page==null?new PageInfo<>():page;
        PageInfo<Map<String, Object>, Village> pageInfo = villageService.page(page);
        Response<PageInfo<Map<String, Object>, Village>> response = new Response<PageInfo<Map<String, Object>, Village>>();
        return response.success(pageInfo);

    }

}
