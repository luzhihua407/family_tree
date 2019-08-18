package com.starfire.familytree.security.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.security.entity.UserRole;
import com.starfire.familytree.vo.PageInfo;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface IUserRoleService extends IService<UserRole> {
    public PageInfo<Map<String, Object>, UserRole> page(PageInfo<Map<String, Object>, UserRole> pageInfo);

    public Long getRoleIdByUserId(Long userId);

    public List<Long> getRoleIdsByUserId(Long userId);
}
