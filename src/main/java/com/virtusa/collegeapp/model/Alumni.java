package com.virtusa.collegeapp.model;

public class Alumni {
	
	private String id;
	private String name;
	private String yop;
	private String course;
	private String branch;
	private String email;
	private Long phone;
	private String password;
	
	public Alumni(String id, String name, String yop, String course, String branch, String email,
			String password,Long phone) {
		super();
		this.id = id;
		this.name = name;
		this.yop = yop;
		this.course = course;
		this.branch = branch;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}
	public Alumni() {
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getYop() {
		return yop;
	}
	public void setYop(String yop) {
		this.yop = yop;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getPhone() {
		return phone;
	}
	public void setPhone(Long phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
