package com.poly.spring5mvc.service;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.spring5mvc.dao.StaffsDAO;
import com.poly.spring5mvc.model.Departments;
import com.poly.spring5mvc.model.Staffs;
import com.poly.spring5mvc.model.Users;

@Service
public class StaffService {

	@Autowired
	private StaffsDAO staffsDAO;

	/*-------------------------------DAO lấy dữ liệu -----------------------------------*/
	// lấy toàn bộ nhân viên
	@Transactional
	public List<Staffs> getStaffs(Integer offset, Integer maxResults) {
		return staffsDAO.getAllStaffs(offset, maxResults);
	}
	
	@Transactional
	public List<Staffs> getStaffs() {
		return staffsDAO.getAllStaffs();
	}
	public Long count() {
		
		return staffsDAO.count();
	}
	@Transactional
	public Staffs getStaffEmail(String Email) {
		return staffsDAO.getStaffByEmail(Email);
	}

	/*-------------------------------DAO lưu dữ liệu -----------------------------------*/

	// Lưu nhân viên
	@Transactional
	public void saveStaff(Users theUser, Staffs staff) {
		staffsDAO.saveUser(theUser);
		staffsDAO.saveStaff(staff);
	}

	// lấy nhân viên theo ID
	@Transactional
	public Staffs getStaffById(int TheIdStaff) {
		return staffsDAO.getStaffById(TheIdStaff);
	}

	// xóa user theo email
	@Transactional
	public void delete(String IdUser) {
		staffsDAO.deleteRecord(IdUser);
		staffsDAO.deleteUser(IdUser);
		staffsDAO.deleteStaff(IdUser);
	}

	// xóa record
	@Transactional
	public List<Staffs> checkIsExistsStaffOfDepartment(int IdDepartment) {
		return staffsDAO.checkIsExistsStaffOfDepartment(IdDepartment);

	}
}
