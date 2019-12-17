package com.starfire.familytree.bs.controller;


import com.starfire.familytree.bs.entity.Village;
import com.starfire.familytree.bs.service.IVillageService;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import org.apache.commons.lang.math.NumberUtils;
import org.apache.commons.math3.util.MathUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.text.DecimalFormat;
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
    public Response<Map<String, Object>> getOverview() {
        String villageCode=null;
        Map<String, Object> map = villageService.getOverview(villageCode);
        Response<Map<String, Object>> response = new Response<>();
        return response.success(map);

    }

    public static void main(String[] args) {
        String word="10";
        for (int i = 0; i <1 ; i++) {
            double pow = Math.pow(10, 60);
            DecimalFormat   df   =   new DecimalFormat( "#,##0.00 ");
//保留两位小数且不用科学计数法，并使用千分位
            String   value   =   df.format(pow);
            System.err.println(value);
        }
    }
    /*/**
     * @title 判断是否已经存在该村名
     * @description 
     * @author luzh 
     * @updateTime   
     * @throws 
     */
    @GetMapping("/getVillageName")
    public Response<List<String>> getVillageName(String name) {
        List<String> list = villageService.getVillageName(name);
        Response<List<String>> response = new Response<>();
        return response.success(list);
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
