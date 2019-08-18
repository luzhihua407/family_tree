package com.starfire.familytree;

import com.starfire.familytree.folk.entity.*;
import com.starfire.familytree.folk.service.*;
import com.starfire.familytree.usercenter.entity.User;
import com.starfire.familytree.usercenter.service.impl.UserServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class FamilytreeApplicationTests {

    @Autowired
    private IPeopleService peopleService;

    @Autowired
    private IChildrenService childrenService;

    @Autowired
    private IPartnerService partnerService;

    @Autowired
    private ICategoryService categoryService;

    @Autowired
    private ICategoryContentService categoryContentService;

    @Autowired
    private UserServiceImpl userService;

    @Test
    public void contextLoads() {
        People people = new People();
        people.setFullName("father");
        People father = peopleService.addPeople(people);
        People children = new People();
        children.setFullName("child");
        People child = peopleService.addChildren(children);
        Children childrens = new Children();
        childrens.setChildrenId(child.getId());
        childrens.setParentId(father.getId());
        childrenService.save(childrens);

    }

    @Test
    public void contextLoads1() {
        People people = new People();
        people.setFullName("husband");
        People husband = peopleService.addPeople(people);
        People wife = new People();
        wife.setFullName("wife");
        People wif = peopleService.addWife(wife);
        Partner partner = new Partner();
        partner.setHusbandId(husband.getId());
        partner.setWifeId(wif.getId());
        partnerService.save(partner);

    }

    @Test
    public void contextLoads2() {
        List<People> peoples = peopleService.getPeoplesByGeneration(1);
        for (int i = 0; i < peoples.size(); i++) {
            People people = peoples.get(i);
            System.err.println(people.getFullName());
        }

    }

    @Test
    public void category() {
        Category category = new Category();
        category.setName("捐款榜");
        categoryService.save(category);


    }

    @Test
    public void categoryContent() {
        CategoryContent categoryContent = new CategoryContent();
        categoryContent.setTitle("人物事迹-张三");
        categoryContent.setContent("<font>张三是好人</font>");
        categoryContent.setCategoryId(1161093219849654274l);
        categoryContentService.save(categoryContent);


    }

    @Test
    public void user() {
        User user = new User();
        user.setRealName("aaa");
        userService.registerNewUserAccount(user);


    }

}
