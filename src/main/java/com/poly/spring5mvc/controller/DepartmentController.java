package com.poly.spring5mvc.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.spring5mvc.model.Departments;
import com.poly.spring5mvc.model.Staffs;
import com.poly.spring5mvc.service.DepartmentService;
import com.poly.spring5mvc.service.StaffService;

@Controller
public class DepartmentController {

	@Autowired
	ServletContext application;

	@Autowired
	DepartmentService DepartmentService;

	@Autowired
	StaffService StaffService;

	Boolean saveSucessfull = false;
	Boolean deleteSucessfull = false;
	Boolean notDelete = false;
	

	// Lấy toàn phòng ban (done)
	@RequestMapping("/department")
	public String department(ModelMap model) {
		if (saveSucessfull) {
			model.addAttribute("message", "Thêm thành công!");
		}
		if (deleteSucessfull) {
			model.addAttribute("message", "Xóa thành công!");
		}
		if (notDelete) {
			model.addAttribute("message", "Có nhân viên trong phòng ban. Không thể xóa!");
		}
		model.addAttribute("department", new Departments());

		// lấy toàn bộ phòng ban gán vào List
		List<Departments> depart = DepartmentService.getDepartment();

		model.addAttribute("departList", depart);
		saveSucessfull = false;
		deleteSucessfull = false;
		notDelete = false;
		return "departmentView/department";
	}

	// Xử lý chuyển tiếp tới trang thêm mới
	@RequestMapping(value = "add-department")
	public String saveDepartment(ModelMap model) {

		model.addAttribute("department", new Departments());

		return ("departmentView/add-department");
	}

	// nhận request và lưu phòng ban (done)
	@RequestMapping(value = "save-department")
	public String saveDepartment(ModelMap model, @RequestParam("nameDepart") String nameDepartment) {

		Departments depart = new Departments();
		depart.setDepartsName(nameDepartment);
		depart.setRewardPoint(0);
		depart.setPenaltyPoints(0);
		DepartmentService.saveDepartment(depart);
		saveSucessfull = true;
		return ("redirect: department");
	}

	// xóa phòng ban(done)
	@RequestMapping(value = "/delete-department", method = RequestMethod.GET)
	public String deteteStaff(ModelMap model, @RequestParam("departsId") int departsId) {
		List<Staffs> staffs = 	StaffService.checkIsExistsStaffOfDepartment(departsId);
		
		if (staffs.isEmpty() == false) {
			System.out.println("lisst dduwojc goi trong if" + StaffService.checkIsExistsStaffOfDepartment(departsId).get(0).getEmail());
			System.out.println("Không thể xóa vì đã có nhân viên trong phòng ban này");
			notDelete = true;
			return ("redirect: department");
		}
		DepartmentService.deleteDepartment(departsId);
		deleteSucessfull = true;
		return ("redirect: department");
	}

}
