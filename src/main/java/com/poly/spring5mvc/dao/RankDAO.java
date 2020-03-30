package com.poly.spring5mvc.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.spring5mvc.model.Departments;
import com.poly.spring5mvc.model.Staffs;

@Repository
public class RankDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<Staffs> getRankTop10Staff() {
		Session session = sessionFactory.getCurrentSession();
		
		String hql = "from Staffs s group by s.Fullname, s.IdStaff order by s.RewardPoint - s.PenaltyPoints DESC";
		Query query = session.createQuery(hql);
		query.setMaxResults(10);
		List<Staffs> ListTop10 = query.getResultList();
		return ListTop10;
	}
	
	@SuppressWarnings("unchecked")
	public List<Departments> getRankTop3Department() {
		Session session = sessionFactory.getCurrentSession();
		
		String hql = "from Departments d group by d.DepartsName order by d.PenaltyPoints DESC";
		Query query = session.createQuery(hql);
		query.setMaxResults(3);
		List<Departments> ListTop3Departments = query.getResultList();
		return ListTop3Departments;
	}
}
