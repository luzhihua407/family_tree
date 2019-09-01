package com.starfire.familytree.folk.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.starfire.familytree.basic.entity.AbstractEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.beans.Transient;

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
@TableName("bs_category_content")
public class CategoryContent extends AbstractEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 子标题
     */
    private String subTitle;

    /**
     * 标题
     */
    private String title;

    /**
     * 内容
     */
    private String content;

    /**
     * 类别编号
     */
    @JsonSerialize(using = ToStringSerializer.class)
    private Long categoryId;

    @TableField(exist = false)
    private String categoryName;


}
