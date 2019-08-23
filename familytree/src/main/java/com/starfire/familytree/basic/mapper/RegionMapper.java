package com.starfire.familytree.basic.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.basic.entity.Region;
import com.starfire.familytree.folk.entity.People;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-03-07
 */
public interface RegionMapper extends BaseMapper<Region> {

    Page<Region> page(Page<Region> page,@Param(value = "param") Map<String, Object> param);
}
