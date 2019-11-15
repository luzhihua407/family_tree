package com.starfire.familytree.service.impl;

import com.starfire.familytree.service.IVerificationTokenService;
import com.starfire.familytree.service.OnForgotPasswordEvent;
import com.starfire.familytree.service.OnRegistrationCompleteEvent;
import com.starfire.familytree.usercenter.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationListener;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import java.util.UUID;

@Component
public class ForgotPasswordListener implements
        ApplicationListener<OnForgotPasswordEvent> {

    @Autowired
    private IVerificationTokenService service;


    @Autowired
    private JavaMailSender mailSender;

    @Value("${email.system}")
    private String systemEmail;

    @Override
    public void onApplicationEvent(OnForgotPasswordEvent event) {
        SimpleMailMessage email = new SimpleMailMessage();
        email.setFrom(systemEmail);
        email.setTo(event.getEmail());
        email.setSubject("找回密码");
        email.setText("<html><body><font color='red'>测试</font></body></html>");
        mailSender.send(email);
    }

}