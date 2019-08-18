package com.starfire.familytree.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.Menu;
import com.starfire.familytree.security.mapper.MenuMapper;
import com.starfire.familytree.security.service.IMenuService;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements IMenuService {

    @Override
    public PageInfo<Map<String, Object>, Menu> page(PageInfo<Map<String, Object>, Menu> pageInfo) {
        QueryWrapper<Menu> qw = new QueryWrapper<Menu>();
        Page<Menu> page = pageInfo.toMybatisPlusPage();
        Page<Menu> selectPage = (Page<Menu>) baseMapper.selectPage(page, qw);
        pageInfo.from(selectPage);
        return pageInfo;
    }
}
