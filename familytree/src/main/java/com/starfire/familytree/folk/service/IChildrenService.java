package com.starfire.familytree.folk.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.folk.entity.Children;
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
public interface IChildrenService extends IService<Children> {

    /**
     * 获取孩子
     * @param parentId
     * @return
     */
    public List<People> getChildrenList(Long parentId);

    /**
     * 获取所有后辈
     * @param parentId
     * @return
     */
    public List<People> getJuniorList(Long parentId);

}
