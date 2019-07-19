package com.virtusa.collegeapp.model;

import java.sql.Date;

public class Faculty {
	private String facultyId;
	private String facultyName;
	private String facultyDeptnName;
	private String facultyCourseName;
	private String facultyEmail;
	private Long facultyPhone;
	private Date facultyDob;
	private String facultyQualf;
	private int facultyExp;
	public String getFacultyId() {
		return facultyId;
	}
	public void setFacultyId(String facultyId) {
		this.facultyId = facultyId;
	}
	public String getFacultyName() {
		return facultyName;
	}
	public void setFacultyName(String facultyName) {
		this.facultyName = facultyName;
	}
	public String getFacultyDeptnName() {
		return facultyDeptnName;
	}
	public void setFacultyDeptnName(String facultyDeptnName) {
		this.facultyDeptnName = facultyDeptnName;
	}
	public String getFacultyCourseName() {
		return facultyCourseName;
	}
	public void setFacultyCourseName(String facultyCourseName) {
		this.facultyCourseName = facultyCourseName;
	}
	public String getFacultyEmail() {
		return facultyEmail;
	}
	public void setFacultyEmail(String facultyEmail) {
		this.facultyEmail = facultyEmail;
	}
	public Long getFacultyPhone() {
		return facultyPhone;
	}
	public void setFacultyPhone(Long facultyPhone) {
		this.facultyPhone = facultyPhone;
	}
	public Date getFacultyDob() {
		return facultyDob;
	}
	public void setFacultyDob(Date facultyDob) {
		this.facultyDob = facultyDob;
	}
	public String getFacultyQualf() {
		return facultyQualf;
	}
	public void setFacultyQualf(String facultyQualf) {
		this.facultyQualf = facultyQualf;
	}
	public int getFacultyExp() {
		return facultyExp;
	}
	public void setFacultyExp(int facultyExp) {
		this.facultyExp = facultyExp;
	}
	

}
