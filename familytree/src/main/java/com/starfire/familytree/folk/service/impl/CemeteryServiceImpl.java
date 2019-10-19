package com.starfire.familytree.folk.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.folk.entity.Category;
import com.starfire.familytree.folk.entity.Cemetery;
import com.starfire.familytree.folk.mapper.CemeteryMapper;
import com.starfire.familytree.folk.service.ICemeteryService;
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
 * @since 2019-10-07
 */
@Service
public class CemeteryServiceImpl extends ServiceImpl<CemeteryMapper, Cemetery> implements ICemeteryService {

    @Override
    public PageInfo<Map<String, Object>, Cemetery> page(PageInfo<Map<String, Object>, Cemetery> pageInfo) {
        Map<String, Object> param = pageInfo.getParam();
        Page<Cemetery> page = pageInfo.toMybatisPlusPage();
        Page<Cemetery> result = baseMapper.getPage(page,param);
        pageInfo.from(result);
        return pageInfo;
    }
}
