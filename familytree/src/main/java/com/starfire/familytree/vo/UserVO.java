package com.starfire.familytree.vo;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class UserVO {

    private Long id;
    private Integer age;
    @NotNull
    @NotEmpty
    private String email;
    private Long roleId;
    private Integer gender;

    private List<RouteVO> menus=new ArrayList<RouteVO>();


}
