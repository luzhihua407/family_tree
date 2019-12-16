package com.starfire.familytree.basic.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.node.TextNode;
import com.starfire.familytree.basic.entity.Dict;
import com.starfire.familytree.folk.entity.Cemetery;
import com.starfire.familytree.folk.mapper.CemeteryMapper;
import com.starfire.familytree.response.Response;
import io.swagger.annotations.Api;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.LineIterator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * @author luzh
 * @version 1.0.0
 * @ClassName BaiduController.java
 * @Description TODO
 * @createTime 2019年12月11日 15:18:00
 */
@RestController
@RequestMapping("/baiduAPI")
@Api(tags = "百度接口控制器")
public class BaiduAPIController {


    @Autowired
    private RestTemplate rt;

    @Autowired
    private CemeteryMapper cemeteryMapper;

    @RequestMapping("/readTextFromImage")
    public Response<JsonNode> readTextFromImage() throws IOException {
            File file=new File("D:\\Myself\\picture\\1.jpg");
            byte[] bytes = FileUtils.readFileToByteArray(file);
            String base64String = Base64.encodeBase64String(bytes);
            MultiValueMap<String, Object> map= new LinkedMultiValueMap<String, Object>();
            map.add("access_token","24.92f625627b66692d50824103068fd98c.2592000.1578471196.282335-17464717");
            map.add("image",base64String);
//        String url="https://aip.baidubce.com/rest/2.0/ocr/v1/general";
        String url="https://aip.baidubce.com/rest/2.0/ocr/v1/accurate_basic";
        ResponseEntity<JsonNode> postRequest = postRequest(url, map, JsonNode.class,MediaType.APPLICATION_FORM_URLENCODED);
        JsonNode body = postRequest.getBody();
            ArrayNode words_result = (ArrayNode) body.get("words_result");
            Iterator<JsonNode> iterator = words_result.iterator();
            while (iterator.hasNext()) {
                ObjectNode next = (ObjectNode) iterator.next();
                TextNode words = (TextNode) next.get("words");
                String s = words.asText();
                System.err.println(s);
            }
        System.err.println(body.asText());
        Response<JsonNode> response = new Response<JsonNode>();
        return response.success(body);
    }

    @RequestMapping("/keyword")
    public Response<JsonNode> keyword() throws IOException {
        MultiValueMap<String, Object> map= new LinkedMultiValueMap<String, Object>();
//        map.add("access_token","24.558fe9d2c5031108f9db79ada2676024.2592000.1578647019.282335-18000860");
//        map.add("charset","UTF-8");
        map.add("title","iphone手机出现“白苹果”原因及解决办法，用苹果手机的可以看下");
        map.add("content","如果下面的方法还是没有解决你的问题建议来我们门店看下成都市锦江区红星路三段99号银石广场24层01室。在通电的情况下掉进清水，这种情况一不需要拆机处理。尽快断电。用力甩干，但别把机器甩掉，主意要把屏幕内的水甩出来。如果屏幕残留有水滴，干后会有痕迹。^H3 放在台灯，射灯等轻微热源下让水分慢慢散去。");
        String url="https://aip.baidubce.com/rpc/2.0/nlp/v1/keyword?charset=UTF-8&access_token=24.558fe9d2c5031108f9db79ada2676024.2592000.1578647019.282335-18000860";
        ResponseEntity<JsonNode> postRequest = postRequest(url, map, JsonNode.class,MediaType.APPLICATION_JSON_UTF8);
        JsonNode body = postRequest.getBody();
        Response<JsonNode> response = new Response<JsonNode>();
        return response.success(body);
    }

    @RequestMapping("/format")
    public Response<List<String>> format() throws IOException {
        List<String> text=new ArrayList<>();
        List<String> readLines = FileUtils.readLines(new File("D:\\Myself\\picture\\1.txt"), "UTF-8");
//        for (int j = 0; j <readLines.size() ; j++) {
//            StringBuffer sb=new StringBuffer();
//            for (int i = 0; i < readLines.size(); i++) {
//                String s =  readLines.get(i);
//                if(j<s.length()){
//                    String word = s.substring(j,j+1);
//                    sb.append(word);
//                }
//            if(i==2){
//                sb.append(" ");
//            }
//            }
//            text.add(sb.toString());
//        }
        Response<List<String>> response = new Response<List<String>>();
        for (int i = 0; i < readLines.size(); i++) {
            String s =  readLines.get(i);
            String[] s1 = s.split(",");
            String name = s1[0];
            String addr = s1[1];
            String shape = s1[2];
            String remark = s1[3];
            Cemetery c=new Cemetery();
            c.setName(name);
            c.setAddress(addr);
            c.setShape(shape);
            c.setRemark(remark);
//            cemeteryMapper.insert(c);

        }
        return response.success(text);
    }

    public <T> ResponseEntity<T> postRequest(String url,MultiValueMap<String, Object> request,Class<T> responseType,MediaType mediaType){
        HttpHeaders headers = new HttpHeaders();
        List<HttpMessageConverter<?>> messageConverters = rt.getMessageConverters();
        for (int i = 0; i < messageConverters.size(); i++) {
            HttpMessageConverter<?> httpMessageConverter =  messageConverters.get(i);
            if(httpMessageConverter instanceof StringHttpMessageConverter){
                StringHttpMessageConverter stringHttpMessageConverter = (StringHttpMessageConverter) httpMessageConverter;
                stringHttpMessageConverter.setDefaultCharset(Charset.forName("UTF-8"));
            }
        }
        headers.setContentType(mediaType);//设置参数类型和编码
        HttpEntity<MultiValueMap<String,Object>> request1 = new HttpEntity<>(request, headers);//
        ResponseEntity<T> tResponseEntity = rt.postForEntity(url, request1, responseType);
        return  tResponseEntity;

    }
}
