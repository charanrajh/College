package com.virtusa.collegeapp.dao.implementation;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

import com.virtusa.collegeapp.dao.interfaces.AdminDao;
import com.virtusa.collegeapp.helpers.MySQLHelper;
import com.virtusa.collegeapp.model.Student;

public class AdminImpl implements AdminDao{
	private Connection conn;
	private CallableStatement callable;
	private Student student;
	List<Student> allStudents = new ArrayList<Student>();
	boolean status = false;
	
	@Override
	public List<Student> getAllStudents() throws SQLException {
		/* This method returns all the students of the college who are currently studying */
		conn=MySQLHelper.getConnection();
		try
		{
			callable=conn.prepareCall("{call getAllStudents(?,?,?,?,?,?,?,?,?)}");

			ResultSet rs = callable.executeQuery();
			while(rs.next()) {
				//set values to student object
				student = new Student();
				student.setStdId(rs.getString("stud_id"));
				student.setStdName(rs.getString("name"));
				student.setStdDeptName(rs.getString("dept_name"));
				student.setStdSem(rs.getInt("semester"));
				student.setStdCourseName(rs.getString("course_name"));
				student.setStdEmail(rs.getString("email"));
				student.setStdPhone(rs.getLong("phone"));
				student.setStdDOB(rs.getDate("dob"));
				allStudents.add(student); //adds in list
			}	
			
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		finally
		{
			conn.close();
		}
		return allStudents;
	}
	
	@Override
	public boolean updatePlacementInfo(String company, String dateParam) throws SQLException, ParseException {
		/* This method defines the updating of placement information of the college by the administrator */
		conn=MySQLHelper.getConnection();
        //surround below line with try catch block as below code throws checked exception
		java.util.Date utilDate = new SimpleDateFormat("yyyy-mm-dd").parse(dateParam); 
		java.sql.Date eventDate = new java.sql.Date(utilDate.getTime());
		try
		{
			PreparedStatement pre = conn.prepareStatement("insert into placement values(?,?);");
			pre.setString(1, company);
			pre.setDate(2, eventDate);
			int queryStatus = pre.executeUpdate();
			if(queryStatus>0)
				status = true;
		}catch(SQLException e) {
			System.out.println(e.getMessage());;
		}finally {
			conn.close();
		}
		return status;
	}


}
