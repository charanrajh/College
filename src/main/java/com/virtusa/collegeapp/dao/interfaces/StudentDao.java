package com.virtusa.collegeapp.dao.interfaces;

import java.sql.SQLException;
import java.util.List;

import com.virtusa.collegeapp.model.PlacementInfo;
import com.virtusa.collegeapp.model.Student;

public interface StudentDao {
	
	/* get student data using student id */
	Student getStudentDetailsById(String studentId) throws SQLException;
	List<Student> getAllStudents() throws SQLException;
	public List<PlacementInfo> getPlacementInfo() throws SQLException;
}
