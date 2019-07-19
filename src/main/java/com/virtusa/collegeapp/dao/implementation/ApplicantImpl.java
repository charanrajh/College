package com.virtusa.collegeapp.dao.implementation;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import com.virtusa.collegeapp.dao.interfaces.ApplicantDao;
import com.virtusa.collegeapp.helpers.MySQLHelper;
import com.virtusa.collegeapp.model.Applicant;

public class ApplicantImpl implements ApplicantDao{

	private Connection conn;
	private PreparedStatement pre;
	boolean applicantStatus = false;
	private Applicant applicant;
	private CallableStatement callable;
	private ResultSet rs;
	
	@Override
	public boolean updateApplicantStatus(String id, String status) throws SQLException {
		/* This method updates the status of the applicant to either confirmed or rejected */
		conn=MySQLHelper.getConnection();
		try {
			pre=conn.prepareStatement("update applicant set status=? where applicant_id=?;");
			pre.setString(1, status);
			pre.setString(2, id);
			int queryExecStatus = pre.executeUpdate();
			if(queryExecStatus>0)
				applicantStatus = true;
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		finally {
			conn.close();
		}
		return applicantStatus;
	}
	@Override
	public boolean insertApplicant(Applicant applicant, String id) throws SQLException {
		/* This method inserts the new applicant member into the database and returns true if successful else false */
		conn = MySQLHelper.getConnection();
		try {
			pre = conn.prepareStatement("insert into applicant(applicant_id,fname,lname,interested_course,interested_branch,x_marks,xii_marks,email,phone,password)values(?,?,?,?,?,?,?,?,?,?);");
			pre.setString(1, id);
			pre.setString(2, applicant.getFname());
			pre.setString(3, applicant.getLname());
			pre.setString(4, applicant.getCourse());
			pre.setString(5, applicant.getBranch());
			pre.setInt(6, applicant.getTenthM());
			pre.setInt(7, applicant.getTwelveM());
			pre.setString(8, applicant.getEmail());
			pre.setLong(9, applicant.getPhone());
			pre.setString(10, applicant.getPassword());
			int queryExecStatus = pre.executeUpdate();
			pre = conn.prepareStatement("insert into login values(?,?,?);");
			pre.setString(1, id);
			pre.setString(2, applicant.getPassword());
			pre.setString(3, "applicant");
			pre.execute();
			System.out.println("trigger executed");
			if(queryExecStatus>0)
				applicantStatus = true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}finally {
			conn.close();
		}
		
		return applicantStatus;
	}
	@Override
	public Applicant getApplicantDetailsById(String id) throws SQLException {
		/* This method returns the details of the applicant from the database by using id */
		conn=MySQLHelper.getConnection();
		try
		{
		
		//procedure call
					callable=conn.prepareCall("{call searchByApplicantId(?)}"); 
					callable.setString(1, id);
					ResultSet rs = callable.executeQuery();
					while(rs.next()) {
					applicant = new Applicant();
					applicant.setApplicant_id(rs.getString("applicant_id"));
					applicant.setFname(rs.getString("fname"));
					applicant.setLname(rs.getString("lname"));
					applicant.setCourse(rs.getString("interested_course"));
					applicant.setBranch(rs.getString("interested_branch"));
					applicant.setEmail(rs.getString("email"));
					applicant.setPhone(rs.getLong("phone"));
					applicant.setStatus(rs.getString("status"));	
					}
		}
	
		catch(SQLException e) {
				System.out.println(e.getMessage());
		}
		finally
		{
			
			conn.close();
		}
		
		return applicant;
	/* return applicant object */
	
	}
	
	

}
