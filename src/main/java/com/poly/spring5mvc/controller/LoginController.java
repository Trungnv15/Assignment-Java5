package com.poly.spring5mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.spring5mvc.model.Departments;
import com.poly.spring5mvc.model.Records;
import com.poly.spring5mvc.model.Staffs;
import com.poly.spring5mvc.service.LoginService;
import com.poly.spring5mvc.service.RankService;

@Controller
public class LoginController {

	@Autowired
	private RankService RankService;

	@Autowired
	private LoginService LoginService;

	@RequestMapping(value = "/index")
	public String index(ModelMap model) {

		List<Staffs> listStaffTop10 = RankService.getRankTop10Staff();
		System.out.println(listStaffTop10.get(0).getIdStaff());

		List<Departments> top3Record = RankService.getRankTop3Department();

		model.addAttribute("listDepart", top3Record);
		model.addAttribute("listStaff", listStaffTop10);

		return "otherViews/index";
	}

	@RequestMapping(value = "login")
	public String redirect() {

		return "otherViews/login";
	}

	// kiểm tra đăng nhập
	@RequestMapping(value = "check-login")
	public String checkLogin(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestParam("Username") String Username,
			@RequestParam("Password") String Password, HttpSession session) {
		int result = LoginService.checkLogin(Username, Password);
		if (result == 1) {
			
			session.setAttribute("permissionAdmin", "isAdmin");
			System.out.println(result + " admin");
			return "redirect: index-admin";

		} else if (result == 2) {
			session.setAttribute("permissionUser", "isUser");
			System.out.println(result + "staff");
			return "redirect: infomation-staff";
		} else if (result == 3) {

			model.addAttribute("message", "Email hoặc mật khẩu sai!");
			return "otherViews/login";
		} else {
			model.addAttribute("message", "Email hoặc Mật khẩu sai!");
			return "otherViews/login";
		}
	}

}
