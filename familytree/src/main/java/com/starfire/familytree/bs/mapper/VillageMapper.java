package com.starfire.familytree.bs.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.bs.entity.Village;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-11-12
 */
public interface VillageMapper extends BaseMapper<Village> {

    public Village getVillage(@Param("code") String code);

    public Page<Village> page(Page<Village> page, Map<String, Object> param);

    public List<String> getVillageName(String villageName);
}
