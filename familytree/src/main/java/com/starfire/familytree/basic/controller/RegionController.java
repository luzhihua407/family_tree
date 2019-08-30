package com.starfire.familytree.basic.controller;

import com.starfire.familytree.basic.entity.Dict;
import com.starfire.familytree.basic.entity.Region;
import com.starfire.familytree.basic.service.IRegionService;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.Arrays;
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
@Api(tags = "地区接口")
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
    @PostMapping("/addOrUpdate")
    public Response<Region> addOrUpdateRegion(@RequestBody @Valid Region region) {
        regionService.saveOrUpdate(region);
        Response<Region> response = new Response<Region>();
        return response.success(region);

    }

    /**
     * 删除
     *
     * @return
     * @author luzh
     */
    @PostMapping("/delete")
    public Response<String> deleteRegion(@RequestBody DeleteVO<Long[]> deleteVO) {
        Long[] ids = deleteVO.getIds();
        boolean flag = regionService.removeByIds(Arrays.asList(ids));
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
    @PostMapping("/page")
    public Response<PageInfo<Map<String, Object>, Region>> page(@RequestBody PageInfo<Map<String, Object>, Region> page) {
        PageInfo<Map<String, Object>, Region> pageInfo = regionService.page(page);
        Response<PageInfo<Map<String, Object>, Region>> response = new Response<PageInfo<Map<String, Object>, Region>>();
        return response.success(pageInfo);

    }

    /**
     * 获取字典详情
     * @param id
     * @return
     */
    @GetMapping("/get")
    public Response<Region> getDict(@RequestParam(required = true) Long id) {

        Region region = regionService.getById(id);
        Response<Region> response = new Response<>();
        return response.success(region);

    }
}
