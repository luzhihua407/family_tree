package com.starfire.familytree.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;

public enum GenderEnum {

    不清楚(0),男(1), 女(2);

    @EnumValue
    private int value;

    GenderEnum(Integer value) {
        this.value = value;
    }


    public int getValue() {
        return value;
    }
}
