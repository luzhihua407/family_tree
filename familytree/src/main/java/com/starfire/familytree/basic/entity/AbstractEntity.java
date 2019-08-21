package com.starfire.familytree.basic.entity;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.starfire.familytree.enums.ValidEnum;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * 实体基类
 *
 * @author luzh
 */
@Data
//@MappedSuperclass
public abstract class AbstractEntity implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 1L;

    /**
     * @author luzh
     */

    @JsonSerialize(using = ToStringSerializer.class)
//	@Id
    private Long id = null;

    /**
     * 创建人
     */
    private String creator="system";

    /**
     * 创建时间
     */
    private LocalDateTime createTime = LocalDateTime.now();

    /**
     * 编辑人
     */
    private String editor;

    /**
     * 编辑时间
     */
    private LocalDateTime editTime;

    private ValidEnum valid = ValidEnum.有效;


}
