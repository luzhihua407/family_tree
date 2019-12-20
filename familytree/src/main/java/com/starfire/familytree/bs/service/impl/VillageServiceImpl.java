package com.starfire.familytree.bs.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.starfire.familytree.bs.entity.Village;
import com.starfire.familytree.bs.mapper.ImageFileMapper;
import com.starfire.familytree.bs.mapper.VillageMapper;
import com.starfire.familytree.bs.service.IImageFileService;
import com.starfire.familytree.bs.service.IVillageService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.folk.mapper.PeopleMapper;
import com.starfire.familytree.utils.ChineseNumber;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-11-12
 */
@Service
public class VillageServiceImpl extends ServiceImpl<VillageMapper, Village> implements IVillageService {

    @Autowired
    private PeopleMapper peopleMapper;

    @Autowired
    private IImageFileService imageFileService;

    @Override
    public Village getVillage(String code) {
        return baseMapper.getVillage(code);
    }

    @Override
    public PageInfo<Map<String, Object>, Village> page(PageInfo<Map<String, Object>, Village> pageInfo) {
        Page<Village> page = pageInfo.toMybatisPlusPage();
        Map<String, Object> param = pageInfo.getParam();
        Page<Village> selectPage = baseMapper.page(page, param);
        pageInfo.from(selectPage);
        return pageInfo;
    }

    @Override
    public Map<String, Object> getOverview(String villageCode) {
        Village village = baseMapper.getVillage(villageCode);
        Map<String, Object> map = new HashMap<>();
        List<Map<String, Object>> numByBranch = peopleMapper.getPeopleNumByBranch(villageCode);
        List<Map<String, Object>> numByGender = peopleMapper.getPeopleNumByGender(villageCode);
        List<Map<String, Object>> numByEducation = peopleMapper.getPeopleNumByEducation(villageCode);
        List<Map<String, Object>> numByProTeam = peopleMapper.getPeopleNumByProTeam(villageCode);
        List<Map<String, Object>> genderByGenerations = peopleMapper.getGenderByGenerations(villageCode);

        map.put("numByBranch", numByBranch);
        map.put("numByGender", numByGender);
        map.put("numByEducation", numByEducation);
        map.put("numByProTeam", numByProTeam);
        map.put("genderByGenerations", convertGenders(genderByGenerations));
        map.put("generationsNames", extractGenerationsNames(genderByGenerations));
        return map;
    }

    private List<Map<String, Object>> convertGenders(List<Map<String, Object>> genderByGenerations) {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> boymap = new LinkedHashMap<>();
        Map<String, Object> girlmap = new LinkedHashMap<>();
        boymap.put("name", "男");
        girlmap.put("name", "女");
        for (int i = 0; i < genderByGenerations.size(); i++) {
            Map<String, Object> stringStringMap = genderByGenerations.get(i);
            Integer generations = (Integer) stringStringMap.get("generations");
            Long boy = (Long) stringStringMap.get("boy");
            boymap.put("第"+ ChineseNumber.numberToCH(generations)+"世", boy);
        }

        for (int i = 0; i < genderByGenerations.size(); i++) {
            Map<String, Object> stringStringMap = genderByGenerations.get(i);
            Integer generations = (Integer) stringStringMap.get("generations");
            Long girl = (Long) stringStringMap.get("girl");
            girlmap.put("第"+ ChineseNumber.numberToCH(generations)+"世", girl);
        }
        list.add(girlmap);
        list.add(boymap);
        return list;
    }

    private List<String> extractGenerationsNames(List<Map<String, Object>> genderByGenerations) {
        List<String> list = new ArrayList<>();
        for (int i = 0; i < genderByGenerations.size(); i++) {
            Map<String, Object> stringStringMap = genderByGenerations.get(i);
            Integer generations = (Integer) stringStringMap.get("generations");
            list.add("第"+ ChineseNumber.numberToCH(generations)+"世");
        }
        return list;
    }

    @Override
    public List<String> getVillageName(String villageName) {
        List<String> list = baseMapper.getVillageName(villageName);
        return list;
    }
}
