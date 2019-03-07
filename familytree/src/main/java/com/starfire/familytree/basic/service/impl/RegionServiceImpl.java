package com.starfire.familytree.basic.service.impl;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.basic.entity.Region;
import com.starfire.familytree.basic.mapper.RegionMapper;
import com.starfire.familytree.basic.service.IRegionService;
import com.starfire.familytree.vo.PageInfo;

/**
 * <p>
 *  省市区服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-03-07
 */
@Service
public class RegionServiceImpl extends ServiceImpl<RegionMapper, Region> implements IRegionService {

	@Override
	public PageInfo<Map<String, Object>, Region> page(PageInfo<Map<String, Object>, Region> pageInfo) {
		QueryWrapper<Region> qw=new QueryWrapper<Region>();
		Page<Region> page=pageInfo.toMybatisPlusPage();
		Page<Region> selectPage = (Page<Region>) baseMapper.selectPage(page, qw);
		pageInfo.from(selectPage);
		return pageInfo;
	}

}
