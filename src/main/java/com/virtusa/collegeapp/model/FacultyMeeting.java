package com.virtusa.collegeapp.model;

import java.sql.Date;
import java.sql.Time;

public class FacultyMeeting {
	private String meetingInfo;
	private Date meetingDate;
	private Time startTime;
	private Time endTime;
	private String meetingVenue;
	public String getMeetingInfo() {
		return meetingInfo;
	}
	public void setMeetingInfo(String meetingInfo) {
		this.meetingInfo = meetingInfo;
	}
	public Date getMeetingDate() {
		return meetingDate;
	}
	public void setMeetingDate(Date meetingDate) {
		this.meetingDate = meetingDate;
	}
	public Time getStartTime() {
		return startTime;
	}
	public void setStartTime(Time startTime) {
		this.startTime = startTime;
	}
	public Time getEndTime() {
		return endTime;
	}
	public void setEndTime(Time endTime) {
		this.endTime = endTime;
	}
	public String getMeetingVenue() {
		return meetingVenue;
	}
	public void setMeetingVenue(String meetingVenue) {
		this.meetingVenue = meetingVenue;
	}
	

}
