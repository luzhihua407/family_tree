package com.starfire.familytree.vo;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class UserMenuVO {

    private List<String> menuIds=new ArrayList<String>();

    private String userId;
}
