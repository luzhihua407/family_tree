package com.starfire.familytree.folk.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.enums.BooleanEnum;
import com.starfire.familytree.folk.entity.Children;
import com.starfire.familytree.folk.entity.Partner;
import com.starfire.familytree.folk.entity.People;
import com.starfire.familytree.folk.mapper.ChildrenMapper;
import com.starfire.familytree.folk.mapper.PartnerMapper;
import com.starfire.familytree.folk.mapper.PeopleMapper;
import com.starfire.familytree.folk.service.IPeopleService;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-08-09
 */
@Service
public class PeopleServiceImpl extends ServiceImpl<PeopleMapper, People> implements IPeopleService {

    @Autowired
    private PeopleMapper peopleMapper;

    @Autowired
    private ChildrenMapper childrenMapper;

    @Autowired
    private PartnerMapper partnerMapper;

    @Override
    public PageInfo<Map<String, Object>, People> page(PageInfo<Map<String, Object>, People> pageInfo) {
        Map<String, Object> param = pageInfo.getParam();
        Page<People> page = pageInfo.toMybatisPlusPage();
        Page<People> result = peopleMapper.getPage(page,param);
        pageInfo.from(result);
        return pageInfo;
    }

    /**
     * 保存妻子和相关关系，并设置为已婚,是否有孩子跟丈夫一样
     * @param wife
     * @param husbandId
     * @return
     */
    @Override
    public People addWife(People wife,Long husbandId) {
        People husband = peopleMapper.selectById(husbandId);
        husband.setIsMarried(BooleanEnum.是);
        peopleMapper.updateById(husband);
        wife.setIsMarried(BooleanEnum.是);
        wife.setHasChild(husband.getHasChild());
        peopleMapper.insert(wife);
        Partner partner=new Partner();
        partner.setWifeId(wife.getId());
        partner.setHusbandId(husbandId);
        partnerMapper.insert(partner);
        return wife;
    }

    /**
     * 保存孩子，设置父子关系，并标记父类有孩子
     * @param child
     * @param parentId
     * @return
     */
    @Override
    @Transactional
    public People addChildren(People child,Long parentId) {
        People parent = peopleMapper.selectById(parentId);
        parent.setHasChild(BooleanEnum.是);
        Integer generations = parent.getGenerations();
        peopleMapper.updateById(parent);
        //世代在父的基础上+1
        child.setGenerations(generations+1);
        peopleMapper.insert(child);
        Children children=new Children();
        children.setParentId(parentId);
        children.setChildrenId(child.getId());
        childrenMapper.insert(children);
        return child;

    }

    @Override
    public People getHusband(Long husbandId) {
        People husband = peopleMapper.selectById(husbandId);
        return husband;
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

    @Override
    public People getForefather(int gen) {
        return peopleMapper.getForefather(gen);
    }
}
