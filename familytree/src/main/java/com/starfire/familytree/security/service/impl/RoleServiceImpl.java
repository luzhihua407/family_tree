package com.starfire.familytree.security.service.impl;

import com.starfire.familytree.security.entity.Role;
import com.starfire.familytree.security.mapper.RoleMapper;
import com.starfire.familytree.security.service.IRoleService;
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
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

}
