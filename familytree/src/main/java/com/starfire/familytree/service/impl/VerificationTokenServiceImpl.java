package com.starfire.familytree.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.entity.VerificationToken;
import com.starfire.familytree.mapper.VerificationTokenMapper;
import com.starfire.familytree.service.IVerificationTokenService;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-02-19
 */
@Service
public class VerificationTokenServiceImpl extends ServiceImpl<VerificationTokenMapper, VerificationToken> implements IVerificationTokenService {

	@Autowired
	private VerificationTokenMapper tokenRepository;
	
	@Override
	public void createVerificationToken(Long userId, String token) {
		VerificationToken myToken = new VerificationToken(token, userId);
		tokenRepository.insert(myToken);
	}

	@Override
	public VerificationToken getVerificationToken(String token) {
		return tokenRepository.findByToken(token);
	}
}
