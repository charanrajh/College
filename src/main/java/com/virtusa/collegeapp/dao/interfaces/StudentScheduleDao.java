package com.virtusa.collegeapp.dao.interfaces;

import java.sql.SQLException;
import java.util.List;

import com.virtusa.collegeapp.model.StudentSchedule;

public interface StudentScheduleDao {
	List<StudentSchedule> getStudentSchedule(String studentId) throws SQLException;

}
