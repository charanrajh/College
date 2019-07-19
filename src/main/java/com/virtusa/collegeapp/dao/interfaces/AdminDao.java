package com.virtusa.collegeapp.dao.interfaces;

import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import com.virtusa.collegeapp.model.Student;

public interface AdminDao {
	List<Student> getAllStudents() throws SQLException;
	public boolean updatePlacementInfo(String company, String dateParam) throws SQLException, ParseException;

}
