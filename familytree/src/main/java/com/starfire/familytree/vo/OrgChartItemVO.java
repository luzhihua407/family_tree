package com.starfire.familytree.vo;

import lombok.Data;

import java.util.List;

/**
 * 组织图表项目
 * @version 1.0
 * @author: Luzh
 * @date: 2019/8/30 8:45
 */
@Data
public class OrgChartItemVO {

    private Long  id;
    private Long  parent;
    private  String title;
    private  String description;
    private  String image;

}
