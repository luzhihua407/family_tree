package com.starfire.familytree.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.baomidou.mybatisplus.core.enums.IEnum;

public enum UserTypeEnum{

    管理员(1), 普通用户(2);

    @EnumValue
    private final int value;

    UserTypeEnum(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }
}
