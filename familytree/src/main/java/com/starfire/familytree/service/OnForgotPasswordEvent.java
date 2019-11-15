package com.starfire.familytree.service;

import com.starfire.familytree.usercenter.entity.User;
import org.springframework.context.ApplicationEvent;

import java.util.Locale;

public class OnForgotPasswordEvent extends ApplicationEvent {
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private String email;

    public OnForgotPasswordEvent(String email) {
        super(email);
        this.email = email;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}