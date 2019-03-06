package com.starfire.familytree.basic.entity;

import java.math.BigDecimal;

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
 * @since 2019-03-06
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("basic_dict")
public class Dict extends AbstractEntity {

    private static final long serialVersionUID = 1L;

    private String code;

    private Integer dis;

    private String name;

    private BigDecimal numValue;

    private String remark;

    private String value;

    private Long parentId;


}
