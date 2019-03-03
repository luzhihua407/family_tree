package com.starfire.familytree.security.service.impl;

import com.starfire.familytree.security.entity.UserRole;
import com.starfire.familytree.security.mapper.UserRoleMapper;
import com.starfire.familytree.security.service.IUserRoleService;
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
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole> implements IUserRoleService {

}
