package com.starfire.familytree.vo;



import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.Data;

@Data
public class UserVO {

    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;
    private Integer age;
    @NotNull
    @NotEmpty
    private String email;

    private String username;

    @JsonSerialize(using = ToStringSerializer.class)
    private Long roleId;

    private Integer gender;




}
