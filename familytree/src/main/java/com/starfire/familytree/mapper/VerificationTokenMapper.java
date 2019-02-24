package com.starfire.familytree.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.starfire.familytree.entity.User;
import com.starfire.familytree.entity.VerificationToken;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luzh
 * @since 2019-02-19
 */
public interface VerificationTokenMapper extends BaseMapper<VerificationToken> {

	   VerificationToken findByToken(String token);
	   
	    VerificationToken findByUser(User user);
}
