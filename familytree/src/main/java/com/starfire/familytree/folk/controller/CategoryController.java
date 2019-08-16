package com.starfire.familytree.folk.controller;


import com.starfire.familytree.folk.entity.Category;
import com.starfire.familytree.folk.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 *  前端控制器
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

    @PostMapping("/add")
    public String addCategory(Category category){
        categoryService.save(category);
        return null;
    }

    @DeleteMapping("/delete")
    public String deleteCategory(Long id){
        categoryService.removeById(id);
        return null;
    }

    @GetMapping("/get")
    public String getCategory(Long id){
        Category category = categoryService.getById(id);
        return null;
    }

    @PutMapping("/get")
    public String editCategory(Category category){
        categoryService.updateById(category);
        return null;
    }
}
