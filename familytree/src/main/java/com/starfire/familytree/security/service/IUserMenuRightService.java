package com.starfire.familytree.security.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.security.entity.UserMenuRight;
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
public interface IUserMenuRightService extends IService<UserMenuRight> {
    public PageInfo<Map<String, Object>, UserMenuRight> page(PageInfo<Map<String, Object>, UserMenuRight> pageInfo);

    public List<String> getPermission(Long userId);

}
