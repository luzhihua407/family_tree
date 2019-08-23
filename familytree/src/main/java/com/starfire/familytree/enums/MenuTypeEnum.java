package com.starfire.familytree.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;


/**
 *
 * @version 1.0
 * @author: Luzh
 * @date: 2019/8/21 9:14
 */

public enum MenuTypeEnum{

    目录(0),菜单(1);

    @EnumValue
    private int value;

    MenuTypeEnum(int value) {

        this.value=value;
    }


    public int getValue() {
        return value;
    }
}
