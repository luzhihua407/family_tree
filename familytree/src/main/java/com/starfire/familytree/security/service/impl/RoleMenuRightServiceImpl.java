package com.starfire.familytree.security.service.impl;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.RoleMenuRight;
import com.starfire.familytree.security.mapper.RoleMenuRightMapper;
import com.starfire.familytree.security.service.IRoleMenuRightService;
import com.starfire.familytree.vo.PageInfo;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@Service
public class RoleMenuRightServiceImpl extends ServiceImpl<RoleMenuRightMapper, RoleMenuRight> implements IRoleMenuRightService {
	@Override
	public PageInfo<Map<String, Object>, RoleMenuRight> page(PageInfo<Map<String, Object>, RoleMenuRight> pageInfo) {
		QueryWrapper<RoleMenuRight> qw=new QueryWrapper<RoleMenuRight>();
		Page<RoleMenuRight> page=pageInfo.toMybatisPlusPage();
		Page<RoleMenuRight> selectPage = (Page<RoleMenuRight>) baseMapper.selectPage(page, qw);
		pageInfo.from(selectPage);
		return pageInfo;
	}
}
