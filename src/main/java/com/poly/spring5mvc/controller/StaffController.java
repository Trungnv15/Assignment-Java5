package com.poly.spring5mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.poly.spring5mvc.dao.LoginDAO;
import com.poly.spring5mvc.model.Departments;
import com.poly.spring5mvc.model.Staffs;
import com.poly.spring5mvc.model.Users;
import com.poly.spring5mvc.service.DepartmentService;
import com.poly.spring5mvc.service.StaffService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StaffController {

	private static String Email;
	private boolean isUpdate = false;
	private boolean isExistsEmail = false;
	private boolean isValidate = false;
	Staffs staffSendUpdate = new Staffs();
	@Autowired
	ServletContext context;

	@Autowired
	private LoginDAO loginDAO;

	@Autowired
	private StaffService StaffService;

	@Autowired
	private DepartmentService departmentService;

	// xử lý request vào trang chủ
	@RequestMapping(value = "/staff")
	public String staffManage(ModelMap model, Integer offset, Integer maxResults) {
		
		List<Staffs> listStaff = StaffService.getStaffs(offset, maxResults);
		System.out.println("------------------ list size :"+listStaff.size());
        model.addAttribute("count", StaffService.count());
        System.out.println(" --------------count : "+StaffService.count());
        model.addAttribute("offset", offset);
		model.addAttribute("allList", listStaff);
		return "staffView/staff";
	}

	@GetMapping("add-staff")
	public String saveStaffAndUser(ModelMap model) {
		if (isValidate) {
			model.addAttribute("message", "Nhập đủ các trường!");
			isValidate = false;
		}
		if (isExistsEmail) {
			model.addAttribute("message", "Email đã tồn tại!");
			isExistsEmail = false;
		}
		if (isUpdate) {
			model.addAttribute("staffsend", staffSendUpdate);
		} else {
			staffSendUpdate = new Staffs();
			model.addAttribute("staffsend", new Staffs());
		}

		return "staffView/add-staff";
	}

	// Lưu và cập nhận nhân viên
	@RequestMapping(value = "save-staff", method = RequestMethod.POST)
	public String saveStaffAndUser(  @ModelAttribute("staffsend") @Valid  Staffs staff,  BindingResult error, 
			@RequestParam("Password") String Password, @RequestParam("PhotoFile") MultipartFile photo,
			ModelMap model) throws IllegalStateException, IOException {
		if (error.hasErrors()) {
			isValidate = true;
			return "redirect: add-staff";
		}
		
		//check trùng email
		String email = staff.getEmail();
		List<Staffs> listEmail = StaffService.getStaffs();
		for (int i = 0; i < listEmail.size() - 1; i++) {
			if (listEmail.get(i).getEmail().equalsIgnoreCase(email)) {
				isExistsEmail = true;
				System.out.println("CODE ĐÃ CHẠY TỚI ĐÂY :))");
				return "redirect: add-staff";
			}
		}

		
		// Lưu ảnh
		String photoPath = context.getRealPath("/resources/imageTemp2/" + photo.getOriginalFilename());
		System.out.println(photoPath);
		photo.transferTo(new File(photoPath));

		// Tạo user và get field
		Users theUser = new Users();
		System.out.println("Đây là thông tin user");
		theUser.setUsername(staff.getEmail());
		theUser.setROLES("staff");
		theUser.setPassword(Password);

		// save
		StaffService.saveStaff(theUser, staff);
		staffSendUpdate = null;
		return "redirect: staff";

	}

	// update nhân viên
	@RequestMapping("update-staff")
	public String updateStaffAndUser(ModelMap model, @RequestParam("idStaff") int TheIdStaff) {
		isUpdate = true;
		staffSendUpdate = StaffService.getStaffById(TheIdStaff);
		return "redirect:add-staff";
	}

	// Xóa nhân viên theo Id
	@RequestMapping(value = "delete-staff")
	public String deleteStaff(@RequestParam("idStaff") String Iduser) {
		StaffService.delete(Iduser);
		return "redirect: staff";
	}

	// xử lý request tới trang thông tin admin
	@RequestMapping(value = "/index-admin")
	public String redirectAdminInfomation(ModelMap model) {
		Email = LoginDAO.EmailLocal;
		Staffs getInfomationStaffByEmail = StaffService.getStaffEmail(Email);

		model.addAttribute("infomationStaff", getInfomationStaffByEmail);

		return "staffView/index-admin";
	}

	// xử lý request tới trang thông tin admin

	@RequestMapping(value = "logout")
	public String logout(ModelMap model, HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		session.removeAttribute("permissionUser");
		session.removeAttribute("permissionAdmin");
		return "redirect: login";
	}

	// get departmet
	@ModelAttribute("Department")
	public List<Departments> getDepartment(ModelMap model) {

		model.addAttribute("department", new Departments());

		List<Departments> listDepart = departmentService.getDepartment();

		model.addAttribute("listNameDepart", listDepart);

		return null;
	}

}
