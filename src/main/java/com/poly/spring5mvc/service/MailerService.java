package com.poly.spring5mvc.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.poly.spring5mvc.dao.MailerDAO;
import com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException;

@Service
public class MailerService {

	MailerDAO MailerDAO;
	@Transactional
	public void sendSimpleEmail(String receiver, String subject, String context) throws MessagingException, javax.mail.MessagingException {
		MailerDAO.sendSimpleEmail(receiver, subject, context);
	}
}
