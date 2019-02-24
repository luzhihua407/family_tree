package com.starfire.familytree.entity;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author luzh
 * @since 2019-02-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

	private Long id;

	@NotNull
	@NotEmpty
	private String username;
	@NotNull
	@NotEmpty
	private String password;
	private Integer age;
	@NotNull
	@NotEmpty
	private String email;
	private Long roleId;
	private Integer gender;

	private Boolean enabled=false;





}
