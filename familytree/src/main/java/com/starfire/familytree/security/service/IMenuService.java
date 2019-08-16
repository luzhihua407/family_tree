package com.starfire.familytree.security.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.security.entity.Menu;
import com.starfire.familytree.vo.PageInfo;

import java.util.Map;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
public interface IMenuService extends IService<Menu> {

	public PageInfo<Map<String, Object>, Menu> page(PageInfo<Map<String, Object>, Menu> pageInfo);

}
