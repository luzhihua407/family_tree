package com.starfire.familytree.security.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.starfire.familytree.response.Response;
import com.starfire.familytree.security.entity.Menu;
import com.starfire.familytree.security.service.IMenuService;
import com.starfire.familytree.vo.PageInfo;

/**
 * <p>
 *  菜单控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@RestController
@RequestMapping("/security/menu")
public class MenuController {
	
	@Autowired
	private IMenuService menuService;

	/**
	 * 新增或修改
	 *
	 * @param menu
	 * @return
	 * @author luzh
	 */
	@RequestMapping("/addOrUpdate")
	public Response<Menu> addOrUpdateMenu(@RequestBody Menu menu) {
		menuService.saveOrUpdate(menu);
		Response<Menu> response = new Response<Menu>();
		return response.success(menu);

	}

	/**
	 * 删除
	 *
	 * @param id
	 * @return
	 * @author luzh
	 */
	@GetMapping("/delete")
	public Response<String> deleteMenu(Long id) {
		boolean flag = menuService.removeById(id);
		Response<String> response = new Response<String>();
		if (!flag) {
			return response.failure();
		}
		return response.success();

	}

	/**
	 * 分页
	 *
	 * @param page
	 * @return
	 * @author luzh
	 */
	@RequestMapping("/page")
	public Response<PageInfo<Map<String, Object>, Menu>> page(@RequestBody PageInfo<Map<String, Object>, Menu> page) {
		PageInfo<Map<String, Object>, Menu> pageInfo = menuService.page(page);
		Response<PageInfo<Map<String, Object>, Menu>> response = new Response<PageInfo<Map<String, Object>, Menu>>();
		return response.success(pageInfo);

	}
}
