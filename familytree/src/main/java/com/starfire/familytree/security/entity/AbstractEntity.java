package com.starfire.familytree.security.entity;

import java.io.Serializable;
import java.time.LocalDateTime;

import lombok.Data;

/**
 * 实体基类
 * @author luzh
 *
 */
@Data
public abstract class AbstractEntity implements Serializable {


    /**
	 * @author luzh
	 */
	private static final long serialVersionUID = 1L;

	private Long id;
    
    private LocalDateTime createTime=LocalDateTime.now();

    private String creater="system";

    private LocalDateTime updateTime;

    private String updater;

    private Boolean valid=true;
}
