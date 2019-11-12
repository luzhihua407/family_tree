package com.starfire.familytree.folk.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.starfire.familytree.basic.entity.AbstractEntity;
import com.starfire.familytree.enums.BooleanEnum;
import com.starfire.familytree.enums.GenderEnum;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import java.time.LocalDateTime;
import java.util.Date;

/**
 * <p>
 *
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("bs_people")
public class People extends AbstractEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 头像
     */
    private String avatar;

    /**
     * 小名
     */
    private String nickname;

    /**
     * 全名
     */
    @NotNull(message = "全名不能为空")
    private String fullName;

    /**
     * 全名拼音
     */
    private String pinyin;

    /**
     * 入嗣
     */
    private String heir;

    /**
     * 性别
     */
    @NotNull(message = "性别不能为空")
    private GenderEnum gender;

    /**
     * 年龄
     */
    private Integer age;

    /**
     * 是否已婚
     */
    private BooleanEnum isMarried=BooleanEnum.否;

    /**
     * 是否有后代
     */
    private BooleanEnum hasChild=BooleanEnum.否;

    /**
     * 第几世
     */
    @Positive(message = "第几世要大于0")
    private Integer generations=1;

    @TableField(exist = false)
    private String generationsText;

    /**
     * 生日
     */
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date birth;

    /**
     * 逝期
     */
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date death;

    /**
     * 备注
     */
    private String remark;

    /**
     * 个人描述
     */
    private String brief;

    /**
     * 教育
     */
    private String education;

    /**
     * 身高
     */
    private String height;

    /**
     * 体重
     */
    private String weight;


    /**
     * 手机号码
     */
    private String phoneNumber;

    /**
     * 工作单位
     */
    private String company;

    /**
     * 职务
     */
    private String job;

    /**
     * 分支 关联category
     */
    @JsonSerialize(using = ToStringSerializer.class)
    private Long peopleBranch;


    @TableField(exist = false)
    private String branchName;

    /**
     * 生产队
     */
    @JsonSerialize(using = ToStringSerializer.class)
    private Long prodTeam;

  /**
   * @title 生产队名称
   */
    @TableField(exist = false)
    private String prodTeamName;

    /**
     * 享年
     */
    @TableField(exist = false)
    private Integer aliveAge;

    /** 关联乡村
     */
    private Long villageId;
}
