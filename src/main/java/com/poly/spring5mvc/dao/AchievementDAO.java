package com.poly.spring5mvc.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import com.poly.spring5mvc.model.Records;
import com.poly.spring5mvc.model.Staffs;
import com.poly.spring5mvc.model.Users;

@Repository
public class AchievementDAO {

	@Autowired
	private SessionFactory sessionFactory;

	// update điểm thưởng và điểm phạt cho nhân viên
	public void updateAchievement(int Id, int RewardPoint, int PenaltyPoints) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "update Staffs set RewardPoint= '" + RewardPoint + "', PenaltyPoints = '" + PenaltyPoints
				+ "' where IdStaff = " + Id + "";
		System.out.println(hql);
		Query query = session.createQuery(hql);
		query.executeUpdate();
	}

	// Lấy tất cả bản ghi lỗi và thưởng của nhân viên
	@SuppressWarnings("unchecked")
	public List<Staffs> getDisciplineByStaffId(int theIdStaff) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "From Records where idStaffs = " + theIdStaff + "";
		System.out.println(hql);
		List<Staffs> list = session.createQuery(hql).list();
		return list;
	}

	// Thêm bản ghi
	public void addReason(Records record) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(record);

	}

	// Xóa bản ghi
	public void deleteRecord(int theId) {
		Session session = sessionFactory.getCurrentSession();
		Records record = session.byId(Records.class).load(theId);
		session.delete(record);
	}
}
