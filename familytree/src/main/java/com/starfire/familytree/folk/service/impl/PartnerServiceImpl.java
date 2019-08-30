package com.starfire.familytree.folk.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.folk.entity.Partner;
import com.starfire.familytree.folk.entity.People;
import com.starfire.familytree.folk.mapper.PartnerMapper;
import com.starfire.familytree.folk.service.IPartnerService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
@Service
public class PartnerServiceImpl extends ServiceImpl<PartnerMapper, Partner> implements IPartnerService {

    @Override
    public List<People> getWifes(Long husbandId) {
        return baseMapper.getWifes(husbandId);
    }
}
