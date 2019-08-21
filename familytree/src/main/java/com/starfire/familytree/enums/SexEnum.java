package com.starfire.familytree.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;

public enum SexEnum {

    男("male"), 女("female");

    @EnumValue
    private final String value;

    SexEnum(String value) {

        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
