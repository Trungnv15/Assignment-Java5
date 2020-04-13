package com.poly.spring5mvc.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "staffs")
public class Staffs {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IdStaff")
	private int IdStaff;

	@NotBlank(message = "Không được để trống tên")
	@Column(name = "Fullname")
	private String Fullname;

	@NotBlank(message = "Không được để trống giới tính")
	@Column(name = "Gender")
	private String Gender;

	@NotNull(message = "Không được để trống ngày sinh")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "Birthday")
	private Date Birthday;

	@NotNull(message = "Không được để trống Lương")
	@Column(name = "Salary")
	private double Salary;

	@NotBlank(message = "Không được để trống số điện thọai!")
	@Column(name = "Phone")
	private String Phone;

	@NotBlank(message = "Không được để trống ảnh")
	@Column(name = "Photo")
	@Size(max = 1500, message = "khong duoc de trong")
	private String Photo;

	@Column(name = "Notes")
	@Size(max = 2500, message = "khong duoc de trong")
	private String Notes;
	
	
	@Column(name = "RewardPoint")
	private int RewardPoint;

	
	@Column(name = "PenaltyPoints")
	private int PenaltyPoints;
	
	@NotNull(message = "Không được để trống level")
	@Column(name = "Level")
	private int Level;

	@ManyToOne
	@JoinColumn(name = "Department", nullable = false)
	private Departments Department;
	@NotBlank(message = "Không được để trống Email")
	@Column(name = "Email", unique = true)
	private String Email;

	@OneToMany(mappedBy = "staffs", fetch = FetchType.EAGER, cascade = {CascadeType.REMOVE, CascadeType.PERSIST})
	private List<Records> records;

	// Getters and Setters

	public int getIdStaff() {
		return IdStaff;
	}

	public void setIdStaff(int idStaff) {
		IdStaff = idStaff;
	}

	public String getFullname() {
		return Fullname;
	}

	public void setFullname(String fullname) {
		Fullname = fullname;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public Date getBirthday() {
		return Birthday;
	}

	public void setBirthday(Date birthday) {
		Birthday = birthday;
	}

	public double getSalary() {
		return Salary;
	}

	public void setSalary(double salary) {
		Salary = salary;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getPhoto() {
		return Photo;
	}

	public void setPhoto(String photo) {
		Photo = photo;
	}

	public String getNotes() {
		return Notes;
	}

	public void setNotes(String notes) {
		Notes = notes;
	}

	public int getRewardPoint() {
		return RewardPoint;
	}

	public void setRewardPoint(int rewardPoint) {
		RewardPoint = rewardPoint;
	}

	public int getPenaltyPoints() {
		return PenaltyPoints;
	}

	public void setPenaltyPoints(int penaltyPoints) {
		PenaltyPoints = penaltyPoints;
	}

	public int getLevel() {
		return Level;
	}

	public void setLevel(int level) {
		Level = level;
	}

	public Departments getDepartment() {
		return Department;
	}

	public void setDepartment(Departments department) {
		Department = department;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public List<Records> getRecords() {
		return records;
	}

	public void setRecords(List<Records> records) {
		this.records = records;
	}

}
