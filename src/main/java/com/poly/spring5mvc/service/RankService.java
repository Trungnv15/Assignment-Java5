package com.poly.spring5mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.spring5mvc.dao.RankDAO;
import com.poly.spring5mvc.model.Departments;
import com.poly.spring5mvc.model.Staffs;

@Service
public class RankService {

	@Autowired
	private RankDAO RankDao;

	@Transactional
	public List<Staffs> getRankTop10Staff() {
		
		return RankDao.getRankTop10Staff();
		
	}
	
	@Transactional
	public List<Departments> getRankTop3Department()
	{
		return RankDao.getRankTop3Department();
	}
	

}
