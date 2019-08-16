package com.starfire.familytree.basic.controller;


import com.starfire.familytree.basic.entity.Dict;
import com.starfire.familytree.basic.service.IDictService;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.vo.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.Map;

/**
 * <p>
 *  字典数据控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-06
 */
@RestController
@RequestMapping("/basic/dict")
public class DictController {

	@Autowired
	private IDictService dictService;
	
	/**
	 * 新增或修改
	 *
	 * @param dict
	 * @return
	 * @author luzh
	 */
	@RequestMapping("/addOrUpdate")
	public Response<Dict> addOrUpdateDict(@RequestBody Dict dict,Principal principal) {
		dictService.saveOrUpdate(dict);
		Response<Dict> response = new Response<Dict>();
		return response.success(dict);

	}

	/**
	 * 删除
	 *
	 * @param id
	 * @return
	 * @author luzh
	 */
	@GetMapping("/delete")
	public Response<String> deleteDict(Long id) {
		boolean flag = dictService.removeById(id);
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
	public Response<PageInfo<Map<String, Object>, Dict>> page(@RequestBody PageInfo<Map<String, Object>, Dict> page) {
		PageInfo<Map<String, Object>, Dict> pageInfo = dictService.page(page);
		Response<PageInfo<Map<String, Object>, Dict>> response = new Response<PageInfo<Map<String, Object>, Dict>>();
		return response.success(pageInfo);

	}
}
