package com.starfire.familytree.security.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.starfire.familytree.basic.entity.AbstractEntity;
import com.starfire.familytree.enums.BooleanEnum;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotEmpty;

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
@TableName("security_role")
public class Role extends AbstractEntity {

    private static final long serialVersionUID = 1L;


    private BooleanEnum admin = BooleanEnum.否;

    @NotEmpty(message = "不能为空")
    private String code;

    @NotEmpty(message = "不能为空")
    private String name;

    private String remark;


}
