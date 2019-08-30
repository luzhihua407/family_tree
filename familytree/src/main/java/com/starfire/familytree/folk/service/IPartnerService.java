package com.starfire.familytree.folk.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.folk.entity.Partner;
import com.starfire.familytree.folk.entity.People;

import java.util.List;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
public interface IPartnerService extends IService<Partner> {

    public List<People> getWifes(Long husbandId);
}
