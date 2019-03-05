package com.starfire.familytree.security.service.impl;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.UserRole;
import com.starfire.familytree.security.mapper.UserRoleMapper;
import com.starfire.familytree.security.service.IUserRoleService;
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
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole> implements IUserRoleService {
	@Override
	public PageInfo<Map<String, Object>, UserRole> page(PageInfo<Map<String, Object>, UserRole> pageInfo) {
		QueryWrapper<UserRole> qw=new QueryWrapper<UserRole>();
		Page<UserRole> page=pageInfo.toMybatisPlusPage();
		Page<UserRole> selectPage = (Page<UserRole>) baseMapper.selectPage(page, qw);
		pageInfo.from(selectPage);
		return pageInfo;
	}
}
