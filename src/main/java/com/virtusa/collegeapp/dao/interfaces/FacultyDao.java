package com.virtusa.collegeapp.dao.interfaces;

import java.sql.SQLException;
import java.util.List;

import com.virtusa.collegeapp.model.Faculty;
import com.virtusa.collegeapp.model.FacultyMeeting;;

public interface FacultyDao {
	Faculty getFacultyDetailsById(String facultyId) throws SQLException;
	List<FacultyMeeting> getFacultyMeetingSchedule(String facultyId) throws SQLException;
	List<Faculty> getAllFaculties() throws SQLException;
}
