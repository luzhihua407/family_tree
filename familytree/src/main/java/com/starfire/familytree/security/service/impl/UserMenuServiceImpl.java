package com.starfire.familytree.security.service.impl;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.UserMenu;
import com.starfire.familytree.security.mapper.UserMenuMapper;
import com.starfire.familytree.security.service.IUserMenuService;
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
public class UserMenuServiceImpl extends ServiceImpl<UserMenuMapper, UserMenu> implements IUserMenuService {
	@Override
	public PageInfo<Map<String, Object>, UserMenu> page(PageInfo<Map<String, Object>, UserMenu> pageInfo) {
		QueryWrapper<UserMenu> qw=new QueryWrapper<UserMenu>();
		Page<UserMenu> page=pageInfo.toMybatisPlusPage();
		Page<UserMenu> selectPage = (Page<UserMenu>) baseMapper.selectPage(page, qw);
		pageInfo.from(selectPage);
		return pageInfo;
	}
}
