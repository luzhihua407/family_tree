package com.starfire.familytree.folk.service;

import com.starfire.familytree.folk.entity.Cemetery;
import com.starfire.familytree.folk.entity.Cemetery;
import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.vo.PageInfo;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author luzh
 * @since 2019-10-07
 */
public interface ICemeteryService extends IService<Cemetery> {

    public PageInfo<Map<String, Object>, Cemetery> page(PageInfo<Map<String, Object>, Cemetery> page);

}
