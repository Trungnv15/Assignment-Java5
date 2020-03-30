package com.poly.spring5mvc.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "departments")
public class Departments {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "DepartsId")
	private int DepartsId;

	@Column(name = "DepartsName")
	private String DepartsName;
	
	@Column(name = "PenaltyPoints")
	private int PenaltyPoints;

	@Column(name = "RewardPoint")
	private int RewardPoint;
	
	@OneToMany(mappedBy = "Department", fetch = FetchType.LAZY, cascade = {CascadeType.REMOVE, CascadeType.PERSIST})
	private List<Staffs> staffList;

	public int getDepartsId() {
		return DepartsId;
	}

	public void setDepartsId(int departsId) {
		DepartsId = departsId;
	}

	public String getDepartsName() {
		return DepartsName;
	}

	public void setDepartsName(String departsName) {
		DepartsName = departsName;
	}

	public int getPenaltyPoints() {
		return PenaltyPoints;
	}

	public void setPenaltyPoints(int penaltyPoints) {
		PenaltyPoints = penaltyPoints;
	}

	public int getRewardPoint() {
		return RewardPoint;
	}

	public void setRewardPoint(int rewardPoint) {
		RewardPoint = rewardPoint;
	}

	public List<Staffs> getStaffList() {
		return staffList;
	}

	public void setStaffList(List<Staffs> staffList) {
		this.staffList = staffList;
	}

	

	


}
