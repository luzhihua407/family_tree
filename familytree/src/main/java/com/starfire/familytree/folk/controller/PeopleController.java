package com.starfire.familytree.folk.controller;


import com.starfire.familytree.folk.entity.People;
import com.starfire.familytree.folk.service.IChildrenService;
import com.starfire.familytree.folk.service.IPartnerService;
import com.starfire.familytree.folk.service.IPeopleService;
import com.starfire.familytree.vo.DeleteVO;
import com.starfire.familytree.vo.OrgChartItemVO;
import com.starfire.familytree.vo.OrgChartVO;
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
@Api(tags = "人物模块")
public class PeopleController {

    @Autowired
    private IPeopleService peopleService;

    @Autowired
    private IPartnerService partnerService;

    @Autowired
    private IChildrenService childrenService;

    /**
     * 分页
     *
     * @param page
     * @return
     * @author luzh
     */
    @PostMapping("/page")
    public PageInfo<Map<String, Object>, People> page(@RequestBody(required = false) PageInfo<Map<String, Object>, People> page) {
        page = page == null ? new PageInfo<>() : page;
        PageInfo<Map<String, Object>, People> pageInfo = peopleService.page(page);
        return pageInfo;

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
    public OrgChartVO tree(@RequestBody Map<String,Integer> param) {
        OrgChartVO orgChartVO = new OrgChartVO();
        People forefather = peopleService.getForefather(param.get("gen"));
        Long id = forefather.getId();
        List<People> childrenList = childrenService.getChildrenList(id);
        loopPeople(orgChartVO, id, childrenList);
        List<People> wifes = partnerService.getWifes(id);
        for (int j = 0; j < wifes.size(); j++) {
            People wife = wifes.get(j);
            String fullName = wife.getFullName();
            String brief = wife.getBrief();
            String avatar = wife.getAvatar();
            OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
            orgChartItemVO.setId(wife.getId());
            orgChartItemVO.setParent(null);
            orgChartItemVO.setTitle(fullName);
            orgChartItemVO.setDescription(brief);
            orgChartItemVO.setImage(avatar);
            orgChartVO.getItems().add(orgChartItemVO);
        }
        String fullName = forefather.getFullName();
        String brief = forefather.getBrief();
        String avatar = forefather.getAvatar();
        OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
        orgChartItemVO.setId(id);
        orgChartItemVO.setParent(null);
        orgChartItemVO.setTitle(fullName);
        orgChartItemVO.setDescription(brief);
        orgChartItemVO.setImage(avatar);
        orgChartVO.getItems().add(orgChartItemVO);
        return orgChartVO;
    }

    /**
     * 轮询取出所有后代
     * @param orgChartVO
     * @param id
     * @param childrenList
     */
    private void loopPeople(OrgChartVO orgChartVO, Long id, List<People> childrenList) {
        for (int j = 0; j < childrenList.size(); j++) {
            People children = childrenList.get(j);
            String fullName = children.getFullName();
            String brief = children.getBrief();
            String avatar = children.getAvatar();
            Long childrenId = children.getId();
            OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
            orgChartItemVO.setId(childrenId);
            orgChartItemVO.setParent(id);
            orgChartItemVO.setTitle(fullName);
            orgChartItemVO.setDescription(brief);
            orgChartItemVO.setImage(avatar);
            orgChartVO.getItems().add(orgChartItemVO);
            List<People> peopleList = childrenService.getChildrenList(children.getId());
            loopPeople(orgChartVO,childrenId,peopleList);
        }
    }
}
