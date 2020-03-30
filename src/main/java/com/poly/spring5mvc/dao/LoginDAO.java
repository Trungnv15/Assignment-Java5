package com.poly.spring5mvc.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.spring5mvc.model.Users;

@Repository
public class LoginDAO {
	
	public static String EmailLocal;	
	
	@Autowired
	private SessionFactory sessionFactory;

	
	public int checkLogin(String Username, String Password) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Users u where u.Username = '" + Username + "' and u.Password = '" + Password + "'";
		@SuppressWarnings("unchecked")
		List<Users> listUser = session.createQuery(hql).list();

		if (listUser != null && listUser.size() > 0) {
			Users userGetRole = new Users();
			userGetRole.setUsername(listUser.get(0).getUsername());
			EmailLocal = listUser.get(0).getUsername();
			userGetRole.setPassword(listUser.get(0).getPassword());
			userGetRole.setROLES(listUser.get(0).getROLES());
			if (userGetRole.getROLES().equalsIgnoreCase("admin")) {
				return 1;
			} else if (userGetRole.getROLES().equalsIgnoreCase("staff")) {
				return 2;
			}
		} else {
			return 3;
		}
		return 0;

	}

}
