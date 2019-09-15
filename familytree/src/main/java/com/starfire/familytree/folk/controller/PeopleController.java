package com.starfire.familytree.folk.controller;


import com.starfire.familytree.enums.GenderEnum;
import com.starfire.familytree.folk.entity.People;
import com.starfire.familytree.folk.service.IChildrenService;
import com.starfire.familytree.folk.service.IPartnerService;
import com.starfire.familytree.folk.service.IPeopleService;
import com.starfire.familytree.vo.*;
import io.swagger.annotations.Api;
import io.swagger.models.auth.In;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;

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

    @PostMapping("/addRelationship")
    public Boolean addRelationship(@RequestBody RelationshipVO relationshipVO) {
        boolean b = peopleService.addRelationship(relationshipVO);
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
            StringBuffer sb=new StringBuffer();
            sb.append(sex);
            sb.append(" ");
            sb.append(generations).append("代");
            sb.append(brief==null?"":brief);
            orgChartItemVO.setDescription(sb.toString());
            orgChartItemVO.setImage(avatar==null?"/avatar.png":avatar);
            orgChartVO.getItems().add(orgChartItemVO);
        }
        loopChildren(orgChartVO, husband,wife);
        String fullName = husband.getFullName();
        String brief = husband.getBrief();
        GenderEnum gender = husband.getGender();
        String sex = gender.name();
        String avatar = husband.getAvatar();
        OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
        orgChartItemVO.setId(fatherId.hashCode());
        orgChartItemVO.setParents(null);
        orgChartItemVO.setTitle(fullName);
        StringBuffer buffer=new StringBuffer();
        buffer.append(sex);
        buffer.append(" ");
        buffer.append(generations).append("代");
        buffer.append(brief==null?"":brief);
        orgChartItemVO.setDescription(buffer.toString());
        orgChartItemVO.setImage(avatar==null?"/avatar.png":avatar);
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
            String avatar = children.getAvatar();
            Long childrenId = children.getId();
            //获取妻子
            People wife = partnerService.getWife(childrenId);
            if(wife!=null){
                OrgChartItemVO orgChartItemVO = convertOrgChartItemVO(childrenId,wife);
                String wifeBrief = wife.getBrief();
                GenderEnum wifeGender = wife.getGender();
               Integer generations = wife.getGenerations();
                String wifesex = wifeGender.name();
                StringBuffer sb=new StringBuffer();
                sb.append(wifesex);
                sb.append(" ");
                sb.append(generations).append("代");
                sb.append(brief==null?"":brief);
                orgChartItemVO.setDescription(sb.toString());
                orgChartItemVO.setImage(avatar==null?"/avatar.png":avatar);
                orgChartVO.getItems().add(orgChartItemVO);
            }
            //获取孩子
            OrgChartItemVO orgChartItemVO = new OrgChartItemVO();
            orgChartItemVO.setId(childrenId.hashCode());
            Integer[] parents=new Integer[2];
            parents[0]=fatherId.hashCode();
            if(motherId!=null){

            parents[1]=motherId.hashCode();
            }
            Integer generations = children.getGenerations();
            orgChartItemVO.setParents(parents);
            orgChartItemVO.setTitle(fullName);
            StringBuffer sb=new StringBuffer();
            sb.append(sex);
            sb.append(" ");
            sb.append(generations).append("代");
            sb.append(brief==null?"":brief);
            orgChartItemVO.setDescription(sb.toString());
            orgChartItemVO.setImage(avatar==null?"/avatar.png":avatar);
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
    private static String toChinese(String str) {
        String[] s1 = { "一", "二", "三", "四", "五", "六", "七", "八", "九" };
        String[] unit = { "十", "百", "千", "万", "十万", "百万", "千万", "亿", "十亿", "百亿", "千亿" };
        String result = "";
        int n = str.length();
        for (int i = 0; i < n; i++) {
            int num = str.charAt(i) - '0' ;
            if (i != n - 1 && num != 0) {
                result += s1[i] + unit[n - 2 - i];
            } else {
                result += s1[num];
            }
        }
        System.out.println(result);
        return result;
    }

    public static void main(String[] args) {
        Locale chineseNumbers = new Locale("C@numbers=hans");
        com.ibm.icu.text.NumberFormat formatter =
                com.ibm.icu.text.NumberFormat.getInstance(chineseNumbers);
        System.out.println(formatter.format(61305));

    }
}
