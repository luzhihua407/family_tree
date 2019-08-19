package com.starfire.familytree.vo;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class RoleMenuVo {

    private Boolean own=false;

    private String roleId;
    
    private String roleName;

    private List<String> menuIds=new ArrayList<String>();
}
