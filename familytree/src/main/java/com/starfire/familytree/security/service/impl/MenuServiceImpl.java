package com.starfire.familytree.security.service.impl;

import com.starfire.familytree.security.entity.Menu;
import com.starfire.familytree.security.mapper.MenuMapper;
import com.starfire.familytree.security.service.IMenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements IMenuService {

}
