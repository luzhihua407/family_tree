package com.starfire.familytree.folk.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.starfire.familytree.folk.entity.Children;
import com.starfire.familytree.folk.entity.People;

import java.util.List;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
public interface ChildrenMapper extends BaseMapper<Children> {

    public List<People> getChildrenList(Long parentId);

}
