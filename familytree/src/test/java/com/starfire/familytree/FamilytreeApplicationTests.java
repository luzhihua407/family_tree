package com.starfire.familytree;

import com.starfire.familytree.enums.ValidEnum;
import com.starfire.familytree.folk.entity.*;
import com.starfire.familytree.folk.service.*;
import com.starfire.familytree.security.entity.Role;
import com.starfire.familytree.security.entity.UserRole;
import com.starfire.familytree.security.service.IMenuService;
import com.starfire.familytree.security.service.IRoleService;
import com.starfire.familytree.security.service.IUserRoleService;
import com.starfire.familytree.usercenter.entity.User;
import com.starfire.familytree.usercenter.service.IUserService;
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
    private IUserService userService;

    @Autowired
    private IRoleService roleService;

    @Autowired
    private IUserRoleService userRoleService;

    @Autowired
    private IMenuService menuService;

    @Test
    public void addChildren() {
        People people = new People();
        people.setFullName("开");
        People father = peopleService.addPeople(people);
        People children = new People();
        children.setFullName("华");
        People child = peopleService.addChildren(children,father.getId());
        People third = new People();
        third.setFullName("静");
        People fourth = peopleService.addChildren(third,children.getId());

    }

    @Test
    public void addWife() {
        People husband = peopleService.getHusband(1167415966955597826L);
        People wife = new People();
        wife.setFullName("容");
        People wif = peopleService.addWife(wife,husband.getId());

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
        categoryContent.setTitle("人物事迹-张三1");
        categoryContent.setContent("<font>张三是好人1</font>");
        categoryContent.setCategoryId(1161093219849654274l);
        categoryContentService.save(categoryContent);


    }

    @Test
    public void user() {
        User user = new User();
        user.setRealName("管理员");
        user.setUsername("admin");
        user.setValid(ValidEnum.是);
        user.setPassword("admin");
        user.setEmail("user@126.com");
        userService.registerNewUserAccount(user);


    }
    @Test
    public void role() {
        Role role=new Role();
        role.setCode("USER");
        role.setName("USER");
        roleService.save(role);


    }
    @Test
    public void userRole() {
        User user = userService.getUserByEmail("user@126.com");

        Role role = roleService.getRoleByCode("USER");
        UserRole userRole=new UserRole();
        userRole.setRoleId(role.getId());
        userRole.setUserId(user.getId());
        userRoleService.save(userRole);


    }

    @Test
    public void addUserRole() {
        People p = peopleService.getById("1167241893457801217");
        People people=new People();
        people.setFullName("静");
        peopleService.save(people);
    }

}
