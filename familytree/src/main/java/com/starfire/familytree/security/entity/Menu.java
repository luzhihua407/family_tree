package com.starfire.familytree.security.entity;

import javax.validation.constraints.NotEmpty;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;

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
 * @since 2019-03-03
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("security_menu")
public class Menu extends AbstractEntity {


    private static final long serialVersionUID = 1L;

    @NotEmpty(message="编码不能为空")
    private String code;

    private String icon;

    private String idPath;

    @NotEmpty(message="名称不能为空")
    private String name;

    private String remark;

    private Integer type;

    @NotEmpty(message="路径不能为空")
    private String url;

    @JsonSerialize(using=ToStringSerializer.class)
    private Long parent;

    @TableField(exist=false)
    private String parentMenuName;


}
