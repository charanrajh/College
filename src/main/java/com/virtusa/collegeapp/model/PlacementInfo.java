package com.virtusa.collegeapp.model;
import java.sql.Date;

public class PlacementInfo {
	private String company;
	private Date eventDate;
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public Date getEventDate() {
		return eventDate;
	}
	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}

}
