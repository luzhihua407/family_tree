package com.starfire.familytree.security.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.Role;
import com.starfire.familytree.security.service.IRoleService;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@RestController
@RequestMapping("/security/role")
public class RoleController {

	@Autowired
	private IRoleService roleService;

	@RequestMapping("/addOrUpdate")
	private Response<Object> addOrUpdateRole(Role role) {
		roleService.save(role);
		return Response.success(role);

	}
	@RequestMapping("/delete")
	private Response<Object> deleteRole(Long id) {
		boolean flag = roleService.removeById(id);
		return Response.success(flag);
		
	}
}
