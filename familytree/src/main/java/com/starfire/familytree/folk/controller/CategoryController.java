package com.starfire.familytree.folk.controller;


import com.starfire.familytree.folk.entity.Category;
import com.starfire.familytree.folk.service.ICategoryService;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
@RestController
@RequestMapping("/folk/category")
public class CategoryController {

    @Autowired
    private ICategoryService categoryService;

    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @RequestMapping("/page")
    public PageInfo<Map<String, Object>, Category> page(@RequestBody(required = false) PageInfo<Map<String, Object>, Category> page) {
        PageInfo<Map<String, Object>, Category> pageInfo = categoryService.page(page);
        return pageInfo;

    }

    @PostMapping("/add")
    public Boolean addCategory(@RequestBody Category category) {
        boolean b = categoryService.save(category);
        return b;
    }

    @PostMapping("/delete")
    public Boolean deleteCategory(@RequestBody DeleteVO deleteVO) {
        Long[] ids = deleteVO.getIds();
        for (int i = 0; i < ids.length; i++) {
            Long id = Long.valueOf(ids[i]);
            boolean b = categoryService.removeById(id);

        }
        return true;
    }

    @GetMapping("/get")
    public Category getCategory(Long id) {
        Category category = categoryService.getById(id);
        return category;
    }

    @PostMapping("/edit")
    public Boolean editCategory(@RequestBody Category category) {
        boolean b = categoryService.updateById(category);
        return b;
    }
}
