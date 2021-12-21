package com.campus.member.controller;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class M_sendMail {

	static final String FROM = "skytjd10242@naver.com";
    static final String FROMNAME = "campus";
    static final String SMTP_USERNAME = "skytjd10242";
    static final String SMTP_PASSWORD = "campusaddr!@";
    static final String HOST = "smtp.naver.com";
    static final int PORT = 587;
    
    static final String SUBJECT = "campus 인증 번호";

    public static void sendMail(String email, String certifiedNum) throws Exception {
        Properties props = System.getProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.port", PORT); 
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        Session session = Session.getDefaultInstance(props);
        MimeMessage msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(FROM, FROMNAME));
        msg.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
        msg.setSubject(SUBJECT);
        msg.setContent("인증번호는 : "+certifiedNum+" 입니다.", "text/html;charset=utf-8");
        
        Transport transport = session.getTransport();
        try {
            transport.connect(HOST, SMTP_USERNAME, SMTP_PASSWORD);
            transport.sendMessage(msg, msg.getAllRecipients());
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            transport.close();
        }
    }
}
