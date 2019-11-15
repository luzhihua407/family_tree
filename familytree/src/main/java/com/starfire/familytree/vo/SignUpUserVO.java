package com.starfire.familytree.vo;

import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * @author luzh
 * @version 1.0.0
 * @ClassName SignUpUser.java
 * @Description TODO
 * @createTime 2019年11月14日 20:41:00
 */
@Data
public class SignUpUserVO {

    @NotNull(message = "用户名不能为空")
    private String username;

    @NotNull(message = "密码不能为空")
    private String password;

    @NotNull(message = "邮箱不能为空")
    private String email;

    @NotNull(message = "村名不能为空")
    private String villageName;
}
