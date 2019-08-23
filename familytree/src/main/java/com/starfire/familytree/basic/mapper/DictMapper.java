package com.starfire.familytree.basic.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.basic.entity.Dict;
import com.starfire.familytree.basic.entity.Region;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-03-06
 */
public interface DictMapper extends BaseMapper<Dict> {

    Page<Dict> page(Page<Dict> page, @Param(value = "param") Map<String, Object> param);
}
