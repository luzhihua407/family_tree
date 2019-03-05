package com.starfire.familytree.service.impl;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationListener;
import org.springframework.context.MessageSource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.starfire.familytree.service.IVerificationTokenService;
import com.starfire.familytree.service.OnRegistrationCompleteEvent;
import com.starfire.familytree.usercenter.entity.User;

@Component
public class RegistrationListener implements
  ApplicationListener<OnRegistrationCompleteEvent> {
  
    @Autowired
    private IVerificationTokenService service;
  
  
    @Autowired
    private JavaMailSender mailSender;
 
    @Value("${email.confirm.template}")
    private String template;
    
    @Value("${email.system}")
    private String systemEmail;
    
    @Override
    public void onApplicationEvent(OnRegistrationCompleteEvent event) {
        this.confirmRegistration(event);
    }
 
    private void confirmRegistration(OnRegistrationCompleteEvent event) {
        User user = event.getUser();
        String token = UUID.randomUUID().toString();
        service.createVerificationToken(user.getId(), token);
        String recipientAddress = user.getEmail();
        String subject = "注册确认";
        String confirmationUrl 
          = event.getAppUrl() + "/usercenter/user/regitrationConfirm?token=" + token+" ";
        String message ="test";
         
        SimpleMailMessage email = new SimpleMailMessage();
        email.setFrom(systemEmail);
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(String.format(template, message,confirmationUrl));
        mailSender.send(email);
    }
}