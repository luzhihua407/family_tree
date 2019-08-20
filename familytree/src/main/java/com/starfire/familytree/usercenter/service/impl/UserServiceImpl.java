package com.starfire.familytree.usercenter.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.security.entity.Role;
import com.starfire.familytree.security.service.IRoleService;
import com.starfire.familytree.security.service.IUserRoleService;
import com.starfire.familytree.usercenter.entity.User;
import com.starfire.familytree.usercenter.mapper.UserMapper;
import com.starfire.familytree.usercenter.service.IUserService;
import com.starfire.familytree.validation.EmailExistsException;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
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
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private IUserRoleService userRoleService;

    @Autowired
    private IRoleService roleService;

    @Override
    public User getUserByUserName(String username) {
        return baseMapper.getUserByUserName(username);
    }

    @Override
    public User getUserByEmail(String email) {
        return baseMapper.getUserByEmail(email) ;
    }

    @Transactional
    @Override
    public User registerNewUserAccount(User user) {

        if (existsUsername(user.getUsername())) {
            throw new EmailExistsException("已存在该用户:" + user.getUsername());
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setValid(false);// default set false,need user to active
        super.save(user);
        return user;
    }

    private boolean existsUsername(String username) {
        User user = baseMapper.getUserByUserName(username);
        if (user != null) {
            return true;
        }
        return false;
    }

    @Override
    public User loadUserByUsername(String userName) throws UsernameNotFoundException {
        User user = baseMapper.getUserByUserName(userName);
        Long id = user.getId();
        List<Long> roleIds = userRoleService.getRoleIdsByUserId(id);
        for (Long roleId : roleIds) {
            Role role = roleService.getById(roleId);
            GrantedAuthority ga = new SimpleGrantedAuthority("ROLE_"+role.getCode());
            user.getAuthorities().add(ga);
        }
        return user;
    }

    @Override
    public Boolean activeUser(Long userId) {
        User user = baseMapper.selectById(userId);
        user.setValid(true);
        int flag = baseMapper.updateById(user);
        return flag > 0 ? true : false;
    }

    @Override
    public PageInfo<Map<String, Object>, User> page(PageInfo<Map<String, Object>, User> pageInfo) {
        QueryWrapper<User> qw = new QueryWrapper<User>();
        Page<User> page = pageInfo.toMybatisPlusPage();
        Page<User> selectPage = (Page<User>) baseMapper.selectPage(page, qw);
        pageInfo.from(selectPage);
        return pageInfo;
    }
}
