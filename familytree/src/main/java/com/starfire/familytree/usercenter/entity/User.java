package com.starfire.familytree.usercenter.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import java.time.LocalDateTime;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import java.io.Serializable;
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
@TableName("sys_user")
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    
    private LocalDateTime createTime;

    private String creater;

    private LocalDateTime updateTime;

    private String updater;

    private Boolean valid;

    private String email;

    private Boolean firstLogin=false;

    private LocalDateTime lastLoginTime;

    private String mobile;

	@NotNull
	@NotEmpty
    private String username;

    private String password;

    private String realName;

    private LocalDateTime registerTime;

    private Integer type;

    private Integer age;

    private Integer gender;

    private Boolean enabled;


}
