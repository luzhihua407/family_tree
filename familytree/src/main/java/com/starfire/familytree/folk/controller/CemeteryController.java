package com.starfire.familytree.folk.controller;


import com.starfire.familytree.folk.entity.Cemetery;
import com.starfire.familytree.folk.service.ICemeteryService;
import com.starfire.familytree.folk.service.ICemeteryService;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author luzh
 * @since 2019-10-07
 */
@RestController
@RequestMapping("/folk/cemetery")
public class CemeteryController {
    @Autowired
    private ICemeteryService cemeteryService;

    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @PostMapping("/page")
    public PageInfo<Map<String, Object>, Cemetery> page(@RequestBody(required = false) PageInfo<Map<String, Object>, Cemetery> page) {
        if(page==null){
            page=new PageInfo<>();
        }
        PageInfo<Map<String, Object>, Cemetery> pageInfo = cemeteryService.page(page);
        return pageInfo;

    }

    @PostMapping("/add")
    public Boolean addCemetery(@RequestBody Cemetery cemetery) {
        boolean b = cemeteryService.save(cemetery);
        return b;
    }

    @PostMapping("/delete")
    public Boolean deleteCemetery(@RequestBody DeleteVO<Long[]> deleteVO) {
        Long[] ids = deleteVO.getIds();
        for (int i = 0; i < ids.length; i++) {
            Long id = Long.valueOf(ids[i]);
            boolean b = cemeteryService.removeById(id);

        }
        return true;
    }

    @GetMapping("/get")
    public Cemetery getCemetery(Long id) {
        Cemetery cemetery = cemeteryService.getById(id);
        return cemetery;
    }


    @PostMapping("/edit")
    public Boolean editCemetery(@RequestBody Cemetery cemetery) {
        boolean b = cemeteryService.updateById(cemetery);
        return b;
    }
}
