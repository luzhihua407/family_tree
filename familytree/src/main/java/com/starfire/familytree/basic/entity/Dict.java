package com.starfire.familytree.basic.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.starfire.familytree.enums.BooleanEnum;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotNull;
import java.beans.Transient;
import java.math.BigDecimal;

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

    @NotNull(message = "编码不能为空")
    private String code;

    private Integer dis;

    @NotNull(message = "名称不能为空")
    private String name;

    private BigDecimal numValue;

    private String remark;

    private String value;

    @JsonSerialize(using = ToStringSerializer.class)
    private Long parentId;

    @TableField(exist = false)
    private String parentName;
}
