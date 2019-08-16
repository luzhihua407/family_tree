package com.starfire.familytree.security.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.starfire.familytree.security.entity.UserRole;

import java.util.List;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface UserRoleMapper extends BaseMapper<UserRole> {

	public Long getRoleIdByUserId(Long userId);

	public List<Long> getRoleIdsByUserId(Long userId);
}
