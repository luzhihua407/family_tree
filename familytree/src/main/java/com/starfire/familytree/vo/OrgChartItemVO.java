package com.starfire.familytree.vo;

import lombok.Data;

/**
 * 组织图表项目,封装basicprimitives item对象，id和parent 类型为long 无法正常表示关系
 * @version 1.0
 * @author: Luzh
 * @date: 2019/8/30 8:45
 */
@Data
public class OrgChartItemVO {


    private Integer  id;
    private Integer  parent;
    private  String title;
    private  String description;
    private  String image;

}
