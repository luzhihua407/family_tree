package com.starfire.familytree.basic.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.starfire.familytree.security.entity.AbstractEntity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author luzh
 * @since 2019-03-07
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("basic_region")
public class Region extends AbstractEntity {

    private static final long serialVersionUID = 1L;


    private String areaCode;

    private String code;

    private String fullName;

    private String name;

    private String postCode;

    private String remark;

    private String shortName;

    private Long areaId;

    private Long typeId;


}
