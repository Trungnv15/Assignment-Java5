package com.poly.spring5mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.spring5mvc.dao.LoginDAO;
import com.poly.spring5mvc.model.Staffs;
import com.poly.spring5mvc.service.StaffService;

@Controller
public class UserController {
	
	private static String Email;
	@Autowired
	private StaffService StaffService;

	// xử lý request tới trang thông tin admin
	@RequestMapping("/infomation-staff")
	public String redirectStaffInfomation(ModelMap model) {
		Email = LoginDAO.EmailLocal;
		Staffs getInfomationStaffByEmail = StaffService.getStaffEmail(Email);

		model.addAttribute("infomationStaff", getInfomationStaffByEmail);

		return "staffView/index_Staff";
	}
	@RequestMapping(value = "logout-staff")
	public String logout(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		session.removeAttribute("permissionUser");
		return "redirect: login";
	}
}
