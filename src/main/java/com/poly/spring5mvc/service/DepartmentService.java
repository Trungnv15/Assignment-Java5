package com.poly.spring5mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.spring5mvc.dao.DepartmentDAO;
import com.poly.spring5mvc.model.Departments;

@Service
public class DepartmentService {

	@Autowired
	private DepartmentDAO DepartmentDAO;

	// Lấy toàn bộ phòng ban()
	@Transactional
	public List<Departments> getDepartment() {
		return DepartmentDAO.getDepaertment();
	}

	// Lưu phòng ban
	@Transactional
	public void saveDepartment(Departments department) {
		DepartmentDAO.saveDepartments(department);

	}
	// Xóa phòng ban

	@Transactional
	public void deleteDepartment(int IdDepartment) {
		DepartmentDAO.deleteDepartment(IdDepartment);
	}

	@Transactional
	public void updateDepartmentPoint(int IdDepart) {
		DepartmentDAO.updateDepartmentPoint(IdDepart);
	}

}
