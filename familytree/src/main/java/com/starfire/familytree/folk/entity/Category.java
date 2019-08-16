package com.starfire.familytree.folk.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.starfire.familytree.basic.entity.AbstractEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("bs_category")
public class Category extends AbstractEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 类别名称
     */
    private String name;

    /**
     * 备注
     */
    private String remark;

    /**
     * 父级id
     */
    private Long parentId;


}
