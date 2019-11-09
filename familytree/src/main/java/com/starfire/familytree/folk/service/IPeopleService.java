package com.starfire.familytree.folk.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.folk.entity.CategoryContent;
import com.starfire.familytree.folk.entity.People;
import com.starfire.familytree.vo.PageInfo;
import com.starfire.familytree.vo.RelationshipVO;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author luzh
 * @since 2019-08-09
 */
public interface IPeopleService extends IService<People> {


    public People addWife(People wife,Long husbandId);

    public People addChildren(People child,Long parentId);

    public People getHusband(Long husbandId);

    public People addPeople(People people) ;


    public List<People> getPeoplesByGeneration(int gen);

    /**
     * 获取祖先第一人
     * @param gen
     * @return
     */
    public People getForefather(int gen);

    public People getPeople(Long id);

    public People getFamilyTree(Map<String,String> param);

    public PageInfo<Map<String, Object>, People> page(PageInfo<Map<String, Object>, People> page);

    List<People> getPeopleByName(String name);

    boolean addRelationship(RelationshipVO relationshipVO);

    public List<Map<String,Object>> getNames(String name);
}
