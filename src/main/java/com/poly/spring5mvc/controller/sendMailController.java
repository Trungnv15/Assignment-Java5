package com.poly.spring5mvc.controller;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException;

@Controller
public class sendMailController {

	@Autowired
	JavaMailSender emailSender;
	
	@RequestMapping(value = "/send-email")
	public String sendemail() throws MessagingException, javax.mail.MessagingException {

		MimeMessage message = emailSender.createMimeMessage();

		boolean multipart = true;

		MimeMessageHelper helper = new MimeMessageHelper(message, multipart, "utf-8");
		
		String htmlMsg = "<!DOCTYPE html>\r\n" + "<html lang=\"vn\">\r\n" + "\r\n" + "<head>\r\n"
				+ "    <meta charset=\"UTF-8\">\r\n" + "    \r\n" + "    <style>\r\n" + "        body {\r\n"
				+ "            font-family: 'Times New Roman', Times, serif;\r\n" + "        }\r\n" + "    </style>\r\n"
				+ "</head>\r\n" + "\r\n" + "<body>\r\n" + "\r\n"
				+ "    <span style=\"font-size: 18px; font-weight: 600;\">Xin chào: </span> <span style=\"padding-left: 80px;\">Nguyễn Văn\r\n"
				+ "        Trung</span>\r\n" + "    <br>\r\n" + "    <br>\r\n"
				+ "    <span style=\"font-size: 18px; font-weight: 600;\">Mã số nhân viên: </span> <span\r\n"
				+ "        style=\"padding-left: 5px;\">ABC</span>\r\n" + "    <br>\r\n" + "    <br>\r\n"
				+ "    <span style=\"font-size: 18px; font-weight: 600;\">Phòng: </span> <span style=\"padding-left: 110px;\">Phòng nhân\r\n"
				+ "        sự</span>\r\n" + "        <hr>\r\n" + "    <br>\r\n" + "    <br>\r\n" + "    <br>\r\n"
				+ "    <div style=\"font-size: 18px; font-weight: bold ;\">Nghi nhận một bản ghi mới</div>\r\n"
				+ "    <br>\r\n" + "    <div style=\"margin-left: 30px;\">\r\n"
				+ "        <div style=\"padding-bottom: 10px;\">\r\n"
				+ "            Loại thành tích: <span style=\"font-weight: bold;\">Thường</span>\r\n"
				+ "        </div>\r\n"
				+ "        <div style=\"padding-bottom: 10px;\">Nội dung: <span style=\"font-weight: bold;\">Đi làm muộn</span>\r\n"
				+ "        </div>\r\n"
				+ "        <div style=\"padding-bottom: 10px;\">Ngày nghi nhận: <Span style=\"font-weight: bold;\">20/12/2019</Span>\r\n"
				+ "\r\n" + "        </div>\r\n" + "\r\n" + "\r\n" + "    </div>\r\n" + "\r\n" + "\r\n" + "\r\n" + "\r\n"
				+ "\r\n" + "\r\n" + "</body>\r\n" + "\r\n" + "\r\n" + "</html>";

		message.setContent(htmlMsg, "text/html");

		helper.setTo("trungnvph08594@fpt.edu.vn");

		helper.setSubject("Thông tin thành tích và kỉ luật");

		this.emailSender.send(message);
		return "otherViews/index";
	}
}
