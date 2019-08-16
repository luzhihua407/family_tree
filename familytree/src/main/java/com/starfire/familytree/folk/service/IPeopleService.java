package com.starfire.familytree.folk.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.folk.entity.People;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author luzh
 * @since 2019-08-09
 */
public interface IPeopleService extends IService<People> {


    public People addWife(People wife);

    public People addChildren(People chillden);

    public People addPeople(People people);


    public List<People> getPeoplesByGeneration(int gen);

}
