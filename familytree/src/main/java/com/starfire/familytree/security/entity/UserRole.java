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
@TableName("security_user_role")
public class UserRole extends AbstractEntity{

    private static final long serialVersionUID = 1L;

    
    private Long userId;

    private Long roleId;


}
