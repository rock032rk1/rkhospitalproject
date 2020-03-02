package com.hospitality.app.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="patient_db")
public class Patient {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	private String name;
	private String mobile;
	private String email;
	
	public Patient() {
		// TODO Auto-generated constructor stub
	}

	public Patient(String name, String mobile, String email) {
		super();
		this.name = name;
		this.mobile = mobile;
		this.email = email;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}
