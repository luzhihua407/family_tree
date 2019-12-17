package com.starfire.familytree.bs.service;

import com.starfire.familytree.bs.entity.Village;
import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.vo.PageInfo;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author luzh
 * @since 2019-11-12
 */
public interface IVillageService extends IService<Village> {

    public Village getVillage(String code) ;

    public PageInfo<Map<String, Object>, Village> page(PageInfo<Map<String, Object>, Village> pageInfo);

    public Map<String,Object> getOverview(String villageCode);

    public List<String> getVillageName(String villageName);
}
