package com.starfire.familytree.vo;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

/**
 * 组织图表项目,封装basicprimitives item对象，id和parent 类型为long 无法正常表示关系
 * @version 1.0
 * @author: Luzh
 * @date: 2019/8/30 8:45
 */
@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class OrgChartItemVO {


    private Integer  id;
    private Integer[]  parents;
    private Integer relativeItem;
    private Integer position;
    private  String title;
    private  String description;
    private  String image;

}
