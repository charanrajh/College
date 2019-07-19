package com.virtusa.collegeapp.model;

import java.time.LocalDate;

public class Applicant {
	
	private String id;
	private String applicant_id;
	private String fname;
	private String lname;
	private String course;
	private String branch;
	private int tenthM;
	private int twelveM;
	public Applicant(String id, String fname, String lname, String course, String branch, int tenthM, int twelveM,
			String email, long phone, String status) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.course = course;
		this.branch = branch;
		this.tenthM = tenthM;
		this.twelveM = twelveM;
		this.email = email;
		this.phone = phone;
		this.status = status;
	}

	private String email;
	private long phone;
	private String password;
	private String status;
	public Applicant(String fname, String lname, String course, String branch, int tenthM,
			int twelveM, String email, long phone, String password) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.course = course;
		this.branch = branch;
		this.tenthM = tenthM;
		this.twelveM = twelveM;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}
	
	public Applicant() {
		super();
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
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public int getTenthM() {
		return tenthM;
	}
	public void setTenthM(int tenthM) {
		this.tenthM = tenthM;
	}
	public int getTwelveM() {
		return twelveM;
	}
	public void setTwelveM(int twelveM) {
		this.twelveM = twelveM;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getApplicant_id() {
		return applicant_id;
	}

	public void setApplicant_id(String applicant_id) {
		this.applicant_id = applicant_id;
	}
	
}