package com.starfire.familytree.security.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.starfire.familytree.security.entity.UserMenu;

import java.util.List;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface UserMenuMapper extends BaseMapper<UserMenu> {

   public void deleteByUserId(Long userId);

    public List<UserMenu> getListByUserId(Long userId);
}
