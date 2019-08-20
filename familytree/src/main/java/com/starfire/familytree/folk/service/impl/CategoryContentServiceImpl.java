package com.starfire.familytree.folk.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.folk.entity.CategoryContent;
import com.starfire.familytree.folk.mapper.CategoryContentMapper;
import com.starfire.familytree.folk.service.ICategoryContentService;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
public class CategoryContentServiceImpl extends ServiceImpl<CategoryContentMapper, CategoryContent> implements ICategoryContentService {
    @Autowired
    private CategoryContentMapper categoryContentMapper;

    @Override
    public PageInfo<Map<String, Object>, CategoryContent> page(PageInfo<Map<String, Object>, CategoryContent> pageInfo) {
        Map<String, Object> param = pageInfo.getParam();
        Page<CategoryContent> page = pageInfo.toMybatisPlusPage();
        Page<CategoryContent> result = categoryContentMapper.getPage(page,param);
        pageInfo.from(result);
        return pageInfo;
    }
}
