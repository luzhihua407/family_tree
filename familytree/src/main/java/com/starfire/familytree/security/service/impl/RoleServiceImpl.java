package com.starfire.familytree.security.service.impl;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.Role;
import com.starfire.familytree.security.mapper.RoleMapper;
import com.starfire.familytree.security.service.IRoleService;
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
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

	@Override
	public PageInfo<Map<String, Object>, Role> page(PageInfo<Map<String, Object>, Role> pageInfo) {
		QueryWrapper<Role> qw=new QueryWrapper<Role>();
		Page<Role> page=pageInfo.toMybatisPlusPage();
		Page<Role> selectPage = (Page<Role>) baseMapper.selectPage(page, qw);
		pageInfo.from(selectPage);
		return pageInfo;
	}

	@Override
	public Role getRoleByCode(String code) {
		return baseMapper.getRoleByCode(code);
	}


}
