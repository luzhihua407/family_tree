//package com.starfire.familytree.security.controller;
//
//
//import java.util.Map;
//
//import javax.validation.Valid;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.Errors;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.starfire.familytree.response.Response;
//import com.starfire.familytree.security.entity.Menu;
//import com.starfire.familytree.security.service.IMenuService;
//import com.starfire.familytree.utils.ErrorsUtils;
//import com.starfire.familytree.vo.PageInfo;
//
///**
// * <p>
// *  菜单控制器
// * </p>
// *
// * @author luzh
// * @since 2019-03-03
// */
//@Controller
//@RequestMapping("/security/menu")
//public class MenuController {
//
//	@Autowired
//	private IMenuService menuService;
//
//	@RequestMapping("/add")
//	public String add() {
//
//		return "/security/menu/add";
//	}
//	/**
//	 * 新增或修改
//	 *
//	 * @param menu
//	 * @return
//	 * @author luzh
//	 */
//	@RequestMapping("/addOrUpdate")
//	public String addOrUpdateMenu(Model model, @Valid Menu menu,Errors errors) {
//		if(errors.hasErrors()==false) {
//
//		menuService.saveOrUpdate(menu);
//			model.addAttribute("menu", menu);
//		}else {
//			model.addAttribute("errors", ErrorsUtils.convert(errors.getFieldErrors()));
//		}
//			return "/security/menu/add";
//
//		}
//
//	/**
//	 * 删除
//	 *
//	 * @param id
//	 * @return
//	 * @author luzh
//	 */
//	@GetMapping("/delete")
//	public Response<String> deleteMenu(Long id) {
//		boolean flag = menuService.removeById(id);
//		Response<String> response = new Response<String>();
//		if (!flag) {
//			return response.failure();
//		}
//		return response.success();
//
//	}
//
//	/**
//	 * 分页
//	 *
//	 * @param page
//	 * @return
//	 * @author luzh
//	 */
////	@RequestMapping("/page")
//	public Response<PageInfo<Map<String, Object>, Menu>> page(@RequestBody PageInfo<Map<String, Object>, Menu> page) {
//		PageInfo<Map<String, Object>, Menu> pageInfo = menuService.page(page);
//		Response<PageInfo<Map<String, Object>, Menu>> response = new Response<PageInfo<Map<String, Object>, Menu>>();
//		return response.success(pageInfo);
//
//	}
//	@RequestMapping("/page")
//	public String page(Model model,PageInfo<Map<String,Object>, Menu> page) {
//		PageInfo<Map<String, Object>, Menu> pageInfo = menuService.page(page);
//		model.addAttribute("pageInfo", pageInfo);
//		model.addAttribute("menus", pageInfo.getResult());
//		return "/security/menu/list";
//	}
//}
