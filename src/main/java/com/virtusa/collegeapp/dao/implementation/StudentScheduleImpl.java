package com.virtusa.collegeapp.dao.implementation;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.virtusa.collegeapp.dao.interfaces.StudentScheduleDao;
import com.virtusa.collegeapp.helpers.MySQLHelper;
import com.virtusa.collegeapp.model.StudentSchedule;

public class StudentScheduleImpl implements StudentScheduleDao{
	private Connection conn;
	private CallableStatement callable;
	StudentSchedule studentSchedule;
	List<StudentSchedule> studentWeekSchedule = new ArrayList<StudentSchedule>();
	@Override
	public List<StudentSchedule> getStudentSchedule(String studentId) throws SQLException {
		conn=MySQLHelper.getConnection();
		try
		{
			callable=conn.prepareCall("{call getStudentSchedule(?)}");
			callable.setString(1, studentId);
			
			ResultSet rs = callable.executeQuery();
			while(rs.next()) {
			studentSchedule = new StudentSchedule();
			studentSchedule.setClassRoomId(rs.getInt("classroom_id"));
			studentSchedule.setSubjectName(rs.getString("subject_name"));
			studentSchedule.setDayOfTheWeek(rs.getString("day_of_the_week"));
			studentSchedule.setStartTime(rs.getTime("starttime"));
			studentSchedule.setEndTime(rs.getTime("endtime"));
			studentSchedule.setFacultyName(rs.getString("name"));
			studentWeekSchedule.add(studentSchedule);
			}	
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		finally
		{
			conn.close();
		}
		return studentWeekSchedule;		
	}

}
