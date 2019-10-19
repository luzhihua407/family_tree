package com.starfire.familytree.folk.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.folk.entity.Cemetery;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-10-07
 */
public interface CemeteryMapper extends BaseMapper<Cemetery> {

    Page<Cemetery> getPage(Page<Cemetery> page, Map<String, Object> param);
}
