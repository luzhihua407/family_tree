package com.starfire.familytree.basic.controller;


import com.starfire.familytree.basic.entity.Dict;
import com.starfire.familytree.basic.service.IDictService;
import com.starfire.familytree.response.Response;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 字典数据控制器
 * </p>
 *
 * @author luzh
 * @since 2019-03-06
 */
@RestController
@RequestMapping("/basic/dict")
@Api(tags = "字典接口")
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
    @PostMapping("/addOrUpdate")
    public Response<Dict> addOrUpdateDict(@RequestBody @Valid Dict dict) {
        String code = dict.getCode();
        if(dict.getId()==null){

        Dict d = dictService.getDict(code);
        if(d!=null){
            throw  new RuntimeException("字典编码"+code+"已存在，请换一个");
        }
        }
        dictService.saveOrUpdate(dict);
        Response<Dict> response = new Response<Dict>();
        return response.success(dict);

    }

    /**
     * 删除
     *
     * @return
     * @author luzh
     */
    @PostMapping("/delete")
    public Response<String> deleteDict(@RequestBody DeleteVO<Long[]> deleteVO) {
        Long[] ids = deleteVO.getIds();
        boolean flag = dictService.removeByIds(Arrays.asList(ids));
        Response<String> response = new Response<String>();
        if (!flag) {
            return response.failure();
        }
        return response.success();

    }

    /**
     * 获取字典详情
     * @param id
     * @return
     */
    @GetMapping("/get")
    public Response<Dict> getDict(@RequestParam(required = true) Long id) {
        Dict dict = dictService.getById(id);
        Response<Dict> response = new Response<>();
        return response.success(dict);

    }

    @PostMapping("/getParentDict")
    public Response<List<Dict>> getParentDict(@RequestBody(required = true) Map<String,String> param) {
        String code=param.get("code");
        List<Dict> dictList = dictService.getParentDict(code);
        Response<List<Dict>> response = new Response<>();
        return response.success(dictList);

    }
    @PostMapping("/getSubDictListByParentCode")
    public Response<List<Dict>> getSubDictListByParentCode(@RequestBody(required = true) Map<String,String> param) {
        String code=param.get("parentCode");
        List<Dict> dictList = dictService.getSubDictListByParentCode(code);
        Response<List<Dict>> response = new Response<>();
        return response.success(dictList);

    }

    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @PostMapping("/page")
    public Response<PageInfo<Map<String, Object>, Dict>> page(@RequestBody(required = false) PageInfo<Map<String, Object>, Dict> page) {
        page=page==null?new PageInfo<>():page;
        PageInfo<Map<String, Object>, Dict> pageInfo = dictService.page(page);
        Response<PageInfo<Map<String, Object>, Dict>> response = new Response<PageInfo<Map<String, Object>, Dict>>();
        return response.success(pageInfo);

    }

    /**
     * 获取房支
     * @return
     */
    @GetMapping("/getBranchList")
    public List<Dict> getBranchList() {
        List<Dict> branchList = dictService.getBranchList();
        return branchList;
    }
}
