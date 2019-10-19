package com.starfire.familytree.security.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.security.entity.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface RoleMapper extends BaseMapper<Role> {

    public Role getRoleByCode(String code);

    public List<Role> getRoles();

    public Page<Role> queryPage(Page<Role> page, @Param("queryCon") Map<String,Object> queryCon);

    public void deleteByRoleId(Long roleId);
}
