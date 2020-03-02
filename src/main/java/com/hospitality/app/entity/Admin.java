package com.hospitality.app.entity;

import java.sql.Date;

//import java.util.Date;

//import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="admin_db")
@DynamicUpdate
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int aid;
	private String fname;
	private String lname;
	private String gender;
//	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dob;
	private String mobile;
	@Column(unique = true)
	private String email;
	private String address;
	private String city;
	private String state;
	private String education;
	private String profession;
	private String password;
	private String filename;
	private String savepath;
	
	public Admin() {
		// TODO Auto-generated constructor stub
	}

	public Admin(String fname, String lname, String gender, Date dob, String mobile, String email, String address,
			String city, String state, String education, String profession, String password,String filename,String savepath) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.gender = gender;
		this.dob = dob;
		this.mobile = mobile;
		this.email = email;
		this.address = address;
		this.city = city;
		this.state = state;
		this.education = education;
		this.profession = profession;
		this.password = password;
		this.filename=filename;
		this.savepath=savepath;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getSavepath() {
		return savepath;
	}

	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}
	
	
	
	
}
