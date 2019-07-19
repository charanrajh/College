package com.virtusa.collegeapp.model;

import java.sql.Time;

public class StudentSchedule {
	private int classRoomId;
	private String subjectName;
	private String dayOfTheWeek;
	private Time startTime;
	private Time endTime;
	private String facultyName;
	public int getClassRoomId() {
		return classRoomId;
	}
	public void setClassRoomId(int classRoomId) {
		this.classRoomId = classRoomId;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getDayOfTheWeek() {
		return dayOfTheWeek;
	}
	public void setDayOfTheWeek(String dayOfTheWeek) {
		this.dayOfTheWeek = dayOfTheWeek;
	}
	public Time getStartTime() {
		return startTime;
	}
	public void setStartTime(Time time) {
		this.startTime = time;
	}
	public Time getEndTime() {
		return endTime;
	}
	public void setEndTime(Time endTime) {
		this.endTime = endTime;
	}
	public String getFacultyName() {
		return facultyName;
	}
	public void setFacultyName(String facultyName) {
		this.facultyName = facultyName;
	}

}
