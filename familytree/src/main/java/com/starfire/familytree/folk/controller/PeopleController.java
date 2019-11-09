package com.starfire.familytree.folk.controller;


import com.starfire.familytree.enums.GenderEnum;
import com.starfire.familytree.folk.entity.People;
import com.starfire.familytree.folk.service.IChildrenService;
import com.starfire.familytree.folk.service.IPartnerService;
import com.starfire.familytree.folk.service.IPeopleService;
import com.starfire.familytree.utils.ChineseNumber;
import com.starfire.familytree.utils.StringHelper;
import com.starfire.familytree.vo.*;
import io.swagger.annotations.Api;
import io.swagger.models.auth.In;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import java.text.NumberFormat;
import java.util.*;

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

    @GetMapping("getPeopleByName")
    public List<People> getPeopleByName(@RequestParam(required = true) String name) {
        List<People> peoples = peopleService.getPeopleByName(name);
        return peoples;
    }

    @GetMapping("/get")
    public People getPeople(Long id) {
        People people = peopleService.getById(id);
        return people;
    }   
    
    @GetMapping("/view")
    public People viewPeople(Long id) {
        People people = peopleService.getPeople(id);
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
        String pinyin = StringHelper.toPinyin(people.getFullName());
        people.setPinyin(pinyin);
        boolean b = peopleService.updateById(people);
        return b;
    }

    @PostMapping("/addRelationship")
    public Boolean addRelationship(@RequestBody RelationshipVO relationshipVO) {
        boolean b = peopleService.addRelationship(relationshipVO);
        return b;
    }

    @PostMapping("/getNames")
    public List<Map<String,Object>> getNames(@RequestBody Map<String,String> param) {
        List<Map<String,Object>> names=new ArrayList<>();
        String name = param.get("name");
        if(name.length()>1) {

        names = peopleService.getNames(name);
        }
        return names;
    }
    @GetMapping("/test")
    public void test() {
        List<People> list = peopleService.list();
        for (int i = 0; i < list.size(); i++) {
            People people =  list.get(i);
            String pinyin = StringHelper.toPinyin(people.getFullName());
            people.setPinyin(pinyin);
            peopleService.saveOrUpdate(people);
        }
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
        orgChartItemVO.setId(Math.abs(fatherId.hashCode()));
        orgChartItemVO.setPeopleId(fatherId+"");
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

        People husband = peopleService.getFamilyTree(param);
        Integer generations = husband.getGenerations();
        Long fatherId = husband.getId();
        Long husbandId = husband.getId();
        //获取妻子
        People wife = partnerService.getWife(husbandId);
        if(wife!=null){
            OrgChartItemVO orgChartItemVO = convertOrgChartItemVO(husbandId,wife);
            String avatar = wife.getAvatar();
            String brief = wife.getBrief();
            GenderEnum gender = wife.getGender();
            String sex = gender.name();
            orgChartItemVO.setSex(sex);
            orgChartItemVO.setPeopleId(wife.getId()+"");
            orgChartItemVO.setGenerations("第"+ ChineseNumber.numberToCH(generations)+"世");
            orgChartItemVO.setDescription(brief);
            orgChartItemVO.setRemark(wife.getRemark());
            orgChartVO.getItems().add(orgChartItemVO);
        }
        loopChildren(orgChartVO, husband,wife);
        String fullName = husband.getFullName();
        String brief = husband.getBrief();
        GenderEnum gender = husband.getGender();
        String sex = gender.name();
        OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
        orgChartItemVO.setId(Math.abs(fatherId.hashCode()));
        orgChartItemVO.setParents(null);
        orgChartItemVO.setPeopleId(fatherId+"");
        orgChartItemVO.setTitle(fullName);
        orgChartItemVO.setSex(sex);
        orgChartItemVO.setGenerations("第"+ ChineseNumber.numberToCH(generations)+"世");
        orgChartItemVO.setDescription(brief);
        orgChartItemVO.setRemark(husband.getRemark());
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
            GenderEnum gender = children.getGender();

            String sex = gender.name();
            Long childrenId = children.getId();
            //获取妻子
            People wife = partnerService.getWife(childrenId);
            if(wife!=null){
                OrgChartItemVO orgChartItemVO = convertOrgChartItemVO(childrenId,wife);
                String wifeBrief = wife.getBrief();
                GenderEnum wifeGender = wife.getGender();
               Integer generations = wife.getGenerations();
                String wifesex = wifeGender.name();
                orgChartItemVO.setSex(wifesex);
                orgChartItemVO.setPeopleId(wife.getId()+"");
                orgChartItemVO.setGenerations("第"+ ChineseNumber.numberToCH(generations)+"世");
                orgChartItemVO.setDescription(wifeBrief);
                orgChartItemVO.setRemark(wife.getRemark());
                orgChartVO.getItems().add(orgChartItemVO);
            }
            //获取孩子
            OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
            orgChartItemVO.setId(Math.abs(childrenId.hashCode()));
            orgChartItemVO.setPeopleId(childrenId+"");
            Integer[] parents=new Integer[2];
            parents[0]=Math.abs(fatherId.hashCode());
            if(motherId!=null){

            parents[1]=Math.abs(motherId.hashCode());
            }
            Integer generations = children.getGenerations();
            orgChartItemVO.setPeopleId(children.getId()+"");
            orgChartItemVO.setParents(parents);
            orgChartItemVO.setTitle(fullName);
            orgChartItemVO.setLabel("入嗣");
            orgChartItemVO.setSex(sex);
            orgChartItemVO.setGenerations("第"+ ChineseNumber.numberToCH(generations)+"世");
            orgChartItemVO.setDescription(brief);
            orgChartItemVO.setRemark(children.getRemark());
            orgChartVO.getItems().add(orgChartItemVO);
            loopChildren(orgChartVO,children,wife);
        }
    }


    private OrgChartItemVO convertOrgChartItemVO(Long husbandId,People wife) {
        String fullName = wife.getFullName();
        String brief = wife.getBrief();
        OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
        orgChartItemVO.setId(Math.abs(wife.getId().hashCode()));
        orgChartItemVO.setParents(null);
        orgChartItemVO.setPeopleId(wife.getId()+"");
        orgChartItemVO.setTitle(fullName);
        orgChartItemVO.setDescription(brief);
        orgChartItemVO.setGenerations("第"+ ChineseNumber.numberToCH(wife.getGenerations())+"世");
        orgChartItemVO.setPosition(Math.abs(husbandId.hashCode()+1));
        orgChartItemVO.setRelativeItem(Math.abs(husbandId.hashCode()));


        return orgChartItemVO;
    }

}
