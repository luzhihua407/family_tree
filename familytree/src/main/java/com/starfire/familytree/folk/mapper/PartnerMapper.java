package com.starfire.familytree.folk.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.starfire.familytree.folk.entity.Partner;
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
public interface PartnerMapper extends BaseMapper<Partner> {

    /**
     * 获取妻子，有可能多个的情况
     * @param husbandId
     * @return
     */
    public List<People> getWifes(Long husbandId);
}
