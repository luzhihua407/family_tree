package com.starfire.familytree.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

/**
 *
 * @version 1.0
 * @author: Luzh
 * @date: 2019/8/21 9:14
 */
public enum  ValidEnum {
    无效(0),有效(1);

    @EnumValue
    private final int value;

    ValidEnum(int value) {
        this.value=value;
    }

    public int getValue() {
        return value;
    }
}
