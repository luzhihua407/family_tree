package com.starfire.familytree;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.node.TextNode;
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
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.client.RestClientTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.*;
import org.springframework.http.client.ClientHttpRequest;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.http.converter.FormHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.FileSystemUtils;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RequestCallback;
import org.springframework.web.client.ResponseExtractor;
import org.springframework.web.client.RestTemplate;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class FamilytreeApplicationTests {

    @Autowired
    private RestTemplate rt;

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
    public void text() throws IOException, URISyntaxException {
//        rt.getMessageConverters().add(new StringHttpMessageConverter(Charset.forName("utf-8")));
        File file=new File("C:\\Users\\86137\\Pictures\\微信图片_20191211150328.jpg");
        byte[] bytes = FileUtils.readFileToByteArray(file);
        String base64String = Base64.encodeBase64String(bytes);
        MultiValueMap<String, String> map= new LinkedMultiValueMap<String, String>();
        map.add("access_token","24.92f625627b66692d50824103068fd98c.2592000.1578471196.282335-17464717");
        map.add("image",base64String);
        System.err.println(base64String);

        HttpHeaders headers = new HttpHeaders();
        List<HttpMessageConverter<?>> messageConverters = rt.getMessageConverters();
        for (int i = 0; i < messageConverters.size(); i++) {
            HttpMessageConverter<?> httpMessageConverter =  messageConverters.get(i);
            if(httpMessageConverter instanceof StringHttpMessageConverter){
                StringHttpMessageConverter stringHttpMessageConverter = (StringHttpMessageConverter) httpMessageConverter;
                stringHttpMessageConverter.setDefaultCharset(Charset.forName("UTF-8"));
            }
        }
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);//设置参数类型和编码
        HttpEntity<MultiValueMap<String,String>> request1 = new HttpEntity<>(map, headers);//
        ResponseEntity<JsonNode> responseEntity = rt.postForEntity("https://aip.baidubce.com/rest/2.0/ocr/v1/general_basic", request1, JsonNode.class);
//        ResponseEntity<JsonNode> responseEntity = rt.postForEntity("https://aip.baidubce.com/rest/2.0/ocr/v1/accurate_basic", request1, JsonNode.class);
        JsonNode body = responseEntity.getBody();
        ArrayNode words_result = (ArrayNode) body.get("words_result");
        Iterator<JsonNode> iterator = words_result.iterator();
        while (iterator.hasNext()) {
            ObjectNode next = (ObjectNode) iterator.next();
            TextNode words = (TextNode) next.get("words");
            String s = words.asText();
            System.err.println(s);
        }

    }
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
