package com.starfire.familytree.usercenter.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.usercenter.entity.User;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.Map;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface IUserService extends UserDetailsService, IService<User> {
    public User findUserByEmail(String email);

    public User registerNewUserAccount(User user);

    public Boolean activeUser(Long userId);


    public PageInfo<Map<String, Object>, User> page(PageInfo<Map<String, Object>, User> pageInfo);

}
