package com.starfire.familytree.folk.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.folk.entity.Category;
import com.starfire.familytree.vo.PageInfo;

import java.util.Map;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
public interface ICategoryService extends IService<Category> {

   public PageInfo<Map<String, Object>, Category> page(PageInfo<Map<String, Object>, Category> page);
}
