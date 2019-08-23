package com.starfire.familytree.folk.controller;


import com.starfire.familytree.folk.entity.CategoryContent;
import com.starfire.familytree.folk.service.ICategoryContentService;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * <p>
 * 类别具体内容
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
@RestController
@RequestMapping("/folk/category_content")
@Api("分类内容模块")
public class CategoryContentController {

    @Autowired
    private ICategoryContentService categoryContentService;

    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @PostMapping("/page")
    public PageInfo<Map<String, Object>, CategoryContent> page(@RequestBody(required = false) PageInfo<Map<String, Object>, CategoryContent> page) {
        page=page==null?new PageInfo<Map<String, Object>, CategoryContent>():page;
        PageInfo<Map<String, Object>, CategoryContent> pageInfo = categoryContentService.page(page);
        return pageInfo;

    }

    @PostMapping("/add")
    public Boolean addCategoryContent(@RequestBody CategoryContent categoryContent) {
        boolean b = categoryContentService.save(categoryContent);
        return b;
    }

    @PostMapping("/delete")
    public Boolean deleteCategoryContent(@RequestBody DeleteVO<Long[]> deleteVO) {
        Long[] ids = deleteVO.getIds();
        for (int i = 0; i < ids.length; i++) {
            Long id = Long.valueOf(ids[i]);
            boolean b = categoryContentService.removeById(id);

        }
        return true;
    }

    @GetMapping("/get")
    public CategoryContent getCategoryContent(Long id) {
        CategoryContent categoryContent = categoryContentService.getById(id);
        return categoryContent;
    }

    @PostMapping("/edit")
    public Boolean editCategoryContent(@RequestBody CategoryContent categoryContent) {
        boolean b = categoryContentService.updateById(categoryContent);
        return b;
    }
}
