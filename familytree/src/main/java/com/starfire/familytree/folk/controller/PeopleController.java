package com.starfire.familytree.folk.controller;


import com.starfire.familytree.folk.entity.Category;
import com.starfire.familytree.folk.entity.CategoryContent;
import com.starfire.familytree.folk.entity.People;
import com.starfire.familytree.folk.service.IPeopleService;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.PageInfo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author luzh
 * @since 2019-08-15
 */
@RestController
@RequestMapping("/folk/people")
@Api("人物模块")
public class PeopleController {

    @Autowired
    private IPeopleService peopleService;

    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @PostMapping("/page")
    public PageInfo<Map<String, Object>, People> page(@RequestBody(required = false) PageInfo<Map<String, Object>, People> page) {
        page=page==null?new PageInfo<>():page;
        PageInfo<Map<String, Object>, People> pageInfo = peopleService.page(page);
        return pageInfo;

    }

    @PostMapping("add_wife")
    public People addWife(@RequestBody @Valid People wife) {
        People people = peopleService.addWife(wife);
        return people;
    }

    @PostMapping("add_children")
    public People addChildren(@RequestBody @Valid People chillden) {

        People people = peopleService.addChildren(chillden);
        return people;

    }

    @PostMapping("add")
    public People addPeople(@RequestBody @Valid People people) {
        People pl = peopleService.addPeople(people);
        return pl;
    }

    @GetMapping("get_peoples_by_generation")
    public List<People> getPeoplesByGeneration(@RequestParam(required = true) int gen) {
        List<People> peoples = peopleService.getPeoplesByGeneration(gen);
        return peoples;
    }

    @GetMapping("/get")
    public People getPeople(Long id) {
        People people = peopleService.getById(id);
        return people;
    }

    @PostMapping("/delete")
    public Boolean deletePeople(@RequestBody DeleteVO<Long[]> deleteVO) {
        Long[] ids = deleteVO.getIds();
        for (int i = 0; i < ids.length; i++) {
            Long id = Long.valueOf(ids[i]);
            boolean b = peopleService.removeById(id);

        }
        return true;
    }

    @PostMapping("/edit")
    public Boolean editPeople(@RequestBody People people) {
        boolean b = peopleService.updateById(people);
        return b;
    }

    @PostMapping("/tree")
    public List<Map<String,Object>> tree() {
        List<Map<String,Object>> list=new ArrayList<>();
        Map<String,Object> map=new HashMap();
        map.put("id", 0);
        map.put("parent",  null);
        map.put("title",  "张三");
        map.put("description",  "好人一生平安");
        map.put("image",  "https://img2.woyaogexing.com/2019/08/29/22df5a5901c64b30806fc7738d97f094!600x600.jpeg");
        list.add(map);
         map=new HashMap();
        map.put("id", 1);
        map.put("parent",  0);
        map.put("title",  "张三");
        map.put("description",  "好人一生平安");
        map.put("image",  "https://img2.woyaogexing.com/2019/08/29/22df5a5901c64b30806fc7738d97f094!600x600.jpeg");
        list.add(map);
        return list;
    }
}
