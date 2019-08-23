package com.starfire.familytree.folk.controller;


import com.starfire.familytree.folk.entity.CategoryContent;
import com.starfire.familytree.folk.entity.People;
import com.starfire.familytree.folk.service.IPeopleService;
import com.starfire.familytree.vo.PageInfo;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
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

    @RequestMapping("add_wife")
    public People addWife(@RequestBody @Valid People wife) {
        People people = peopleService.addWife(wife);
        return people;
    }

    @RequestMapping("add_children")
    public People addChildren(@RequestBody @Valid People chillden) {

        People people = peopleService.addChildren(chillden);
        return people;

    }

    @RequestMapping("add")
    public People addPeople(@RequestBody @Valid People people) {
        People pl = peopleService.addPeople(people);
        return pl;
    }

    @RequestMapping("get_peoples_by_generation")
    public List<People> getPeoplesByGeneration(@RequestParam(required = true) int gen) {
        List<People> peoples = peopleService.getPeoplesByGeneration(gen);
        return peoples;
    }
}
