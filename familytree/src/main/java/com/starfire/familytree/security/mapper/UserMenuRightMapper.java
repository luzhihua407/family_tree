package com.starfire.familytree.security.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.starfire.familytree.security.entity.UserMenuRight;

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
public interface UserMenuRightMapper extends BaseMapper<UserMenuRight> {


  public  void deleteByMenuId(Long menuId);

  public  void deleteByUserMenuId(Long userMenuId);

  public List<Map> getCheckedMenuByUserId(Long userId);
}
