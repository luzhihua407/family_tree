package com.starfire.familytree.vo;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * 组织图表
 * @version 1.0
 * @author: Luzh
 * @date: 2019/8/30 8:48
 */
@Data
public class OrgChartVO {
    private List<OrgChartItemVO> items=new ArrayList<>();
}
