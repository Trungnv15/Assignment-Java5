package com.poly.spring5mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.spring5mvc.dao.AchievementDAO;
import com.poly.spring5mvc.model.Records;
import com.poly.spring5mvc.model.Staffs;

@Service
public class AchievementService {

	@Autowired
	private AchievementDAO AchievementDAO;
	
	//update điểm thưởng và điểm phạt cho nhân viên
	@Transactional
	public void updateAchievement(int Id, int RewardPoint, int PenaltyPoints) {
		AchievementDAO.updateAchievement(Id, RewardPoint, PenaltyPoints);
	}
	
	//Lấy tất cả bản ghi lỗi và thưởng của nhân viên
	@Transactional
	public List<Staffs> getDisciplineByStaffId(int theIdStaff) {
		return AchievementDAO.getDisciplineByStaffId(theIdStaff);

	}
	
	//Thêm bản ghi
	@Transactional
	public void addReason(Records record)
	{
		AchievementDAO.addReason(record);
	}
	//Xóa bản ghi
	@Transactional
	public void deleteRecord(int theId)
	{
		AchievementDAO.deleteRecord(theId);
	}

}
