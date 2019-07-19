package com.virtusa.collegeapp.model;

import java.sql.Date;
import java.util.List;

public class Student {

	private String stdId;
	private String stdName;
	private String stdDeptName;
	private int stdSem;
	private String stdCourseName;
	private String stdEmail;
	private Long stdPhone;
	private Date stdDOB;
	public String getStdId() {
		return stdId;
	}
	public void setStdId(String stdId) {
		this.stdId = stdId;
	}
	public String getStdName() {
		return stdName;
	}
	public void setStdName(String stdName) {
		this.stdName = stdName;
	}
	public int getStdSem() {
		return stdSem;
	}
	public String getStdCourseName() {
		return stdCourseName;
	}
	public void setStdCourseName(String stdCourseName) {
		this.stdCourseName = stdCourseName;
	}
	public void setStdSem(int stdSem) {
		this.stdSem = stdSem;
	}
	public String getStdDeptName() {
		return stdDeptName;
	}
	public void setStdDeptName(String stdDeptName) {
		this.stdDeptName = stdDeptName;
	}
	public String getStdEmail() {
		return stdEmail;
	}
	public void setStdEmail(String stdEmail) {
		this.stdEmail = stdEmail;
	}
	public Long getStdPhone() {
		return stdPhone;
	}
	public void setStdPhone(Long phone) {
		this.stdPhone = phone;
	}
	public Date getStdDOB() {
		return stdDOB;
	}
	public void setStdDOB(Date stdDOB) {
		this.stdDOB = stdDOB;
	}
	
}
