package com.starfire.familytree.basic.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.basic.entity.Dict;
import com.starfire.familytree.basic.mapper.DictMapper;
import com.starfire.familytree.basic.service.IDictService;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 字典服务实现类
 * </p>
 *
 * @author luzh
 * @since 2019-03-06
 */
@Service
public class DictServiceImpl extends ServiceImpl<DictMapper, Dict> implements IDictService {
    @Override
    public PageInfo<Map<String, Object>, Dict> page(PageInfo<Map<String, Object>, Dict> pageInfo) {
        Page<Dict> page = pageInfo.toMybatisPlusPage();
        Map<String, Object> param = pageInfo.getParam();
        Page<Dict> selectPage = baseMapper.page(page, param);
        pageInfo.from(selectPage);
        return pageInfo;
    }

    @Override
    public List<Dict> getParentDict(String code) {
        return baseMapper.getParentDict(code);
    }

    @Override
    public Dict getDict(String code) {

        return baseMapper.getDict(code);
    }

    @Override
    public List<Dict> getSubDictListByParentCode(String code) {
        List<Dict> list = baseMapper.getSubDictListByParentCode(code);
        return list;
    }

    @Override
    public List<Dict> getBranchList() {
        return baseMapper.getBranchList();
    }

    @Override
    public List<Dict> getProdTeam() {
        return baseMapper.getProdTeam();
    }

    @Override
    public List<String> getPermissionList() {
        return baseMapper.getPermissionList();
    }

}
