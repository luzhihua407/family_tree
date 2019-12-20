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
 * @since 2019-12-18
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("bs_image_file")
public class ImageFile extends AbstractEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 图片路径
     */
    private String path;

    /**
     * 图片名称
     */
    private String name;

    /**
     * 简述
     */
    private String brief;

    /**
     * base64数据
     */
    private String data;

    /**
     * 宽度
     */
    private Integer width;

    /**
     * 长度
     */
    private Integer heigth;

    /**
     * 外表主键
     */
    private Long otherId;

}
