package com.starfire.familytree.basic.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.basic.entity.Region;
import com.starfire.familytree.vo.PageInfo;

import java.util.Map;

/**
 * <p>
 *  省市区服务类
 * </p>
 *
 * @author luzh
 * @since 2019-03-07
 */
public interface IRegionService extends IService<Region> {

	public PageInfo<Map<String,Object>, Region> page(PageInfo<Map<String,Object>, Region> page);

	
}
