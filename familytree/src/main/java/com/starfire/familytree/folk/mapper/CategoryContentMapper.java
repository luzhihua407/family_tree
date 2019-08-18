package com.starfire.familytree.folk.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.folk.entity.CategoryContent;

import java.util.Map;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
public interface CategoryContentMapper extends BaseMapper<CategoryContent> {

    public Page<CategoryContent> getPage(Page<CategoryContent> page, Map<String, Object> param);
}
