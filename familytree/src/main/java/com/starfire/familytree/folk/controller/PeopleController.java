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
        People husband = peopleService.getForefather(param.get("gen"));
        Long fatherId = husband.getId();
        Long husbandId = husband.getId();
        //获取妻子
        People wife = partnerService.getWife(husbandId);
        if(wife!=null){
            OrgChartItemVO orgChartItemVO = convertOrgChartItemVO(husbandId,wife);
            orgChartVO.getItems().add(orgChartItemVO);
        }
        loopChildren(orgChartVO, husband,wife);
        String fullName = husband.getFullName();
        String brief = husband.getBrief();
        String avatar = husband.getAvatar();
        OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
        orgChartItemVO.setId(fatherId.hashCode());
        orgChartItemVO.setParents(null);
        orgChartItemVO.setTitle(fullName);
        orgChartItemVO.setDescription(brief);
        orgChartItemVO.setImage(avatar);
        orgChartVO.getItems().add(orgChartItemVO);
        return orgChartVO;
    }

    @PostMapping("/getFamilyTree")
    public OrgChartVO getFamilyTree(@RequestBody Map<String,String> param) {
        OrgChartVO orgChartVO = new OrgChartVO();
        People husband = peopleService.getFamilyTree(param.get("branch"));
        Long fatherId = husband.getId();
        Long husbandId = husband.getId();
        //获取妻子
        People wife = partnerService.getWife(husbandId);
        if(wife!=null){
            OrgChartItemVO orgChartItemVO = convertOrgChartItemVO(husbandId,wife);
            orgChartVO.getItems().add(orgChartItemVO);
        }
        loopChildren(orgChartVO, husband,wife);
        String fullName = husband.getFullName();
        String brief = husband.getBrief();
        String avatar = husband.getAvatar();
        OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
        orgChartItemVO.setId(fatherId.hashCode());
        orgChartItemVO.setParents(null);
        orgChartItemVO.setTitle(fullName);
        orgChartItemVO.setDescription(brief);
        orgChartItemVO.setImage(avatar);
        orgChartVO.getItems().add(orgChartItemVO);
        return orgChartVO;
    }

    /**
     * 轮询取出所有后代
     * @param orgChartVO
     */
    private void loopChildren(OrgChartVO orgChartVO, People father,People mother) {
        Long fatherId=father.getId();
        Long motherId=null;
        if(mother!=null){
            motherId=mother.getId();
        }
        List<People> childrenList = childrenService.getChildrenList(fatherId);
        for (int j = 0; j < childrenList.size(); j++) {
            People children = childrenList.get(j);
            String fullName = children.getFullName();
            String brief = children.getBrief();
            String avatar = children.getAvatar();
            Long childrenId = children.getId();
            //获取妻子
            People wife = partnerService.getWife(childrenId);
            if(wife!=null){
                OrgChartItemVO orgChartItemVO = convertOrgChartItemVO(childrenId,wife);
                orgChartVO.getItems().add(orgChartItemVO);
            }
            //获取孩子
            OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
            orgChartItemVO.setId(childrenId.hashCode());
            Integer[] parents=new Integer[2];
            parents[0]=fatherId.hashCode();
            parents[1]=motherId.hashCode();
            orgChartItemVO.setParents(parents);
            orgChartItemVO.setTitle(fullName);
            orgChartItemVO.setDescription(brief);
            orgChartItemVO.setImage(avatar);
            orgChartVO.getItems().add(orgChartItemVO);
            loopChildren(orgChartVO,children,wife);
        }
    }


    private OrgChartItemVO convertOrgChartItemVO(Long husbandId,People wife) {
        String fullName = wife.getFullName();
        String brief = wife.getBrief();
        String avatar = wife.getAvatar();
        OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
        orgChartItemVO.setId(wife.getId().hashCode());
        orgChartItemVO.setParents(null);
        orgChartItemVO.setTitle(fullName);
        orgChartItemVO.setDescription(brief);
        orgChartItemVO.setImage(avatar);
        orgChartItemVO.setPosition(husbandId.hashCode()+1);
        orgChartItemVO.setRelativeItem(husbandId.hashCode());


        return orgChartItemVO;
    }
}
