package com.starfire.familytree.security.entity;

import com.baomidou.mybatisplus.annotation.TableName;

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
@TableName("security_user_menu")
public class UserMenu extends AbstractEntity{

    private static final long serialVersionUID = 1L;


    private Boolean own;

    private Long menuId;

    private Long userId;


}
