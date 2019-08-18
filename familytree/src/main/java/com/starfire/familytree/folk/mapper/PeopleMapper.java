package com.starfire.familytree.folk.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.starfire.familytree.folk.entity.People;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-08-09
 */
public interface PeopleMapper extends BaseMapper<People> {

    public List<People> getPeoplesByGeneration(@Param("gen") int gen);
}
