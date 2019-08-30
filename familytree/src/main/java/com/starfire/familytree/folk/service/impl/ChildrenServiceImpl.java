package com.starfire.familytree.folk.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.enums.BooleanEnum;
import com.starfire.familytree.folk.entity.Children;
import com.starfire.familytree.folk.entity.People;
import com.starfire.familytree.folk.mapper.ChildrenMapper;
import com.starfire.familytree.folk.mapper.PeopleMapper;
import com.starfire.familytree.folk.service.IChildrenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
public class ChildrenServiceImpl extends ServiceImpl<ChildrenMapper, Children> implements IChildrenService {

    @Autowired
    private PeopleMapper peopleMapper;

    @Override
    public List<People> getChildrenList(Long parentId) {
        return baseMapper.getChildrenList(parentId);
    }

    @Override
    public List<People> getJuniorList(Long parentId) {
        List<People> juniorList=new ArrayList<>();
        List<People> childrenList = getChildrenList(parentId);
        juniorList.addAll(childrenList);
        for (int i = 0; i < childrenList.size(); i++) {
            People people =  childrenList.get(i);
            Long peopleId = people.getId();
            List<People> peopleList = getChildrenList(peopleId);
            juniorList.addAll(peopleList);
        }
        return juniorList;
    }

}
