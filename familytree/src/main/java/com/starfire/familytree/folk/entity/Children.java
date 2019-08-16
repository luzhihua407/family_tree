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
@TableName("bs_children")
public class Children extends AbstractEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 父辈ID
     */
    private Long parentId;

    /**
     * 子辈ID
     */
    private Long childrenId;

    /**
     * 备注
     */
    private String remark;


}
