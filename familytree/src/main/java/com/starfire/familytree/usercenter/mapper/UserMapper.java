package com.starfire.familytree.usercenter.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.security.entity.Menu;
import com.starfire.familytree.usercenter.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface UserMapper extends BaseMapper<User> {

    public User getUserByUserName(@Param(value = "username") String username);

    public User getUserByEmail(String email);

    public IPage<User> queryPage(Page page, @Param("queryCon") Map<String,Object> queryCon);

}
