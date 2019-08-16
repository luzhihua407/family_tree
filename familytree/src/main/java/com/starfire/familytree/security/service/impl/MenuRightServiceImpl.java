package com.starfire.familytree.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.MenuRight;
import com.starfire.familytree.security.mapper.MenuRightMapper;
import com.starfire.familytree.security.service.IMenuRightService;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@Service
public class MenuRightServiceImpl extends ServiceImpl<MenuRightMapper, MenuRight> implements IMenuRightService {
	@Override
	public PageInfo<Map<String, Object>, MenuRight> page(PageInfo<Map<String, Object>, MenuRight> pageInfo) {
		QueryWrapper<MenuRight> qw=new QueryWrapper<MenuRight>();
		Page<MenuRight> page=pageInfo.toMybatisPlusPage();
		Page<MenuRight> selectPage = (Page<MenuRight>) baseMapper.selectPage(page, qw);
		pageInfo.from(selectPage);
		return pageInfo;
	}
}
