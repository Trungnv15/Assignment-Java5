package com.poly.spring5mvc.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users {
	
	@Id
	@Column(name = "Username", unique = true)
	private String Username; 
	
	@Column(name = "Password")
	private String Password;
	
	@Column(name = "ROLES")
	private String ROLES;
	
	
	// Getters and Setters
	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getROLES() {
		return ROLES;
	}

	public void setROLES(String rOLES) {
		ROLES = rOLES;
	}
	
	
}
