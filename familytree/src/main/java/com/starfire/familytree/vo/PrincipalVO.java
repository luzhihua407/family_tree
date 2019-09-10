package com.starfire.familytree.vo;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class PrincipalVO {

    UserVO user;

    private List<RouteVO> menus=new ArrayList<RouteVO>();
}
