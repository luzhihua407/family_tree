package com.starfire.familytree.dto;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class UserDto {

    private Long id;

    @NotNull
    @NotEmpty
    private String username;
    @NotNull
    @NotEmpty
    private String password;
    private Integer age;
    @NotNull
    @NotEmpty
    private String email;
    private Long roleId;
    private Integer gender;


}
