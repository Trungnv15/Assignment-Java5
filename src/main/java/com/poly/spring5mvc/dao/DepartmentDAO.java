package com.poly.spring5mvc.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.spring5mvc.model.Departments;

@Repository
public class DepartmentDAO {
	@Autowired
	private SessionFactory sessionFactory;

	// lấy toàn bộ phòng ban
	public List<Departments> getDepaertment() {
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Departments> departmentList = session.createQuery("from Departments").list();
		return departmentList;
	}

	// lấy tên phòng ban
	public Object getTotalRewardPoint() {
		try {
			Session session = sessionFactory.getCurrentSession();
			String getTotalRewardPoint = "SELECT SUM(RewardPoint) FROM Staffs";
			return session.createQuery(getTotalRewardPoint).getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public Object getTotalPenaltyPoints() {

		try {
			Session session = sessionFactory.getCurrentSession();
			String getTotalPenaltyPoints = "SELECT SUM(PenaltyPoints) FROM Staffs";
			return session.createQuery(getTotalPenaltyPoints).getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	// Lưu và update phòng ban
	public void saveDepartments(Departments depart) {
		Session curenSession = sessionFactory.getCurrentSession();
		curenSession.saveOrUpdate(depart);
	}
	// update điểm phòng ban

	public void updateDepartmentPoint(int IdDepart) {
		Session session = sessionFactory.getCurrentSession();

		String hql = "update Departments SET Departments.RewardPoint = '" + this.getTotalPenaltyPoints().toString()
				+ "', Departments.PenaltyPoints = '" + this.getTotalRewardPoint().toString() + "' WHERE departments.DepartsId  = " + IdDepart
				+ "";
//		Query query = session.createQuery(hql);
		System.out.println("ĐÂY LÀ CÂU LỆNH HQL UPDATE ĐIỂM THƯỜNG PHÒNG BAN " + hql);
//		query.executeUpdate();
	}

	// Xóa phòng ban
	public void deleteDepartment(int IdDepartment) {

		Session session = sessionFactory.getCurrentSession();
		Departments department = session.byId(Departments.class).load(IdDepartment);
		session.delete(department);
	}

}
