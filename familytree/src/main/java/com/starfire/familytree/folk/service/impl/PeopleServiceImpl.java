package com.starfire.familytree.folk.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.folk.entity.People;
import com.starfire.familytree.folk.mapper.PeopleMapper;
import com.starfire.familytree.folk.service.IPeopleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-08-09
 */
@Service
public class PeopleServiceImpl extends ServiceImpl<PeopleMapper, People> implements IPeopleService {

    @Autowired
    private PeopleMapper peopleMapper;

    @Override
    public People addWife(People wife) {

        peopleMapper.insert(wife);
        return  wife;
    }

    @Override
    public People addChildren(People chillden) {

        peopleMapper.insert(chillden);
        return  chillden;

    }

    @Override
    public People addPeople(People people) {
        peopleMapper.insert(people);
        return people;
    }

    @Override
    public List<People> getPeoplesByGeneration(int gen) {
        List<People> peoples = peopleMapper.getPeoplesByGeneration(gen);
        return peoples;
    }
}
