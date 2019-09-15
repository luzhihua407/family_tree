package com.starfire.familytree.folk.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.folk.entity.Category;
import com.starfire.familytree.folk.mapper.CategoryMapper;
import com.starfire.familytree.folk.service.ICategoryService;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
@Service
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, Category> implements ICategoryService {


    @Override
    public PageInfo<Map<String, Object>, Category> page(PageInfo<Map<String, Object>, Category> pageInfo) {
        Map<String, Object> param = pageInfo.getParam();
        Page<Category> page = pageInfo.toMybatisPlusPage();
        Page<Category> result = baseMapper.getPage(page,param);
        pageInfo.from(result);
        return pageInfo;
    }

    @Override
    public List<Category> getCategoryList() {

        return baseMapper.getCategoryList();
    }
}
