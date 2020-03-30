package com.poly.spring5mvc.dao;

import java.util.List;

import com.poly.spring5mvc.dao.LoginDAO;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.spring5mvc.model.Staffs;
import com.poly.spring5mvc.model.Users;

@Repository
public class StaffsDAO {

	@Autowired
	LoginDAO loginDAO;

	@Autowired
	private SessionFactory sessionFactory;

	/*----------------------------------------------lấy dữ liệu----------------------------------------*/

	// Lấy toàn bộ nhân viênz
	public List<Staffs> getAllStaffs() {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Staffs> cq = cb.createQuery(Staffs.class);
		Root<Staffs> root = cq.from(Staffs.class);
		cq.select(root);
		Query query = session.createQuery(cq);
		return query.getResultList();
	}

	/*----------------------------------------------Lưu và update dữ liệu----------------------------------------*/

	// Lưu và update nhân viên
	public void saveUser(Users theUser) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theUser);
	}

	// Lưu nhân viên
	public void saveStaff(Staffs thestaff) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(thestaff);
	}

	/*----------------------------------------------Xóa dữ liệu----------------------------------------*/

	// Xóa nhân viên
	public void deleteUser(String Username) {
		Session session = sessionFactory.getCurrentSession();
		Users user = session.byId(Users.class).load(Username);
		session.delete(user);
	}

	// xóa nhân viên theo email
	public void deleteStaff(String Email) {
		try {
			
			Session session = sessionFactory.getCurrentSession();
			String deleteQuery = "delete from Staffs where Email = '"+ Email +"'";
			Query query = session.createQuery(deleteQuery);
			System.out.println(Email);
			query.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	//xóa bản nghi nhân viên
	
	public void deleteRecord(String Email)
	{
		Session session = sessionFactory.getCurrentSession();
		
		 Staffs staff = this.getStaffByEmail(Email);
		 int IdStaff = staff.getIdStaff();
		 String hql = "delete from Records where idStaffs = "+ IdStaff +"";
		 System.out.println("Đây là câu lệnh xóa: "+hql);
		 Query query = session.createQuery(hql);
		 query.executeUpdate();
		
	}

	// lấy nhân viên theo ID
	public Staffs getStaffById(int TheIdStaff) {
		Session currentSession = sessionFactory.getCurrentSession();
		Staffs theStaff = currentSession.get(Staffs.class, TheIdStaff);
		return theStaff;
	}

	// Lấy nhân viên theo email
	@SuppressWarnings("unchecked")
	public Staffs getStaffByEmail(String Email) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Staffs u where u.Email = '" + Email + "'";
		List<Staffs> tempGetInfomationStaff = session.createQuery(hql).list();
		Staffs GetInfomationStaff = tempGetInfomationStaff.get(0);
		return GetInfomationStaff;
	}

}
