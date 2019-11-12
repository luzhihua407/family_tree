package com.starfire.familytree.bs.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.bs.entity.Village;
import com.starfire.familytree.bs.mapper.VillageMapper;
import com.starfire.familytree.bs.service.IVillageService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-11-12
 */
@Service
public class VillageServiceImpl extends ServiceImpl<VillageMapper, Village> implements IVillageService {

    @Override
    public Village getVillage(String code) {
        return baseMapper.getVillage(code);
    }

    @Override
    public PageInfo<Map<String, Object>, Village> page(PageInfo<Map<String, Object>, Village> pageInfo) {
        Page<Village> page = pageInfo.toMybatisPlusPage();
        Map<String, Object> param = pageInfo.getParam();
        Page<Village> selectPage = baseMapper.page(page, param);
        pageInfo.from(selectPage);
        return pageInfo;
    }
}
