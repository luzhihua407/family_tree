package com.starfire.familytree.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;

public enum BooleanEnum {

    否(0), 是(1);

    @EnumValue
    private final int value;

    BooleanEnum(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }
}
