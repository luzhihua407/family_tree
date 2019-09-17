package com.starfire.familytree.vo;

import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
public class ResetPasswordVO {

    @NotEmpty(message = "用户ID不能为空")
    private Long userId;

    @NotEmpty(message = "密码不能为空")
    @Size(min = 6, max = 32, message = "密码长度为6-32个字符")
    private String password;

    @NotEmpty(message = "密码不能为空")
    @Size(min = 6, max = 32, message = "密码长度为6-32个字符")
    private String againPassword;
}
