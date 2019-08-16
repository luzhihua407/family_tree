package com.starfire.familytree.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.UserMenuRight;
import com.starfire.familytree.security.mapper.UserMenuRightMapper;
import com.starfire.familytree.security.service.IUserMenuRightService;
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
public class UserMenuRightServiceImpl extends ServiceImpl<UserMenuRightMapper, UserMenuRight> implements IUserMenuRightService {
	@Override
	public PageInfo<Map<String, Object>, UserMenuRight> page(PageInfo<Map<String, Object>, UserMenuRight> pageInfo) {
		QueryWrapper<UserMenuRight> qw=new QueryWrapper<UserMenuRight>();
		Page<UserMenuRight> page=pageInfo.toMybatisPlusPage();
		Page<UserMenuRight> selectPage = (Page<UserMenuRight>) baseMapper.selectPage(page, qw);
		pageInfo.from(selectPage);
		return pageInfo;
	}
}
