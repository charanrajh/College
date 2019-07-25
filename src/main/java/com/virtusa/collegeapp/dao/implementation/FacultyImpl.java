package com.virtusa.collegeapp.dao.implementation;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import org.apache.log4j.Logger;

import com.virtusa.collegeapp.dao.interfaces.FacultyDao;
import com.virtusa.collegeapp.helpers.MySQLHelper;
import com.virtusa.collegeapp.model.Faculty;
import com.virtusa.collegeapp.model.FacultyMeeting;


public class FacultyImpl implements FacultyDao{
	private Connection conn;
	private CallableStatement callable;
	private PreparedStatement pre;
	private ResourceBundle rb;
	private Faculty faculty;
	private FacultyMeeting facultyMeeting;
	private List<FacultyMeeting> facultyMeetingSchedule;
	private List<Faculty> allfaculties;
	public static String id;

	private static Logger logger = Logger.getLogger(StudentImpl.class);
	
	@Override
	public Faculty getFacultyDetailsById(String facultyId) throws SQLException {
		// TODO Auto-generated method stub
		conn=MySQLHelper.getConnection();
		try
		{
			callable=conn.prepareCall("{call searchByFacultyId(?,?,?,?,?,?,?,?,?)}");
			callable.setString(1, facultyId );
			callable.registerOutParameter(2, Types.VARCHAR);
			callable.registerOutParameter(3, Types.VARCHAR);
			callable.registerOutParameter(4, Types.VARCHAR);
			callable.registerOutParameter(5, Types.VARCHAR);
			callable.registerOutParameter(6, Types.BIGINT);
			callable.registerOutParameter(7, Types.DATE);
			callable.registerOutParameter(8, Types.VARCHAR);
			callable.registerOutParameter(9, Types.INTEGER);
			
			callable.executeQuery();
			faculty = new Faculty();
			faculty.setFacultyId(facultyId);
			faculty.setFacultyName(callable.getString(2)); 
			faculty.getFacultyName();
			faculty.setFacultyDeptnName(callable.getString(3));
			faculty.setFacultyCourseName(callable.getString(4));
			faculty.setFacultyEmail(callable.getString(5));
			faculty.setFacultyPhone(callable.getLong(6));
			faculty.setFacultyDob(callable.getDate(7));
			faculty.setFacultyQualf(callable.getString(8));
			faculty.setFacultyExp(callable.getInt(9));
			
		}
		catch(SQLException e) 
		{
			logger.error("SQL Exception : ", e);
		}
		finally
		{
			conn.close();
		}
		
		return faculty;
	}

	@Override
	public List<FacultyMeeting> getFacultyMeetingSchedule(String facultyId) throws SQLException {
		// TODO Auto-generated method stub
		conn=MySQLHelper.getConnection();
		facultyMeetingSchedule = new ArrayList<FacultyMeeting>();
		try
		{
			callable=conn.prepareCall("{call getFacultyMeeting(?)}");
			callable.setString(1, facultyId);
			
			ResultSet rs = callable.executeQuery();
			while(rs.next()) {
			facultyMeeting = new FacultyMeeting();
			System.out.println(rs.getDate("m_date"));
			facultyMeeting.setMeetingDate(rs.getDate("m_date"));
			facultyMeeting.setMeetingVenue(rs.getString("venue"));
			facultyMeeting.setMeetingInfo(rs.getString("meeting_info"));
			facultyMeeting.setStartTime(rs.getTime("startTime"));
			facultyMeeting.setEndTime(rs.getTime("endTime"));			
			facultyMeetingSchedule.add(facultyMeeting);
			}	
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}finally {
			conn.close();
		}
		//System.out.println(facultyMeetingSchedule);
		return facultyMeetingSchedule;
	}

	@Override
	public List<Faculty> getAllFaculties() throws SQLException {
		// TODO Auto-generated method stub
		conn=MySQLHelper.getConnection();
		allfaculties = new ArrayList<Faculty>();
		try
		{
			callable=conn.prepareCall("{call getAllFaculties()}");
			
			ResultSet rs = callable.executeQuery();
			while(rs.next()) {
				faculty = new Faculty();
				faculty.setFacultyId(rs.getString("faculty_id"));
				faculty.setFacultyName(rs.getString("name"));
				faculty.setFacultyDeptnName(rs.getString("dept_name"));
				faculty.setFacultyCourseName(rs.getString("course_name"));
				faculty.setFacultyEmail(rs.getString("email"));
				faculty.setFacultyPhone(rs.getLong("phone"));
				faculty.setFacultyDob(rs.getDate("dob"));
				faculty.setFacultyQualf(rs.getString("qualification"));
				faculty.setFacultyExp(rs.getInt("experience"));
				allfaculties.add(faculty);			
			}	
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}finally {
			conn.close();
		}
		return allfaculties;
	}
	

}
