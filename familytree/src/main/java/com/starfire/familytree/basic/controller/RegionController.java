package com.starfire.familytree.basic.controller;

import com.starfire.familytree.basic.entity.Region;
import com.starfire.familytree.basic.service.IRegionService;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.Map;

/**
 * <p>
 * 省市区控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-07
 */
@RestController
@RequestMapping("/basic/region")
public class RegionController {
    @Autowired
    private IRegionService regionService;

    /**
     * 新增或修改
     *
     * @param region
     * @return
     * @author luzh
     */
    @RequestMapping("/addOrUpdate")
    public Response<Region> addOrUpdateRegion(@RequestBody Region region, Principal principal) {
        regionService.saveOrUpdate(region);
        Response<Region> response = new Response<Region>();
        return response.success(region);

    }

    /**
     * 删除
     *
     * @param id
     * @return
     * @author luzh
     */
    @GetMapping("/delete")
    public Response<String> deleteRegion(Long id) {
        boolean flag = regionService.removeById(id);
        Response<String> response = new Response<String>();
        if (!flag) {
            return response.failure();
        }
        return response.success();

    }

    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @RequestMapping("/page")
    public Response<PageInfo<Map<String, Object>, Region>> page(@RequestBody PageInfo<Map<String, Object>, Region> page) {
        PageInfo<Map<String, Object>, Region> pageInfo = regionService.page(page);
        Response<PageInfo<Map<String, Object>, Region>> response = new Response<PageInfo<Map<String, Object>, Region>>();
        return response.success(pageInfo);

    }
}
