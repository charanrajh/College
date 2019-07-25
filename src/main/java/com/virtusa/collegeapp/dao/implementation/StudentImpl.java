package com.virtusa.collegeapp.dao.implementation;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import com.virtusa.collegeapp.dao.interfaces.StudentDao;
import com.virtusa.collegeapp.helpers.MySQLHelper;
import com.virtusa.collegeapp.model.PlacementInfo;
import com.virtusa.collegeapp.model.Student;

import org.apache.log4j.Logger;


public class StudentImpl implements StudentDao {
	private Connection conn;
	private CallableStatement callable;
	private Student student;
	private List<Student> allStudents;

	private static Logger logger = Logger.getLogger(StudentImpl.class);

	@Override
	public Student getStudentDetailsById(String studentId) throws SQLException {
		/* This method returns the student object with the given id from the database */
		conn=MySQLHelper.getConnection();
		try
		{

			callable=conn.prepareCall("{call searchByStudId(?,?,?,?,?,?,?,?)}");
			callable.setString(1, studentId);
			callable.registerOutParameter(2, Types.VARCHAR);
			callable.registerOutParameter(3, Types.VARCHAR);
			callable.registerOutParameter(4, Types.INTEGER);
			callable.registerOutParameter(5, Types.VARCHAR);
			callable.registerOutParameter(6, Types.VARCHAR);
			callable.registerOutParameter(7, Types.BIGINT);
			callable.registerOutParameter(8, Types.DATE);
			
			callable.executeQuery();
			student = new Student();
			student.setStdId(studentId);
			student.setStdName(callable.getString(2));
			student.setStdDeptName(callable.getString(3));
			student.setStdSem(callable.getInt(4));
			student.setStdCourseName(callable.getString(5));
			student.setStdEmail(callable.getString(6));
			student.setStdPhone(callable.getLong(7));
			student.setStdDOB(callable.getDate(8));
		}

		catch(SQLException e) {
			logger.error("SQL Exception : ", e);
		}
		finally
		{
			conn.close();
		}
		return student;
		/* return student object */

	}

	@Override
	public List<Student> getAllStudents() throws SQLException {
		/* This method returns all the students of the college who are currently studying */
		conn=MySQLHelper.getConnection();
		allStudents = new ArrayList<Student>();
		try
		{
			logger.info("logger working");
			callable=conn.prepareCall("{call getAllStudents()}");

			ResultSet rs = callable.executeQuery();
			while(rs.next()) {
				student = new Student();
				student.setStdId(rs.getString("stud_id"));
				student.setStdName(rs.getString("name"));
				student.setStdDeptName(rs.getString("dept_name"));
				student.setStdSem(rs.getInt("semester"));
				student.setStdCourseName(rs.getString("course_name"));
				student.setStdEmail(rs.getString("email"));
				student.setStdPhone(rs.getLong("phone"));
				student.setStdDOB(rs.getDate("dob"));
				allStudents.add(student);
			}	
		}catch(SQLException e) {
			logger.error("SQL Exception : ", e);
		}finally {
			conn.close();
		}
		return allStudents;
	}

	@Override
	public List<PlacementInfo> getPlacementInfo() throws SQLException {
		/* This method returns the upcoming placement information in the college */
		List<PlacementInfo> placementSchedule = new ArrayList<PlacementInfo>();
		conn=MySQLHelper.getConnection();
		try
		{
			PreparedStatement pre = conn.prepareStatement("select * from placement where eventDate>=current_date order by eventDate;");
			ResultSet rs = pre.executeQuery();
			while(rs.next()) {
				PlacementInfo placementInfo = new PlacementInfo();
				placementInfo.setCompany(rs.getString("company"));
				placementInfo.setEventDate(rs.getDate("eventDate"));
				placementSchedule.add(placementInfo);
			}
		}catch(SQLException e) {
			logger.error("SQL Exception : ", e);
		}
		finally
		{
			conn.close();
		}
		return placementSchedule;
	}

}
