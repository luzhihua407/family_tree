package com.starfire.familytree.security.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.security.entity.Role;
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
public interface IRoleService extends IService<Role> {

    public PageInfo<Map<String, Object>, Role> page(PageInfo<Map<String, Object>, Role> page);

    public Role getRoleByCode(String code);

    public List<Role> getRoles();
}
