package com.starfire.familytree.response;

import org.springframework.core.MethodParameter;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice;

import java.lang.reflect.Method;

@ControllerAdvice
public class FormatResponse implements ResponseBodyAdvice<Object> {

    public FormatResponse() {
        // TODO Auto-generated constructor stub
    }

    @Override
    public boolean supports(MethodParameter returnType, Class<? extends HttpMessageConverter<?>> converterType) {
        Method method = returnType.getMethod();
        Class<?> returnType2 = method.getReturnType();
        String clazz = method.toString();
        String[] split = clazz.split(" ");
        String methodName = split[2];
        //如果不是自己的包的方法
        if (methodName.startsWith("com.startfire")) {
            return false;
        } else if (returnType2.isAssignableFrom(Response.class)) { //如果返回类型是Response ，则不执行自动化格式返回
            return false;
        }
        return true;

    }

    @Override
    public Object beforeBodyWrite(Object body, MethodParameter returnType, MediaType selectedContentType,
                                  Class<? extends HttpMessageConverter<?>> selectedConverterType, ServerHttpRequest request,
                                  ServerHttpResponse response) {
        Response<Object> resp = new Response<Object>();
        return resp.success(body == null ? "" : body);
    }

}
