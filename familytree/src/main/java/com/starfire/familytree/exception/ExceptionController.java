package com.starfire.familytree.exception;

import com.starfire.familytree.response.Response;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class ExceptionController {

    @ExceptionHandler
    public Response<String> handlerException(Exception e) {
        Response<String> response = Response.failure(100, e.getMessage());
        return response;
    }

}
