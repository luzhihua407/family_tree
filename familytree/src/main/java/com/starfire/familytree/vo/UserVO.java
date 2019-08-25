package com.starfire.familytree.vo;

import com.starfire.familytree.security.entity.Menu;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Data
public class UserVO {

    private Long id;
    private Integer age;
    @NotNull
    @NotEmpty
    private String email;
    private Long roleId;
    private Integer gender;

    private List<Menu> menus = new ArrayList<>();


}
