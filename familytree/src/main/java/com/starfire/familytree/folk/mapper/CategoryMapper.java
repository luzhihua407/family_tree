package com.starfire.familytree.folk.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.folk.entity.Category;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
public interface CategoryMapper extends BaseMapper<Category> {

   public Page<Category> getPage(Page page,@Param("param") Map<String, Object> param);

    List<Category> getCategoryList();
}
