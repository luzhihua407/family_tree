package com.starfire.familytree.vo;

import lombok.Data;

import java.util.List;

/**
 * @version 1.0
 * @author: Luzh
 * @date: 2019/8/15 19:44
 */
@Data
public class ResponseVO<T>{

    private int code;

    private String msg;

    private T result;

    public ResponseVO(T result){
        ResponseVO<T> responseVO = new ResponseVO<>();
        responseVO.setResult(result);
    }
    public static ResponseVO builder(){
           return new ResponseVO<>();
    }
    public ResponseVO(){
    }
    public ResponseVO success(T result){
        ResponseVO<T> responseVO = new ResponseVO<>();
        responseVO.setResult(result);
        return responseVO;
    }
    public ResponseVO success(){
        this.setCode(200);
        return this;
    }

    }
