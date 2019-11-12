package com.starfire.familytree.bs.entity;

import com.starfire.familytree.basic.entity.AbstractEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import java.time.LocalDateTime;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author luzh
 * @since 2019-11-12
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("bs_village")
public class Village extends AbstractEntity {

    private static final long serialVersionUID = 1L;



    /**
     * 村编号
     */
    private String code;

    /**
     * 村名
     */
    private String name;

    /**
     * 备注
     */
    private String remark;

    /**
     * 地址
     */
    private String address;

    /**
     * 经度
     */
    private Double longitude;

    /**
     * 纬度
     */
    private Double latitude;


}
