package com.starfire.familytree.security.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.RoleMenu;
import com.starfire.familytree.security.mapper.RoleMenuMapper;
import com.starfire.familytree.security.service.IRoleMenuService;
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
public class RoleMenuServiceImpl extends ServiceImpl<RoleMenuMapper, RoleMenu> implements IRoleMenuService {
	@Override
	public PageInfo<Map<String, Object>, RoleMenu> page(PageInfo<Map<String, Object>, RoleMenu> pageInfo) {
		QueryWrapper<RoleMenu> qw=new QueryWrapper<RoleMenu>();
		Page<RoleMenu> page=pageInfo.toMybatisPlusPage();
		Page<RoleMenu> selectPage = (Page<RoleMenu>) baseMapper.selectPage(page, qw);
		pageInfo.from(selectPage);
		return pageInfo;
	}

	@Override
	public List<Long> getMenuIdsByRoleId(Long roleId) {
		return baseMapper.getMenuIdsByRoleId(roleId);
	}
}
