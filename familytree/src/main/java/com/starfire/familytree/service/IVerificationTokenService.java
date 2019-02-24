package com.starfire.familytree.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.entity.VerificationToken;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author luzh
 * @since 2019-02-19
 */
public interface IVerificationTokenService extends IService<VerificationToken> {

	 void createVerificationToken(Long userId, String token);
	 
	 VerificationToken getVerificationToken(String VerificationToken);

}
